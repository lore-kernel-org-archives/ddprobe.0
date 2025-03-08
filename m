Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4DE201DE3AB
	for <ddprobe@lists.linux.dev>; Sat,  8 Mar 2025 21:28:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1741469334; cv=none; b=RgfR6nBpPIpBCTfyDrGSqyurks0YWGan1JlwCMd6bxhaYO1NLSN3h5aqKG6zmU5zenFcIg6GTX6x6csgJY6VGnars0RX+xprTJtUTzykYa2So3+c2Uf0AT4M4zKYoOHa8oP5+/kK6WwujufGnhY0lSo3T75aAYEf8GDpPKpR2uw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1741469334; c=relaxed/simple;
	bh=2KN0dVAChElCd+Ob9UmlIK1fEwOXG0AcXSbi5cvaD9w=;
	h=To:Subject:From:Message-Id:Date; b=k7yqbC3Ebxo6g8GpOyMA9mkoPSmMPf79o3r7i5C/t38mIZY/3WpGHjWc0pNJSmGn846vA+xZmWsRZW79hCbzFDUBDa1UUqMDE+Qyv72P1hsvMK9qoPF3hmXDK4siFWCIqrVuornd9JzNQIhss10XPYTM6ksPO+SoNZKBTGX8gKA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=WVDyVNSY; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="WVDyVNSY"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B93D1C4CEE0
	for <ddprobe@lists.linux.dev>; Sat,  8 Mar 2025 21:28:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1741469333;
	bh=2KN0dVAChElCd+Ob9UmlIK1fEwOXG0AcXSbi5cvaD9w=;
	h=To:Subject:From:Date:From;
	b=WVDyVNSYYgyiJ8k4r4+gs8XhkO5SSfOFD/b5hhIm3kCsUQg0KMAn3cwaAqLqAEtB6
	 +7oyEKWc/+BoNLbGYPhHDlmh0zcguS9La0soyHvr6rA5/kv0lo6DUCoWbTaKUAMkf5
	 3sNmpGlkfpijaLCFBwpHH6z7hXL3bFti8fvcRWiPVNsoYd76/VIJrWJSGy+mLzvkRp
	 1JGsEGaW/U168hgqz4T0OX8EwJToPWD90WxoAoToot3Ay3ydDczx4Q8YlKrrDTUbXn
	 +nl9Zx9YL+y+RpBjEAx237Ut/wzMYXr0TPH4kx1jGLZU9aHB5VQXdCztPi/LMTouT6
	 8cASXkPexVZ1g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A2481C282EC
	for <ddprobe@lists.linux.dev>; Sat,  8 Mar 2025 21:28:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174146933363.5896.4099421802850070499.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 27249dbb40d746e8663423b4315c3dba8f302dbce4f938edd8db83422f9f3cb7
Date: Sat, 08 Mar 2025 21:28:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1741469333
