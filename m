Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 398552882B7
	for <ddprobe@lists.linux.dev>; Mon,  1 Dec 2025 07:42:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1764574974; cv=none; b=R6Kq/wcaLgl/XG8rm7YnfZqdrTMMIPu7Rpe63u1UmRYjHn/o6kqPCeqVSlJFQPw2ztyT+njz+mUbYAAZKxkFeHLP1Fvl3y1L8gSCunykThfeBOAYELLlGknb+MCBzI02m84Is9WuVKjClvOhfP7nCR2olMeDfzOkgQnU1sb4mLA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1764574974; c=relaxed/simple;
	bh=Xagjr9AfTVdNktiO74cmEwmJ8wNg7WVdwHkKevG0eQk=;
	h=To:Subject:From:Message-Id:Date; b=Li4ee+zMkuB73/dEEimLM57i7eJBhXMjWNOAQtQn+DyeHReqH9vKCGqTEtZxmLuNsrF2pRtVUG1/ONcvwNKzYHe6uVsWiTXUgw/5HdWPu81rfRrFmL+CyYCV82QUHtug0tf9Rg4wgKiXGJvx1BP2IHqjMbVkU4XkVuoR8PHM1Qo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=DwJNyC0T; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="DwJNyC0T"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A555FC4CEF1
	for <ddprobe@lists.linux.dev>; Mon,  1 Dec 2025 07:42:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1764574973;
	bh=Xagjr9AfTVdNktiO74cmEwmJ8wNg7WVdwHkKevG0eQk=;
	h=To:Subject:From:Date:From;
	b=DwJNyC0ThLYIHUrUtQK8LJPoeVZnmdZF/Vad56mQwVPdlHerYg+txdTphHGrlLHjH
	 QruaVSsNA9hlreWpae30u82FPclE3lb5dcI/8vSAbb97+sqDIWiYop9S+RCm/MCycJ
	 sfqjQrGQe9/MRKRdBD5jna4GY2WuH73ndP9vKoe4pqxZtNrVceNRmhC2AyBEUXnGSL
	 hXYGmbEniSA7BwRCuoRI/M23tnK97WRyd07LhPtP0SN+9WrvQq6ayA9ocTpPPWu10O
	 xcvojyikc0TavEuKgc7YQzEaEZoFcVdMSR1KDriqCAoYYdHoidTk9VpH975YKi9q2n
	 bKLFyH+iEoDFw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 92ECED116E2
	for <ddprobe@lists.linux.dev>; Mon,  1 Dec 2025 07:42:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176457497359.672.15147430419569045000.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 0ddfe6a17086f33b649d37e01abe33c880fb806f1b38e7f358bd5c705fb37cc3
Date: Mon, 01 Dec 2025 07:42:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1764574973
