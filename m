Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 21B20748D
	for <ddprobe@lists.linux.dev>; Sat, 14 Sep 2024 06:35:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1726295754; cv=none; b=iMiBwc832GGDoLHjMqqrVHMDHDi1e+bTzyXZyemlf3hiC5L9xADOQdJgSQujBEDyxRNCGRn8Xxrdx34tUHQAQ8ft0eoONlD/fAMc6V6t5XeCSfvBHN5//bUf82jiMyKcEUUiMsmB+qpZOrujxsHq1XaRtvKwDtZLRXtr1eVjUCE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1726295754; c=relaxed/simple;
	bh=thfN73KLTtURVRyLWu0UUts0kY8HnG1SNk9msa36r74=;
	h=To:Subject:From:Message-Id:Date; b=imvAXC34DlGhHj+serVVh/rt4WpJoakd57y++g0+EsKVbk1OnOsZVCvql3xXc0E+rW0UsJs5Rk1GAFKksB4aMfOq6HbrenSyp5QqjiT9Dy0KZevS63iYqyk3vjFXSpF5VIpVS86/Ukn6oSzprsWVdshbaRASVIrZSKTN//RQ/hQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=FcS1XLRX; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="FcS1XLRX"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B4366C4CEC0
	for <ddprobe@lists.linux.dev>; Sat, 14 Sep 2024 06:35:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1726295753;
	bh=thfN73KLTtURVRyLWu0UUts0kY8HnG1SNk9msa36r74=;
	h=To:Subject:From:Date:From;
	b=FcS1XLRX1/XWTcQ1p9CLaa4cZTb++qKJh5GTCnuaGRyBTYRxvLybEd9GDLvmC5tHT
	 n2vYqN2+chw5P7HyHIP/JapKQd8MtpRdem2TioG/qvUYCuQBQUgoEt2dM6r5H7Z7KG
	 in9HqkB+YhnNjPG9yv6OVBRKUKfoFFXUGx3mENUgXnLiLsBaqTglzdj7O2iHGzzwsf
	 E76i5BsPpOBw1n4SnL+WDNHGrUdeYmDXIwFTCP+g1rcvvoHJpGHeWb2c6O+7+TF33b
	 cmZawciL0UtHczr0w9vNSMyNqfjbi0WZcGrxcZVJtpst0E9L17USTa+f1Xsb/gh9mK
	 ru0MZ5d1sA2PA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A1724FC619D
	for <ddprobe@lists.linux.dev>; Sat, 14 Sep 2024 06:35:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172629575362.8463.3040349369170298808.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 6388ab5dfdef54992bb166549e8a5c59d785bda3e53563866cee607d54488232
Date: Sat, 14 Sep 2024 06:35:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1726295753
