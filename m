Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5EF77346FBC
	for <ddprobe@lists.linux.dev>; Sat, 26 Sep 2026 12:00:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1790424034; cv=none; b=j7JIyrNjde3q5J0GzJs9j40eIoDTnT9woMFHmcxn3GvkCQDz2s+XUTalSZVzRz2VO0IG8GPNJlgl09CbscwxcLXXJcy5lBGMYhr/Sl2aN7GF8WrjO0RnrZagtofRkE4hrXzY9trAuwUTHXYWg5cJaw1uqnjIz3Jwq+VvyLLuTH0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1790424034; c=relaxed/simple;
	bh=jb5pd8F8wjzoi7AaSgukGDVVXCjUV2AgB5eiW/lllWs=;
	h=To:Subject:From:Message-Id:Date; b=GbdxFa3yDJkqc9mUrzM2449qRGGl8HNTKraP6rShEEnJj/g9cLnm74Tlv0iHK1QgO5WgJkfxQJhxzMvZRl3kpFycOADMG/4zeK0r+9kgw6DY5kNhllgOnuP/JTnolDjGPwxUffKYEXKhJv4BN0P3VmzkSW3uELxfp9kViMcI6jg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=IKGmzBgO; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="IKGmzBgO"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D2C47C2BCB8
	for <ddprobe@lists.linux.dev>; Sat, 26 Sep 2026 12:00:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1790424033;
	bh=jb5pd8F8wjzoi7AaSgukGDVVXCjUV2AgB5eiW/lllWs=;
	h=To:Subject:From:Date:From;
	b=IKGmzBgO1Et73BGTPOsKv+v9331yjeIcqJPYyX0c0itgSv2YYW+mmh6YyKl/zfmIM
	 cHIPIA3rNwpD+j3Yn3OIUueT99Y+4jonVxlhLg+OQ06RqADUZjS+7QO2CXBntqdTr0
	 FUhesXSCD23lsKnARfTvdO9j97ulLnaBHvXUniZs498+G/dOYs7TSqPVHoVLcM7Bpf
	 CPe+H97sIo9KCFIL4BBEZNuqKMAOEEccJxPNEG9trFaA4GuEUDorDYNlo7w2xNtVmz
	 2LnNJ40SPaw/BaR/0GsorsjT72uai2bLd2pj8YC1TYeq4EOO45/uTYMpd+uRocrg3S
	 d6Un1QoALm2fA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B0C33C98318
	for <ddprobe@lists.linux.dev>; Sat, 26 Sep 2026 12:00:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <179042403368.10904.13089072618544431361.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 1fe33f271e3685e4d4a2d27186416d0ab93a27e01b9577ac0160687a19f983e2
Date: Sat, 26 Sep 2026 12:00:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1790424033
