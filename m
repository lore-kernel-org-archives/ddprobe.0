Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 128D528505E
	for <ddprobe@lists.linux.dev>; Mon,  1 Dec 2025 22:52:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1764629574; cv=none; b=SAgc4+MKVArZ2kpJgarMRqnYfsKexNhwijV2JQOVpbgm+JWTOma+VBdEH9pBEXcHOB/e0atAzgCwacgk7qa3EwGaR6RELNpiGUg62C/z2mCi/0FQdVje8n86B6ARt95p0B1Rig6SGN6gYCfJLrwo4hpaU4Ptz0ETpURHsJj1+7E=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1764629574; c=relaxed/simple;
	bh=TLQy06pLY9FczL7TwhRqH2cR6Ydueh2c9x0JUGJwYRs=;
	h=To:Subject:From:Message-Id:Date; b=iDKJUlv3tHz8kW0S53+qvUwyAFfyE3wDvXnbOlCR5HeOOTOxIG9nyIisLCWf/9URLMDReMrBp4JBPbR2e425hHgd9Ixwrpii8Zjj7Q1lgb04Lm4RTiumyZgZMlJEW7+ed3WAIzVeHHoNnY+eDgAZEXCEc3hHZsushmNHn077zkk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=FC0kyTvw; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="FC0kyTvw"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A8135C116C6
	for <ddprobe@lists.linux.dev>; Mon,  1 Dec 2025 22:52:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1764629573;
	bh=TLQy06pLY9FczL7TwhRqH2cR6Ydueh2c9x0JUGJwYRs=;
	h=To:Subject:From:Date:From;
	b=FC0kyTvw9wmP9RZlG8xKqD36ygcEFAW+Ku+2G4BHo+29Trk2kOM2XqokI/8AA7tXG
	 YDPwEebYlHBoI2wQlF9KXMlS9tMD5ZrfH1NuiqeAM7r8qt7IQS40LIW76lM9aMn1/M
	 ZAzJID/ttfx7zeoiZxAo23o4Y+DS1VC0LCd77v3S4lU+ScDCZa4Wgki4qDVfP1RjkP
	 m8bHvdNqzpokyQ84q9TfNDIaasyibZelUYSXf8+Vutkwf+b2Z6wuOWEVVqWgPpffX3
	 ugcf9kGymfvvyMxIAl6UhmMs9odAh3ADnx2uaeAxEdjk0c3Xc29vfDLdy7w6NBqCwB
	 PskaB9cn0BTfg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 96C58D116F1
	for <ddprobe@lists.linux.dev>; Mon,  1 Dec 2025 22:52:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176462957360.1826.12636042162991494102.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: bb0cff5923f6db195a04706a85bbc2d993a0f9a8dbb07cf33232046eb1fa07d6
Date: Mon, 01 Dec 2025 22:52:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1764629573
