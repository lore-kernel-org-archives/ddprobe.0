Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id F0EC035CB6F
	for <ddprobe@lists.linux.dev>; Thu, 26 Mar 2026 08:14:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1774512894; cv=none; b=WjNTxM3jz6W02bShoLzG9lO6rj9UwinSHKYfgKDCiUpaQHbBmh+I14fNGnIPwiuq9tMZL7BLmC9Wq+cJSJ8SPaLFEpB6bSCceQQC9Xuz2wAGp76GivSHGnvezctsjA+ue4h/DCGuun/W0KzCzTzWapACdf/0glwu9yS7yXTx4GQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1774512894; c=relaxed/simple;
	bh=9Dk1dTgoZtv7UlmN18nYRztHoBIUyp1KaEC7IlEB/08=;
	h=To:Subject:From:Message-Id:Date; b=Ygh3rE9Ul0M4NHe33Hzmmqy6SvZOlaIiXnNMYK08Jv6APHbVnSAqpLei/8ED5JO6IZGTu0hR4QQtoU548v92/oKtcxCW82VP1jo+m3Rma3S4YCbFzNazKTnrJ4cX9WImJvOHxc+1nclUkXSYa41sccEyfn1EGLmIFEp4uQb4qvk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=aCk4Ta4p; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="aCk4Ta4p"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A0D85C19423
	for <ddprobe@lists.linux.dev>; Thu, 26 Mar 2026 08:14:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1774512893;
	bh=9Dk1dTgoZtv7UlmN18nYRztHoBIUyp1KaEC7IlEB/08=;
	h=To:Subject:From:Date:From;
	b=aCk4Ta4pS5BZ8Yh7HBhPrz5Ogo5Q+BiAAET5ROGT8awqGM+hoXftUMqocohniCAGa
	 b3gFaWEIGK+LMTkNai159poXrfEe+hcRYibssb1XCVhS39kycBma6zYi4bJ8eKLMqB
	 k6OXuphT2E7tQK5vYNHP3srrtJ0yIdc6dahoYhEoIoH0R8hrMDeOdoLavSeJnYRups
	 53KRY2l5R2mmEZ1pUiycgcZBwKhA2wMf6jQZyC+kb6sA1aIIcBWaik+obmYWJMUaJo
	 JGuVM9ap/Q2MrwvklytXpUTVAaGwuS7F+aT3qAI70hsGdEjjbEBi+DczNyPzKhgEwz
	 ljKRQsAEmBgjQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 926E9106F2F3
	for <ddprobe@lists.linux.dev>; Thu, 26 Mar 2026 08:14:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177451289358.13126.3602501344873773825.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 12eee465f55a76958050742e168b90df2cfe1993ff45cf8c198848a1210d261b
Date: Thu, 26 Mar 2026 08:14:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1774512893
