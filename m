Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2490C1AB525
	for <ddprobe@lists.linux.dev>; Tue, 15 Oct 2024 08:35:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1728981354; cv=none; b=dQPhP+uNQ6/QCnRISbVcGCOzRWcXUR47MR4SWzu574+6BffDdT/iiGlEQX5Ktp1XiR4qmYq8C0qHtATW9dtBGGWvRwp3GrtjISGjvaqdjbuoqgZv+y7wkp08gP5G1ITwku7mr2ima2g9huSaWpalqCWpCtVC8VssuF7SuZdk0sc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1728981354; c=relaxed/simple;
	bh=ROTcFIVqzAipIarxl5pp2IRiudrtSYS1Mk1ZsND38A8=;
	h=To:Subject:From:Message-Id:Date; b=qIhbK38X+eU43RlC53XQKPwRL3z9FSJZMLoFoY+25Zfc6inCgY7Dk0FquSG+DH0S0+otnItaEpOu5SUi3RkupusLxIrJSSfpvBgmbjjPbM7a8w8yjcSv/ZsBzoVjgw/L/OtDlXBmVYnMBdinZn6dFonDyzJ/o9TuOWSwjQ9xuc4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=euSdlpZj; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="euSdlpZj"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A6B89C4CEC7
	for <ddprobe@lists.linux.dev>; Tue, 15 Oct 2024 08:35:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1728981353;
	bh=ROTcFIVqzAipIarxl5pp2IRiudrtSYS1Mk1ZsND38A8=;
	h=To:Subject:From:Date:From;
	b=euSdlpZjR1VlXCgthxqc+Iwj4q+tRamyiDiMgyJVYBxxi2bwKKLHEVZy7ITm05TTR
	 Pi4xTlIzr0DR2Kipl5oz9F/eHlJyOiFB0njmHmviPghmdBH/MILva8IortVc6GjFeY
	 CbaL2GFlJGVE/ZnKeE1CE/vRSj2DAB+Pi7lgy+rZayG8/rXHq8FEn0zLNMXS+8Bx2x
	 iCOG8mpqJDbzVr0sHqeTWfb/1+mqHpyUaf57RH8/BqtTTEbpEGuGtqREjbZi3HbB51
	 3wqS2Nx6VmzdPIp/gWhWOFIoII4NmmD0jFPNUDk9XkZKa857/VlcPOknfp7SYXlMcv
	 yfgzPLp2hSMJg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 964CACFC274
	for <ddprobe@lists.linux.dev>; Tue, 15 Oct 2024 08:35:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172898135359.28207.4312356175574743722.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 0318f5d173c7381e03a6b01123803155c4de93a7bb8317cecc1ba829adf75e80
Date: Tue, 15 Oct 2024 08:35:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1728981353
