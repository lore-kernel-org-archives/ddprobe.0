Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 353D315D5CF
	for <ddprobe@lists.linux.dev>; Sat, 28 Sep 2024 04:35:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1727498154; cv=none; b=ADHu45+SIPzf0AqozjacjOnqNxAPloeE2+UA4/xYOeYKvyCdY2NBeXiATl4R8L23M/puhQY+ZW5Yccx7BC7qk2Dv1MBUvD6RcjnmNP3AjSkHpjOv4OQrTof8hD8I7X0Sq9s25U3GxVP0JirGpyky+BEAVpTciieTGLb8RQEg1Rc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1727498154; c=relaxed/simple;
	bh=LJaWR7yzapAYAtYXkYeXLJr7UVnxhCQFVrAKfRJbJQM=;
	h=To:Subject:From:Message-Id:Date; b=pIUUSG67s13PhzJGhFNtWv9k7V7FFWpNRFHdGpqKXLc0JE05jSv1/JiG8KUsUwTZne4sgT4NeHqfk2DfAgSACV3s/HbSijoyWk6RHXAjJKvdE1iczvJHVmX6UocvLx/d8rDMue5YyplAXCBlHxIRultiS4rMie1alMDxtjhs/2k=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=V5fhc97E; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="V5fhc97E"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B0C80C4CEC3
	for <ddprobe@lists.linux.dev>; Sat, 28 Sep 2024 04:35:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1727498153;
	bh=LJaWR7yzapAYAtYXkYeXLJr7UVnxhCQFVrAKfRJbJQM=;
	h=To:Subject:From:Date:From;
	b=V5fhc97ElZI4kZiV6gtWllXL/nQaqTKIK4fllxEEQnsYQYdV8mEKEeBApdI5xPZpd
	 IAcvZ3gd8bo5VsmBJL5WOGKrRRL2DIfJupzkMa1dmojQVzPDPDUxWy0usqNzZTYgYA
	 9ftnSJlYkmhzdCXLNSJhYV51Ipt8pisKWz7UPqPKBwyvbSco9QkrHUU8CN99Udfh8s
	 VTf+5Czm2C+t7yuivBVl8wCoTmTgvWDG21EGy79m/4A3tSCm8MDG2HpRFoEfsSFmRC
	 wKO2kGUDOyFDr4vkvXSGc8I+5ak4dwiQU4l4npDmtmXdYHMEe2WRoFxnjLmNDN/sqb
	 aNWCzitP5Xhfw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9BA03CF649E
	for <ddprobe@lists.linux.dev>; Sat, 28 Sep 2024 04:35:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172749815359.20640.9772259989044331939.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 668b6172097181c2de4c97be60e7d95b9977a07a2211bf403c68efea333dde7e
Date: Sat, 28 Sep 2024 04:35:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1727498153
