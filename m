Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 234DA28F50F
	for <ddprobe@lists.linux.dev>; Fri, 12 Dec 2025 15:42:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1765554174; cv=none; b=j8zvnOxdLDS+GVIp469j+osH+/R1sYxqVYSGJycD2sqVz3jxecgAHvq6NxLX5mtK36H3x5qOLJ7kTsqatVGTRogmlZXw/5cqXbFlm6e0B+lK/asD618Vkj5CEUfaXPiA/gdft+y4po03gPFgXJA3E438kA0EJgPI1ZLTDHLSD2I=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1765554174; c=relaxed/simple;
	bh=Hpht11a8W8pywoyYwUhrsy88O5lBj44IfeZJTIsoR20=;
	h=To:Subject:From:Message-Id:Date; b=TSEX2fBGI7YhVCIvnLXlYsJYlIwjCty8QlvCx47La3hRymfNxY0bxyJlowkiVftK0bNkji5Y8hpc9hl0Mv0mZ76VNG+sSYl5Fudx8CFjjpsWMwVuuRCJ2ewl49LrCvaloMaPYbJy7trKc7BFtwxMVWr67CndBuE6BPKFoGs7fR8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=LKBV3Jg0; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="LKBV3Jg0"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B04E1C113D0
	for <ddprobe@lists.linux.dev>; Fri, 12 Dec 2025 15:42:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1765554173;
	bh=Hpht11a8W8pywoyYwUhrsy88O5lBj44IfeZJTIsoR20=;
	h=To:Subject:From:Date:From;
	b=LKBV3Jg01o0FzOVzWsq6bV/ygkQ58CBX2wHEw4gX8+LKWFD5u60CiVfJgK1xhAXPU
	 G9ay/Fjfl1kL6czdsZMBmRPxJib7G/Q6rtmF1MgTWVd33uU7Godrlx2kn9L3tQ5ha7
	 +QDYq10lFmFajM1wuS1zxL0KXRXDVlYL3dM4yR/TCDvZ1hyUYmV7dCIccx1OxCRyRy
	 N02o9GmzBc8Yaja6wNYAHb0fBfv6mi1BbChMYPDdPRYUwMIe7EkBJpbuyyZ0p4TxNb
	 Vc83x0KO5nX4nzi6P2SHBi6a2nO1b2+9k4EFbs8uftWELTKZJ5YYtlRMaWwyJht2ND
	 b1GmQNnmuKcTw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 98E68D59D6F
	for <ddprobe@lists.linux.dev>; Fri, 12 Dec 2025 15:42:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176555417361.17283.9680247989738420747.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 8a86724b8f37da3fc6c1662fd9116b857f962f78c3bef308b73c237123c9faae
Date: Fri, 12 Dec 2025 15:42:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1765554173
