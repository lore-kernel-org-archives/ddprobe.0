Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 128493D332C
	for <ddprobe@lists.linux.dev>; Thu, 22 Jan 2026 10:53:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1769079234; cv=none; b=fWRORBB07ymwkylkLEHjKu5zwxIE78qGoTauGYL3Wp7lRZWw/S0trXWixQb+P4lccHqQFL97DTx/5dQVnySGR+TRlMKm9y1YFBHSXAfb1KkZoKWlSSKaGeS1XCUqzOnkhapWusoUpPshcSAW4YBBt8YIIMl1JoRlQmOQ2GhtUEI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1769079234; c=relaxed/simple;
	bh=MfNgP/2wxgFZejNABvWVltMEjTTwA+/M0Fw/r1H8DQ0=;
	h=To:Subject:From:Message-Id:Date; b=p8JdkF9lDS7mVRoQfdKJLUldhm/ZDUQB3JAHfnBOhz5h7hRnj7POK7ZGi8oeWhhS1RaOBRoP0ATBcc2EPApb17MKvQlWkUjFCdfnFtBbKYdNVCHjfNeO473a1Fm0Jb7yo5cqxseIhJeEJaTLXUTNtbTkKXTpD7piG9ZBU0CKoB4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=VgFjG+bi; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="VgFjG+bi"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A2A84C16AAE
	for <ddprobe@lists.linux.dev>; Thu, 22 Jan 2026 10:53:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1769079233;
	bh=MfNgP/2wxgFZejNABvWVltMEjTTwA+/M0Fw/r1H8DQ0=;
	h=To:Subject:From:Date:From;
	b=VgFjG+biV+KXJjFU2E1SLcndGgMEZwGK7Mqugn50hUwGkPIk/ZXVwmVuMvuP6qvBD
	 W6zh51jxO6Otww/8eqEvVZAl9f1FqE0jE6eMq3NStUOTMbsI3JW4S4DJac1fIFdRiY
	 eKOzzHpXKNWF9zKwgDSxwvypgJhilupJGLUJenyG2e+mgE/0bkvrrrUdFdqniSlyJy
	 ixD0RLz29pnuvTaQDQjzTh9/QNn6nWK6O/Hu7MAmj5RWLIRVu9xrTy2Zqk4YlgWze7
	 lc5WgH9tAPH24PB+/7wgkOMfH4/JhyfKAp8wUiqfurO2Lc+jjC0cWt22bmT9iR1s4u
	 I9/KilAmDDBoA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 91559C44536
	for <ddprobe@lists.linux.dev>; Thu, 22 Jan 2026 10:53:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176907923358.28681.4271212740387382589.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: ef96c8b6b4bdc716f86b01add2e062e5c0f990a1c29a65ae8eaa8286afef0928
Date: Thu, 22 Jan 2026 10:53:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1769079233
