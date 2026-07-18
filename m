Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 69D90126C02
	for <ddprobe@lists.linux.dev>; Sat, 18 Jul 2026 18:08:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1784398114; cv=none; b=U4c6gYUigCCfniaGDscwOrXiyMhFi9la8qLxa22y7CPZ0iP4ikT98aKgBoKHD28Ej/WiIB4aaOyfw21ZHrcTZyvGOhauFbV8koFaJVh3GqId9bime/UuF7252bPc2P0QouCVWAiTCcMs8/YouaFVvyugzH3/X++bEnthfDVy7+0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1784398114; c=relaxed/simple;
	bh=Dmiy/NcqqIC6Z2v9Kqe9bKP4+Z4FfFMaMAqybl+MFo4=;
	h=To:Subject:From:Message-Id:Date; b=GwSpyh7ZebvadwMo0Q9TP9cQfXZqY6/xTSMhTYjJL5JD50lnwo5QWXhbTx2t5e9ZsUjnjU+SPVTsNVx2Xend8m2HogGWkI2RfwhFPcAT/JsG0QF9lDzimDhCOf5CW9uCck/X3PuBwfr4QngB/VY/zqyNH9NqaDJaLQ9WjzsJ368=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=LOUSm0iC; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="LOUSm0iC"
Received: by smtp.kernel.org (Postfix) with ESMTPS id DA8C5C2BCB7
	for <ddprobe@lists.linux.dev>; Sat, 18 Jul 2026 18:08:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1784398113;
	bh=Dmiy/NcqqIC6Z2v9Kqe9bKP4+Z4FfFMaMAqybl+MFo4=;
	h=To:Subject:From:Date:From;
	b=LOUSm0iCub6KeXXDwiGvbmXoAzVIZYLYDDxpLoWJPHKILrtkAsuSkkjxKhMtIh3Q7
	 a1iyMc1CmpXR3YIFQsBpAnxTRoUQKJDoVJn7shitFBzQ2E+2srquYrBdyU8GWgcnko
	 tMI3saQumIkg4jULIDfFMSW11mQwDDk5qvVtm5kd62yHGyXIuno2qG0JA9D9Z0cyrB
	 Qeky9GIMKHvbL2K6rGe13MPZLUxkLyCgk6BwwjKwFJkDrrUMVKq4qzRxchcVkntp6u
	 eExaQDscQHlXTJGsNo81AguaQ9e2Y9DPxol2l0Biojt4si+0eYlo+DAFWA1ZHjY4Ei
	 w7dpyucDOFsWw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id ADC3BC4450A
	for <ddprobe@lists.linux.dev>; Sat, 18 Jul 2026 18:08:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178439811368.26692.404204571644814383.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 6e36c2e1ab30269d5367863308b4f605497e87a246a1819ab7168990646f2432
Date: Sat, 18 Jul 2026 18:08:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1784398113
