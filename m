Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1209B6BB5B
	for <ddprobe@lists.linux.dev>; Fri, 27 Feb 2026 07:44:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1772178294; cv=none; b=MjRsKPlO2ulpQZE2XPSU3IiDQuhj5uS1hpurS9Th6AT+ytQyeD/lOP0i4euwIpqtNrPBZ7yFBQp/rWwt2fWjTPJSqai8R3+GNSlj4hbC6mk+oCR1ooRHyx4DWbRRR793OAZtupWZP+JUdjD9ZJjbjHwhUdgVd3oxZxB2o8lE/WQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1772178294; c=relaxed/simple;
	bh=Fp+yxxM8f/lei3qfukyA10ZU7Pky72PUG2gRDpRkcf4=;
	h=To:Subject:From:Message-Id:Date; b=RYVma8x+E0iFUyGX4d4lo7qAriEpH8hlKHdR1ZfeZME6WQjjzOoMrG/rxDezhUL82cTugl05rMLOGytycxkQ/zsgp6IBs2WKh0ZAoc3N2PdVuW36H28NJq0fPBRRlzs1BEpZAFYnlZ0tXAhuiyI24eAMnbYM/fQcLTKWsvIcwzk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=QD9jT33U; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="QD9jT33U"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A8661C116C6
	for <ddprobe@lists.linux.dev>; Fri, 27 Feb 2026 07:44:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1772178293;
	bh=Fp+yxxM8f/lei3qfukyA10ZU7Pky72PUG2gRDpRkcf4=;
	h=To:Subject:From:Date:From;
	b=QD9jT33Uoc2G1Gn+Yihq+sPDqYYpp1NAgguFoej7hNdPoHmJBw9gIfp/IVHuHjNr8
	 xA2hhJJYEVRKK3l3SbDrlOK0wzRZt4t0DPwrHblfcpY2PvGux3HlT50JTTzsZQ0K7M
	 JSFZ2biGrjnMZvzAJIue2DStT1ddwm2DgH0vGnjaV2+QNnRDLoD/ZN1uRF8nFaePNV
	 1Fs5r5mUUMTZMYt1vAeaUOX8Yxe4ZeIhaEtR3JFzBTt1CREp2d0+BBf5Ts10tpQRAE
	 lhYm4uHAfVhyiTbGqrMlLpzVL6OtG9TdmAN3wcZTx1b7i8ANGYrYIMOTqvay7V3a2/
	 tjdHrvJ106WMQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 98537FD530C
	for <ddprobe@lists.linux.dev>; Fri, 27 Feb 2026 07:44:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177217829361.10435.466162414195550160.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 490766904c2d94d78173329825ba497065c3ae9557d9cfb9b996c3188a70eab4
Date: Fri, 27 Feb 2026 07:44:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1772178293
