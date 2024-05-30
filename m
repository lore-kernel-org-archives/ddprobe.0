Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 603647406C
	for <ddprobe@lists.linux.dev>; Thu, 30 May 2024 22:34:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1717108464; cv=none; b=Dg1D4sjOk6OnzTvlHH9xopU0H5Kd+NCqSpS5HimBhCvIJLQ51x2C1+QfgJT1mSJJu8AGw5baa/xi3Ukq4Zh7HeEtnO69B1iHbE5VSXLehxqiFVaakaR+AM4uT011c2v6L9fngZg+6OTdh/VCtlyMlOwvf91yeyd6xAhSAUIVgb4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1717108464; c=relaxed/simple;
	bh=nfB9ljSD090t9z3B8qzrxGrZFNd4tST+vnbegvt/1Jk=;
	h=To:Subject:From:Message-Id:Date; b=F0NTqwQkPmhx4xaiSXibdYopbIExKzKX9cyaC9jHtrCbEMOzvppEBqsAoXEJ0TeBQ0tBnvsnl+e3N40VSoPw9K+35n05OfOfUjRaSMFqqkztsk0lsRmLD+vmqkpE2Ll0XmNOxDJWMiykHuQxRtMn7dctRxFrxow9wcvx37cjZqg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=eB2Rzpjn; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="eB2Rzpjn"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CD702C2BBFC
	for <ddprobe@lists.linux.dev>; Thu, 30 May 2024 22:34:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1717108462;
	bh=nfB9ljSD090t9z3B8qzrxGrZFNd4tST+vnbegvt/1Jk=;
	h=To:Subject:From:Date:From;
	b=eB2Rzpjne6h6yDu5+j0d/ng8I/9fGexwsdhWdsuC94/Jj7HsDkOxBXp9eDNX9mC8R
	 hgGdjgIgs+kNBz4o+6cIIDFJYRXZla2cgUgnBahfQdG37zNOln9q9nD1mXCybVMm/l
	 uDZPm52sq3jf+7ml9uCKfjtXPrmLeoKtIgX3B/R7gZB4ZRvcFWVnLOFOXaBZZ6DhaL
	 r3UayC5ZeL3v7JzF1zLhEqyrYZ4yvUQugH7FN5/D1TSuySYvXgKsoYzUDvVdDDsFHR
	 bDo5xo/g2ipVarOdJi79CzFZbprQJ/nw8qqB+5HdyWVCCoHO8jA2i5saRrl5HgmTxK
	 DTWgok24TLZeQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id BD2F3C25B74
	for <ddprobe@lists.linux.dev>; Thu, 30 May 2024 22:34:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171710846276.2023.9335401037190443292.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 961258469efb5030449f01e0558f5dc2a1d1dd34dd03be7e602930849c99d756
Date: Thu, 30 May 2024 22:34:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1717108462
