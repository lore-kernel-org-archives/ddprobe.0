Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 54B1515E9B
	for <ddprobe@lists.linux.dev>; Mon, 15 Apr 2024 03:29:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1713151763; cv=none; b=mV9mnGCtLLrMFAo6qOjaW4SihCeY5yBRo2YspFO0pgh2wV0T7s66tlNCyxlJiU0KhDUWbqksXdpv84EqQR0cLhjZ6qgQ/9tZCvowVdwW+48Tlaf1Hz34B6yb+RID0qBmssSNsCxpQtN4vIShXvssK6uRRfmOQwD0JdyhqvLBHU8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1713151763; c=relaxed/simple;
	bh=MXt1jp5E4jDSSeNXU89AExsMfA5a2iusRPdYy7DX3FI=;
	h=To:Subject:From:Message-Id:Date; b=pSnmB6zHC5bVoc04LUJa+9vvO/Gl70r1KhfAysK5xuCXCTHw3AJ3p3HE/40fqvm/9RY0rUUu4frPiHKhcl3ekGxE4I8QW1vJrekiy+DPwcAlaC78oH4/3yb8uk0XeYKlskW6/ck16dgEJm9sLIZHAQTmfix7PVceHo3ICpJHHAo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=BKRFXWZ4; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="BKRFXWZ4"
Received: by smtp.kernel.org (Postfix) with ESMTPS id DC12DC113CC
	for <ddprobe@lists.linux.dev>; Mon, 15 Apr 2024 03:29:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1713151762;
	bh=MXt1jp5E4jDSSeNXU89AExsMfA5a2iusRPdYy7DX3FI=;
	h=To:Subject:From:Date:From;
	b=BKRFXWZ4G7rcGVP3Ac1v9CZpf0/sdtZzUp36qTn8/zWOZn4fikRZiyg4lS8eDtJdi
	 d5FbUM9P+9SyiaWi/5CzsRS0QCnEaSlTDKKF+9dxZapFeVFhcaUb36ce7JzMvUskaP
	 R5q3ebqBPkqjnW2PXSg2lVV4uiUJclENqejRg08ubpbweuQbc85qeP+HJcP0ND2ZOV
	 iOaMqT2XAUG9ktnc4ke5zH4smgduI19lxaX1lJyGC7I+Xn2GbI7xsZjLdwVLdKZXzj
	 Ib+Hwadb0wjiIlC/BOVUuSI/QDXs4heCNWM3+6VIxvHF5OitnILHuMtgvJZigPE7Lh
	 k0+TO1ZDYa62g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C7927C4345F
	for <ddprobe@lists.linux.dev>; Mon, 15 Apr 2024 03:29:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171315176280.18155.16316441157418086295.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 5b4142fae4742571d6ca2c2201c4b6ea42e366bf1bdf2d2c51180b2ad58f6fe6
Date: Mon, 15 Apr 2024 03:29:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1713151762
