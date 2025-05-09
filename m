Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5328C274645
	for <ddprobe@lists.linux.dev>; Fri,  9 May 2025 08:39:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1746779995; cv=none; b=P9fhVWx1UnnKQzIRiNoJLWfZg2x9hyhkYIgAMzuDpCRqere3GZ9p8g6jnJHUZ16pEfrmM6VMWfkYCiQcpV1EO5kR4PBwxMAdA0bbKl0HPAyvNi6NLIT8QJOrxJwOqLwrOlxLrimIyxfF1/S7SoCBMdLoLF6mJQHs31s86/Ffbb8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1746779995; c=relaxed/simple;
	bh=n8eLDdDumVNKzuxKhbIOggQREC0PawnitsZ/Et1ndFw=;
	h=To:Subject:From:Message-Id:Date; b=c2d1eow/eNAN4Sx1O+u0NCIc4Bt97NhXhuGgRvBGnld7q4beQY6aPOTUQdmwtSWkNX5LOHbFFUwCqdjPCCysDLP99FXh1R2jTqHHB90W88CQMTk3dP9NlhAZGz3pUr6hZlV+oCbVhkAiq3JWJW0Q/PjFoD5o/C/c4j4fsXfaJGk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ERZedfYG; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ERZedfYG"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A4E67C4CEE9
	for <ddprobe@lists.linux.dev>; Fri,  9 May 2025 08:39:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1746779993;
	bh=n8eLDdDumVNKzuxKhbIOggQREC0PawnitsZ/Et1ndFw=;
	h=To:Subject:From:Date:From;
	b=ERZedfYGjeZMnVJh7GcdVT38Dii9QRsksRmMm6Sqx9holTw3mOjMIWkjfofQMi/v/
	 gU8zbogkuBfxb6K/zuvQURgYCfPIksDuUfxm0nL4YBT1YgZyVE5/+kyCq7vJ8F4Zo1
	 7rSxbaWMNl40s0v4reSAdDz8uLTrgVTPgtJ5vmNmzwZUVUg+ujNtv6qqz2t83AkWn2
	 bzZ2SZ/g28C6ZsOp8w/WQ5fG/o8/MAut+W7jcpoOhGSZiYE8Jx8XKs5enIT0k7jFuD
	 Umf0sX8E511UFVGx67ag71rwjEILw0qCqL/E2LL4WauADjs9polwl2FYdYZbK23S8P
	 /xDR5HESq0SfA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9108CC3ABBC
	for <ddprobe@lists.linux.dev>; Fri,  9 May 2025 08:39:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174677999358.27696.14050839509224241891.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 2d778dfe038eaa8505e0ba2d211912ad36e4716ccbe82fbf462554cf742c7583
Date: Fri, 09 May 2025 08:39:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1746779993
