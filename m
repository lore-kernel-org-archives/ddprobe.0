Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 213FD25DB0B
	for <ddprobe@lists.linux.dev>; Thu, 10 Jul 2025 12:59:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1752152394; cv=none; b=nOhq0LoC6C0wuCZBVMYAtCbjB30YNt5tV2vJhwe8lSo+yr4v1vvB9U5ZgZIl8LjE3t2p0Anx4+kht7/YrHmjA7m4BHzvYuyau1CVxjbmQbSX+IpdQqdoNNU7wh3adcl3ZN1e7Zp3oO67dk6IF6t55tdR1j7NVo8lnfNsXIle2OQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1752152394; c=relaxed/simple;
	bh=/xCvKREPiiePdUSI0dSbl9nTgLW5Kh6TUeBWFMY2wKs=;
	h=To:Subject:From:Message-Id:Date; b=l4ZMPpkvi5WPMzfNipz30dPIGjWHp35vL07kAK2TMXbKayflT8+7FR3AhkWLgAVbzGFcMgUXSvSUnkji2gX9dfvyzXgIvaMHBQ1BZMcSFa7uRSPXXWmCZUKg5ZNOd71e1p4+riqohJGkf4N4ZyN2IV7/XVuErbZrnBK0niLgsfs=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=pUFBihRo; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="pUFBihRo"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AA5CEC4CEE3
	for <ddprobe@lists.linux.dev>; Thu, 10 Jul 2025 12:59:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1752152393;
	bh=/xCvKREPiiePdUSI0dSbl9nTgLW5Kh6TUeBWFMY2wKs=;
	h=To:Subject:From:Date:From;
	b=pUFBihRoQnSyxECKfzSGZgVWpBIgc3PnvOyOX7jIW8/d53T4sKnHAg/+ovV+d2qvi
	 UqzbQU3pZaichUyi37v33pBlPmCUwajpedPf8LRQwl0yD5pDamEgOJym81CoGkgzWX
	 wXG1XzWgYCwhi1BAx/bbr5KzycYKDAiAXCCIGhnmFxkC/LDuoxDyCl5g5pt3LofTZT
	 alj789H44ZYACne5xxwDeXxKzRhrVxLdr0MxMG2Hrx9A3GNPl1tsX4dM4VDc3s3eZ/
	 AtkzwUe6j7vMV7MameEuxWugHSMQI3/TrU8O0AvJ1jM8lsoRZ3muwM+ftTlLH24jE0
	 kq1+4+q/USG7g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 99556C83F1D
	for <ddprobe@lists.linux.dev>; Thu, 10 Jul 2025 12:59:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175215239361.29679.381808392303780939.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 51219960d1adf25e0273faae71da2fe877b66a3dd84badf04e979ffbc4dd455a
Date: Thu, 10 Jul 2025 12:59:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1752152393
