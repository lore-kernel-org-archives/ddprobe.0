Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2CC096FC3
	for <ddprobe@lists.linux.dev>; Thu,  2 Apr 2026 02:25:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1775096734; cv=none; b=LX/njb9/2+J5S1GkIRyM9p/wRgIu3WhNOMmUmxR+6wbSc9JHRj4g+T0qefeEBZ7/JAcuMSwhUgJJ2mtYC6XhKW17QVNTs7/BKJUYYS/63G7ucuc/+HvfFyLfqY+c5GdeFX6h6XEyui2wArDqhjcbpc9ZO5vx0z67maKe6PMrUbE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1775096734; c=relaxed/simple;
	bh=dO5MIQ5bljr8VMHaj78jARK1hq2vTkJFgVtzvQ/DXg8=;
	h=To:Subject:From:Message-Id:Date; b=EaGsOkAPdH8aPky1/ke7bhslrObynJIQ6WHlZuBgxdEUUF70pjTTNQNoyewosaHzZKFMiGqoRdhqJhqXCo0telCjJnGN3NLYqho2Jz5/inSToxC1N/EfIJ0UN2naJs+T3pnby9R6EPA2fJjyZTuJsVXitdryKJL3ta+U9MMx1fk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=dwwi8NJQ; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="dwwi8NJQ"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C63E4C4CEF7
	for <ddprobe@lists.linux.dev>; Thu,  2 Apr 2026 02:25:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1775096733;
	bh=dO5MIQ5bljr8VMHaj78jARK1hq2vTkJFgVtzvQ/DXg8=;
	h=To:Subject:From:Date:From;
	b=dwwi8NJQXuf9z73hm9u9Foq8hfWRgleL5amU6DbMP7jrDFF1bs5inB25TF2D25bvB
	 MMmRy824SogNfSsI5AnVvKGMoJ+SMv+lAsQELtCsPfaCJ9MFkoieIB7BNzsOz47C3l
	 FUP+k3zPKUgzR30W2bchlFwxq2uJ1qs2tLg4A7LIl/4JuGXgufZrofba9oJiWmTXE7
	 ObJK2dsoilRniXgClIRnFOiatPVC4zEzCmY4Dle6RRKt8lW9Z2ClFD0e37BLzWHY7C
	 ypSiiIcokCmDiavyMOKY+Qok66+FJu3i+M8VStFoNOPtbb2PmuIdgXJZ3DVinykSQW
	 0oVTpPwNQyHag==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B1BFB1112274
	for <ddprobe@lists.linux.dev>; Thu,  2 Apr 2026 02:25:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177509673369.31459.7396368417439685820.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: d30b44f372d4787ece9670621bc25d813070764bff43fee0816be29d17fe2914
Date: Thu, 02 Apr 2026 02:25:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1775096733
