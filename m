Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 515D61DF250
	for <ddprobe@lists.linux.dev>; Mon,  5 May 2025 07:49:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1746431394; cv=none; b=s76cGN53spi0Yp5oLpGRaFUKl5VtLs9EHEirOF0BwsSSrqiUPm5wk7EqPjgky3bTs0sP78U0nowThhk/yUm0qwsYnK74kmGMOEcR6GugNExbGi/Cl2I/aNpx80GyVzNTOILQAwGF3HAX2mIDr08HV3mXZU5Jt3b6LfQLwUMAHC0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1746431394; c=relaxed/simple;
	bh=hc4HaVPYkvnzXrWxqzQn7myoCx/OE3rN9w5xnJbJPOU=;
	h=To:Subject:From:Message-Id:Date; b=o77lqm9A5YLCFrwLvsKPu4sgf6g2OxCq7laqESL6lPh5u+FfHMR0DrqDCQdkjOrPfu4yBwx68B3mZmO8N1uoBb26Bqm1JNCgmfB/ran40NVEVCRrvMCuxV9wDvy1DRX8KIqp4n5B4amdaT+ZOzRP1F358Wz6pVWKkzRtqZPbsXY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=vN03Jf1z; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="vN03Jf1z"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AF1BAC4CEE9
	for <ddprobe@lists.linux.dev>; Mon,  5 May 2025 07:49:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1746431393;
	bh=hc4HaVPYkvnzXrWxqzQn7myoCx/OE3rN9w5xnJbJPOU=;
	h=To:Subject:From:Date:From;
	b=vN03Jf1zyN7bDTT4SR5+76G8Sw0fRDerVJ0Qj93gYeh0Egk2Tb01UFzcm06tkE0cR
	 XZE9A3frpPV90p8uVCJul+77BBRZSN5xNsyDkLs+W2aa8N/uErMg359PI8GaVYpa/O
	 w8cTIbypawxBuBctJ50YAIgSD4Tuekx7hegRBmurFN7b6zZ53I2FSNYzS7jVND3kYk
	 l73owMjsOtkhIBfkyCqU0o+jAaisE8EoVKovpoed048AVR1kTBn7S1FhLsLvuV+91u
	 Hj4xc54VoAVhk6arVBZXV3rr1jrHuFEMYN5o0+0PCfMcyZZRlUNK4Vxa7mm4+MR+GB
	 0scvIsYmF2kUA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9D938C369C2
	for <ddprobe@lists.linux.dev>; Mon,  5 May 2025 07:49:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174643139363.15473.10204346287508441270.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 7e94b61600618f247aae0541bddcf84723e50fe064333914463d9fa628a6af73
Date: Mon, 05 May 2025 07:49:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1746431393
