Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3AE1524676D
	for <ddprobe@lists.linux.dev>; Thu,  7 May 2026 02:07:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1778119654; cv=none; b=hLc3SdTyzVRlveQ2icZIp2bassD4HLFkrr8a13APj0jaNT3IQD2vMc8jrgBn0lyNqVxCgQTj3w0bkx6CR9PptffaXWsTSLJ6tC+4GXQ+O6KkyKKgexkA5173SnU4kzyws5phiQQL51qHeU9z2LGG++f0f89BsQcMmXnuPijihDo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1778119654; c=relaxed/simple;
	bh=4FTJo3irBPoBZVsFONEgqvCoOe1TvH/DkH/G29m8+rc=;
	h=To:Subject:From:Message-Id:Date; b=q1LGqX98TwMwvPk8E7a3ihO1EaS5XmpOCCzQec1uGbQr9x/rGFlyM0RUyYmT/94D4cPP5s5usocCrxOf1N7+rd5NH+dKWmHEpz7fcvQQGlU3CG1oxxo7A7ewJQRpUytZYauoFpBmyYvO+YNMn/H4Qim40y/pxwOobhb5ktGwtsU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=cM0sVgts; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="cM0sVgts"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B99C0C2BCB2
	for <ddprobe@lists.linux.dev>; Thu,  7 May 2026 02:07:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1778119653;
	bh=4FTJo3irBPoBZVsFONEgqvCoOe1TvH/DkH/G29m8+rc=;
	h=To:Subject:From:Date:From;
	b=cM0sVgts+xkg65LubhbuZw/OnevPb7LUAeHTMUofU4xjH09x6LxF6wOv8UjfccJuT
	 /i/0J+KxZl7apFFSyJzF7Yexfw7AF2J6kSPQ9SmO2C+DDJCLATF+c9vxJwJj3ueJc1
	 kg9ReIZKCeP5dIq71AqSjX3mapl6DZ/kOCE3sCysQJblC9Z31GaoKDJ9BOgPOl5/HX
	 lCEXMS6szlL1wryZZoWjvCKuX5gdcLeCuvJoMLRs26E5DHvTH0caRr4gL+QiP0yN2P
	 81T2/3sLLEwwLS5HgQ9IjvlMCaJVLie1fzyMSAPORIXu+YNCiDjdAtL+SfBxDLFWRk
	 UWnTu1w03pvcQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AB0BECD3436
	for <ddprobe@lists.linux.dev>; Thu,  7 May 2026 02:07:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177811965369.24826.10592411389262386459.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: bf2d7e22d4a9eed1d4ae3a707f231e9738d39da5bfb47fcd2a17de4a85606f7a
Date: Thu, 07 May 2026 02:07:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1778119653
