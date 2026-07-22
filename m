Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 978FC2D47F4
	for <ddprobe@lists.linux.dev>; Wed, 22 Jul 2026 09:28:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1784712514; cv=none; b=Tm/XXh276hoxPm677kD2IFanEG1829OV7gJnM27bAL0YmG/swzvk1Oy5pxJeu/T+ZI2Z6KYCKjMM5r3c9G7YWIlc9GxZEVDQTS/QtjHc8I2zQIStWo5JnSEqdZE4tR70an9Q1j8aZ1IIb6LUQ530iNk3r6bOg2w4VN6MY8nfK8Y=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1784712514; c=relaxed/simple;
	bh=GYIIb91Szt+RpbfOfZdIHQYxsfrxU5C9+pbnasZH8XI=;
	h=To:Subject:From:Message-Id:Date; b=mho6WhyKYtOHlTf4B1wXpII6AMc7Uhss2LczImw86QRSM6VkgvT8aBmXEJRZM5QfuoW2MqP4YMI9+fB0mRxN6oteXZKwV2C1LlCk+wJDM4nCu1ZqLPm3MemS+CfdoGUbV17kPp+s4QA9KiYT/4MsD932C0ih0Y3joWNF0Av5YVA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=MpwQ+aT4; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="MpwQ+aT4"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 1FF8AC2BCC7
	for <ddprobe@lists.linux.dev>; Wed, 22 Jul 2026 09:28:34 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1784712514;
	bh=GYIIb91Szt+RpbfOfZdIHQYxsfrxU5C9+pbnasZH8XI=;
	h=To:Subject:From:Date:From;
	b=MpwQ+aT4kC3SZwsf2/KH9hZatxziu8RNcED1YvA/gzIb5c35s8jYjEayHwSpzjOGh
	 OYW+D1rJZOnKnFEwi82cpS42mWh0J2/1r/UKMg+Rqdfz+KUsYFTezl32QKPopK2eOt
	 ulZSL3rj+vKH0NbKdh9WIH5eVgRX7UhCiGp/1pjbENqUUMTZP11/c1Dl+Mybxq/jhw
	 lPtxbHbXUShz4C4V0HyJoTpnfVCOD1HdL1SRgPZZQWm6E6ty/Ku1/PC9M2TrFL3k4Z
	 1+YZ6CGmWm5LZSLyCCHVwRX6PSuXhS+67DlZgWovKbZDk8QNQQpt47LM+L+plNpE7q
	 KD2vCAdlT+zmA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id D60CEC4453A
	for <ddprobe@lists.linux.dev>; Wed, 22 Jul 2026 09:28:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178471251384.25524.4908540546957455978.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: c4ffccd54412a36a54725c63974a1aba6e238c3310fc6167503579a9eb6aca7e
Date: Wed, 22 Jul 2026 09:28:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1784712513
