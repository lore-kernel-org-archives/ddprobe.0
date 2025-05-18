Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5319C4C7F
	for <ddprobe@lists.linux.dev>; Sun, 18 May 2025 06:39:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1747550394; cv=none; b=tnGgAqvZrMU7XOVmGPddPd70B5GEmiiy8abk7yYeS0Q+UudWOc9546dBQ0YnWkmJ1VWG1FpvOOSAfZXXScY6Sri3QwVm+CqJ99snMzzrnTPSugB00uKF68qyTxNDE0hgI/afDC3qVvJA7016sWUG6+h7MECB/NT2/oG3yzPQB08=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1747550394; c=relaxed/simple;
	bh=dAtPzGXJ1kUjAYvHbkpznvq2X6SxI4uIHg49XCUS2tM=;
	h=To:Subject:From:Message-Id:Date; b=BWXL9szZgPErDgb2EbtnPOFiWKYUEkLSnwqEvBtfuhDxZ6OAxWNVq72NwRjZwD5C06coQBpPCxHRC20MjTS+T1He3Zlse0f17/oVHg0PaU8OgOyQnpdIeU2I2OmJuL9gV/oKvenJo862CcsiyacmsG40uypSNygTEnVEsZCc5NI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=EQwUYUQI; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="EQwUYUQI"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A6C47C4CEE7
	for <ddprobe@lists.linux.dev>; Sun, 18 May 2025 06:39:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1747550393;
	bh=dAtPzGXJ1kUjAYvHbkpznvq2X6SxI4uIHg49XCUS2tM=;
	h=To:Subject:From:Date:From;
	b=EQwUYUQI0cUzKH9gZ1VujATnelZGaaPuTnW6Ep1lfX2gRKD4bpevoFODXwGcdi+eo
	 DDtaw6ifwmUGuq7OO/9WRbLnUGncktlfR94yrzuVLZmzY/yG1ODy1UDInKRl7VxTLu
	 xMsNA42Zxv4pWfOZWUPgU0n8Zvlhnx3jd4ifnPCQXMGNw+yHfG5yAoX9LIrpwFpbbj
	 Hk69eg22jknFUAhYVG1md10cuxw/QlZ9ZbiL1TpMa9m1Q+Hs4r/lUvcI4pfbWejzyD
	 FMea5tTkQPJ4VnjQtWJJnXXsE64SOGheSJ1CDeOJe/Cnw9rnxuw+v42QUbwXfoh7/N
	 VNTtdOrx48HCA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 93BD9C3ABC9
	for <ddprobe@lists.linux.dev>; Sun, 18 May 2025 06:39:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174755039357.16401.5470926917522960603.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 0ff87ed78b10646984b28fe213d6d5a1ded13fe6fdf5382c16b8c43509fc2e18
Date: Sun, 18 May 2025 06:39:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1747550393
