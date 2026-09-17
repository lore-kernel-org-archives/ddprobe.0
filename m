Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3899E3822A5
	for <ddprobe@lists.linux.dev>; Thu, 17 Sep 2026 02:20:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1789611634; cv=none; b=aBnVLkmcW8mbrJrtKaOWp5dcl6U0mzeYI/LICCvLfqYUlU/DKv2+zbT9rL3T+Bvy1c3eYlvLsIS+Ommpr0ghAUbSHVOx68YfSSPg/jfdmh83NT7QV/g+5B8VgUJR8huFnq7Uqv4EVycNZdqU+hy6GHd1fumFXJMrkt9GmbSlEao=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1789611634; c=relaxed/simple;
	bh=rRtD/j5Kt1iL4J6bRen5quRchJDI5juSalNXU576J5Q=;
	h=To:Subject:From:Message-Id:Date; b=b0qnzlIO3H2aX25sZJiexlhOgWWTaAJdgUaZwf8K8/WFGXx2AEy20lDKXYDFlIwe0jG8ULtSo50zxhC+jlGTGKyNaMTZVGBg33ctxZ8riSp03tZcviH3uuh36J2fs3eyyXsJFfDAuMLa7kscZkh+VFPS+GDtDkiJJdKFihH9tnM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=B5vRZgM3; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="B5vRZgM3"
Received: by smtp.kernel.org (Postfix) with ESMTPS id E44ABC2BCF5
	for <ddprobe@lists.linux.dev>; Thu, 17 Sep 2026 02:20:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1789611633;
	bh=rRtD/j5Kt1iL4J6bRen5quRchJDI5juSalNXU576J5Q=;
	h=To:Subject:From:Date:From;
	b=B5vRZgM3nVjefDd2AFYl439tM2psUVWa5ffO4Y4nOxRSTU+HtbS1R8Ow0BDUAIlXN
	 Pyhaox6r7DLbCv9s1E6PSGfSGxNFW4dGityyxM6AUO8Dt4otzsLdrOGZm1eCaNSKD0
	 MtNBNS4FkBByVPh2eXFO4rLow/4oFaDLuGUixbqSYuPtV0XB3dcQHJYNqiEK7wobYN
	 adpJ2tjFwe1Blc84GnOLnwfO1KgeO+4Nx4L6/6xE7uMwxQ8oCkbVl1sQXVBdQYiwKD
	 yEZb/JtYhkpueiYm2Ihl/B7Dvc63D9y4lBnWij3s1FIVrdsrpU1osN8n39yBF/9LFV
	 KbS7/JKtcWnew==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id BDC19C982C1
	for <ddprobe@lists.linux.dev>; Thu, 17 Sep 2026 02:20:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178961163374.25662.17848137309431992099.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 9d867e9d93288f87fd13788aae8f87b48db8b6cfa6608d109522eaa06f376ffe
Date: Thu, 17 Sep 2026 02:20:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1789611633
