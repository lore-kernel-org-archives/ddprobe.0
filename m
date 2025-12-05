Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2928E32C305
	for <ddprobe@lists.linux.dev>; Fri,  5 Dec 2025 16:12:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1764951174; cv=none; b=slDsc8JwovOKMVWrFZAVOLdT7Qt/0eZvZofVo14K/Wh9NXximL3TY8s/VeaCHnTTFlFh401JQKC+asVPASjs4Abiyw9WnFXw920GB7ASUNAfhYzO1VkQkejhiFoRU6jl7DTGmsFwAr5GFp3ILCSF/MdNHDt4uB3o46U9J0FEEMw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1764951174; c=relaxed/simple;
	bh=Lz8g6lot+UZihcEo5HADq1gWcND70tgU2FdXnIZCKhk=;
	h=To:Subject:From:Message-Id:Date; b=fdRa9xEUpB2C4LOm+VoASYUL6Mp62m2cmTAR8ADhNMIrZw7N6Db8Fq7J0vbm9/0gmYe6I/oVd3H3ZxvX3k0D39yUkythG0WhZjHtky4ih9LQ00IGOB96yhtmp5iiIft4uA/EzafRNgOEb0zCFWaWip+vO0VD7R3a/Pt30ln7Ic4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=U0+F2Y+v; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="U0+F2Y+v"
Received: by smtp.kernel.org (Postfix) with ESMTPS id ABC59C4CEF1
	for <ddprobe@lists.linux.dev>; Fri,  5 Dec 2025 16:12:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1764951173;
	bh=Lz8g6lot+UZihcEo5HADq1gWcND70tgU2FdXnIZCKhk=;
	h=To:Subject:From:Date:From;
	b=U0+F2Y+vn94LKyI82QpJRgjWpoOJ9oWCx6U7a8Rmp7bQ2qi0XCFTTzBOwWOAlO/FX
	 uwLlx+wz9DQ3M3VklHFxHu/5Tvjaq7f9zC8u4wT6txaD//kh5V5qaHi1R93XDS2rN3
	 WgfssQSUANj7tdC+OghGyUdEAeLjjGmrU1pCZxlFqRCvlcGaFYggGSpKOQVpeMO1O2
	 enGlmlbxwDt/nmhq60IhrGizWmrGMTyXJPep+bk9K6uYOIaxITK0jdL/Q97a7T1m6Y
	 aydXfqCE+nbfdEZ7g7Ek3ttTyKUic+rmP/r4e80LCqBPuqkl9UJOWFs9fQ+Zwokeod
	 SzFFBm/85314g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 997C2D33987
	for <ddprobe@lists.linux.dev>; Fri,  5 Dec 2025 16:12:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176495117361.27449.14892476814638134034.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: a0e9e09245ccdeb3dc659eb1a88202627faeac98b27a4884babf7759090e0f74
Date: Fri, 05 Dec 2025 16:12:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1764951173
