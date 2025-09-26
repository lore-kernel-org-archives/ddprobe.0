Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 270C61EEE6
	for <ddprobe@lists.linux.dev>; Fri, 26 Sep 2025 12:59:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1758891595; cv=none; b=d5jQG8/SpnpwW/kI/OFeAoVmjEGzdtqvfElZOCDxaWwUPZeHEqR03mFA3IaPqGj1DYcWP/88wCnyyVkqe/tkpo7zE/e/likfAIW+9gI1mL3p2BdYRI8kTuuQ3w+MuduXwyUL8p/FxM+haQPe56yGuG/pqLag4op+zECH9ezl6Ck=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1758891595; c=relaxed/simple;
	bh=IfmMMfiPknDy+Whr+JihAqFBwcMZD5LOQDD+orl9Qds=;
	h=To:Subject:From:Message-Id:Date; b=Fmp54vhJApKVSIGma6S/zOtdjxXzhURO7t/rHt5GX6Apu4t5lRHUaJ8DaWimgKdYCmtVCZDCDPxCnc3m4wh8v1o9ph47m+F6B5GpVNyB4zb0FRf+elopOgbYeM4l+b4VOGJUx3MippR6tLHOgihd92rBHeUop4JcJ11F8MqkvuE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=GMCxCMks; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="GMCxCMks"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A8C6AC4CEF4
	for <ddprobe@lists.linux.dev>; Fri, 26 Sep 2025 12:59:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1758891593;
	bh=IfmMMfiPknDy+Whr+JihAqFBwcMZD5LOQDD+orl9Qds=;
	h=To:Subject:From:Date:From;
	b=GMCxCMkslILVB2Yi22ZgI5GLAR+nsSOFaSv0kv6wNJS83c340nThCvwbfPYD2Wq+a
	 y1J+2NTkFDyG3NT382ocLfLNZK/cAkMy4L64KxDT8w0A7BP8IbNmv19fS7ypN6k+AE
	 rT1SA/pLo3jA8JMTHxZd371Q2GtbZA/zLLiuDitkfoFd8N3Y/MtzJSK2BX4UShqiAc
	 4sHiMFMX2S1TPwER4LvjCME6ZuNVLtp6pBDZODrbMeKblETXXm7g1/Nw0bGlfChJ0/
	 dbDX7qyiwZZeM8w189+JT4kwBNEC9ipAX3i8y9atUKQnyVkTsv/2QEnYiEhhieZdvE
	 3neAhl1ZB8xkQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 99346CAC5B9
	for <ddprobe@lists.linux.dev>; Fri, 26 Sep 2025 12:59:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175889159361.10047.4460600889869876602.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 34d0b75dfe13895343470d761d52f15d55ed2f9df40b819e0733d9452202c65e
Date: Fri, 26 Sep 2025 12:59:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1758891593
