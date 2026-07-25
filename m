Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5A61F1B4156
	for <ddprobe@lists.linux.dev>; Sat, 25 Jul 2026 13:30:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1784986234; cv=none; b=KZXm7eh2oSZ7COhCizDoh7h98jZFD0MKfnJA1P5KApINM9UBg6OVIlss6Rlt8egOyQk2PzIsS7yMlNzc7IuJk93orA4pLyAb+ATOw23SmPHjbSauR9voJASy8t2fhKtSIGxDU9hTOsK5EEovV2J7TN89ZF0FgHVFA74u2O3iB9k=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1784986234; c=relaxed/simple;
	bh=M/d7rvFWlfujnllE977JvWMLpmiS6EXuQnNCBf4g/lo=;
	h=To:Subject:From:Message-Id:Date; b=T9wMTwhdxDukGz0jGfZ80RS1UZCQCsux1/rb42A4ByewEdC7dnWz6qA3ObfEF8rW3DFtduJtW/3VlfBon2uBDYdHD5NjJDDNM/OP+GBgqELVyJBbsZj3EB6jnyKyIJ2bgKlGcEu/q4yj9kPwoFBDkfZYcALDrEXEAL4NeJHuReI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=MQGJCgv6; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="MQGJCgv6"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CEE1FC2BCB8
	for <ddprobe@lists.linux.dev>; Sat, 25 Jul 2026 13:30:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1784986233;
	bh=M/d7rvFWlfujnllE977JvWMLpmiS6EXuQnNCBf4g/lo=;
	h=To:Subject:From:Date:From;
	b=MQGJCgv6na2Jav55rkfdUQ5DIuhzRFCpM2/IGU9Q/KHtkRGNpUpdgjs1Hk5MO2xRy
	 YHzJDaNdvs1kZ0u9tKNauvFt3HVTRwIBzzZX9RXyx+Ufq/FspQh1vfbw7hp4/9Tcwe
	 0lZOit3rlts8uqpNUuerjk0tSJJHpcPByAvnVJrcWwlY4Vxefd9FScjRso8EDF4smB
	 N/KcEwSFS54ks7jPhksl4ftLWF3XfH5vzh46S4glOSFF7VttAkdNe+DGMh7iplHIRq
	 Ky4AH9JR7TdpTisIuWYuP2wxWdILevqFLmOK7z6uHi4+Bhhb1DufnaWDYzoSdwGoiD
	 IpJfAp3vbUvLw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AE2BCC531C9
	for <ddprobe@lists.linux.dev>; Sat, 25 Jul 2026 13:30:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178498623368.9649.694887196159078684.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 9a3440f638a4d33e74370e8198cdfd0e1271f5a26c18ec9a8d146baec1d60d8f
Date: Sat, 25 Jul 2026 13:30:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1784986233
