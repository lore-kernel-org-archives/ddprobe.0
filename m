Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3B5D818CBFA
	for <ddprobe@lists.linux.dev>; Wed, 31 Jul 2024 10:45:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1722422754; cv=none; b=Z75zityIEvRgpQvu8c/pclqap6wY+YIJgMC7G9fDV39GA8BqsS3s0hFVKjJFnPRcvg937i/TjqzP3TNVlTzLfQqmvyesNZA8F5aYv6XLDyfuj5LLBa/7SRKRS4aTa/1tX5k7L2sPiQZWPX3X9Iha5a3TXXHpsbbb3XfLVbJ4jGo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1722422754; c=relaxed/simple;
	bh=U1YR7Dr2YbbvforLeMV3Pu/TxHdCJeoCsw5lPk5UA98=;
	h=To:Subject:From:Message-Id:Date; b=eg45V52oT93q2tuAlnjgeA4fLuYEZ7W/czTDtl93h+W0VsYYrxKU8GVmb75SdnXfAAliPTYGzaQ7QOQadkfM513whko1yTiAIf8I+py5qeKn4rbN3xW6MX1L+WEIiq2VXDCSRRwoQNEiV+OGAsz0eEAoBrPwGi3tHMY+54EG9Lg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Wp3Bkp/M; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Wp3Bkp/M"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A5444C4AF0C
	for <ddprobe@lists.linux.dev>; Wed, 31 Jul 2024 10:45:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1722422753;
	bh=U1YR7Dr2YbbvforLeMV3Pu/TxHdCJeoCsw5lPk5UA98=;
	h=To:Subject:From:Date:From;
	b=Wp3Bkp/MFgNrq27sX4KHZmgIVKQqBqWtPIeHhRbLIv6qLKCnKqtWmU3bNKQNHSTs/
	 twZ6BpbWUHRzkqFNvAyo2AbZX1Np/Q+eXWHy8l3/ZAalei1pw+GYPHYCg6jbxeU1s7
	 uUtduoGpomj7TjP8PBE46tJR1EEhD0ptfkFOwzBk83SVloYrzjVCKUqZrrbUA3nvmP
	 lkzOS+s8QUMUotgSRljulFqahvVZUWlvgAX5ogrqJDPIlltJnWUaiG3vFaUcGlwLoI
	 +ovJa8GMh+uGPFEVBSC/hhYgqirTtpBD71M2El+sn1Xzi7vHQ0Te9lum+tGEbnSaFK
	 rwVc6N3xjkXBQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 91E9BC3DA7F
	for <ddprobe@lists.linux.dev>; Wed, 31 Jul 2024 10:45:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172242275358.18046.4381154390674677285.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: d90c158f1b614abb06290bba98987986e346f63cd4a00be87f32b71b12a29c93
Date: Wed, 31 Jul 2024 10:45:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1722422753
