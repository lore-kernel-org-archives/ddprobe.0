Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1E25D19D08F
	for <ddprobe@lists.linux.dev>; Thu,  2 Apr 2026 01:15:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1775092534; cv=none; b=g3CH/mtftpaKHeFzFicShfEVViEp+NiM6SKywPCqnbCzs6VrnrGy/fHoSC6oA7swFghKn5Zn8QInBFuz020t/TV0GHZALqWQWakjj7TCJ0M/AjNFRbSqTu6hSnCGFKReV0ITTW0lA3Fp+J5uZ9bfk3dfjnVKfbWzHJdIRimHstM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1775092534; c=relaxed/simple;
	bh=c0awSU+EWadU980YQV0wE503X+4621KkS6a4LDLsq44=;
	h=To:Subject:From:Message-Id:Date; b=huEPoLjah9jvTg3mV2OnLnIHqMDXu1U8X42Dq0AVPoanJyYF18339DjGW0taxFb1k5AryBCnvYUhslqXVGFKDq8Qv3UgrMzOCepBrzQovP5qKJ4QbSEPrms7iLwh2rl5H/9hBfrgUX5UWi2FQ5rNi9Fek1d/IaqKFukVRCUNwpg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=NxlBw4/D; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="NxlBw4/D"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C55F1C4CEF7
	for <ddprobe@lists.linux.dev>; Thu,  2 Apr 2026 01:15:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1775092533;
	bh=c0awSU+EWadU980YQV0wE503X+4621KkS6a4LDLsq44=;
	h=To:Subject:From:Date:From;
	b=NxlBw4/DrL4iiM7ycI8FRjwQd7oVis2tmTOqquusotmJYR38edOH+aUpQYV8nXFQz
	 w0qNReEikkkGU8MaUUcHi9hN6rA1lXKA3zgcNqjGkLSIVxry/TvI7AfDrqmUWoTzMY
	 3ZywwdFByMrClmN9GgjSKdRGy/YGGN3QH24LCquCPLeQ6O5eG/LOZyTWlgUuRmFb9Z
	 ayqBrXCoq1+zS15oKp3egQHGn7SDX32YIOUTeIB1Yeqn7Xy3irSUMETFYgmFhQaCVy
	 I3fAo8HmqrzHwZ5Qw4OaxG3YITMXPWd4Ius3Q5+5ALIa6UVcQ+RIMg0kzyVLdMOgYz
	 tZT++Tizg/Aig==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B0581111224B
	for <ddprobe@lists.linux.dev>; Thu,  2 Apr 2026 01:15:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177509253371.17929.9373584641040749186.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 8457712e012b37d6d650ab025d4c7d4c238a0af3eb52e076599bb4530205d3ec
Date: Thu, 02 Apr 2026 01:15:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1775092533
