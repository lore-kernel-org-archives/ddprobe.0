Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 432A118C31
	for <ddprobe@lists.linux.dev>; Fri, 31 Jan 2025 05:35:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1738301754; cv=none; b=K6/xoQvJfdMyB4T5dvsKIVzw4daXHzgvAb1/3f7CL15EorkKib8FXolXUKAT/zI4e3lgNmOFcfaCi46nwqHJ9s1CiQvdt/ic7S1fiXsFlZ1DOeZdP1usAFpA0hgxITJr23pkd6scf/rwNQiV0IzNbJvbpY8mKAIW55JsWRraEiM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1738301754; c=relaxed/simple;
	bh=Pa8KExjY+pkFiQxRJbgRmmcxMqzVtouOcgl0bk2nImw=;
	h=To:Subject:From:Message-Id:Date; b=fmI61aSQrOypoaxaUwlK2m2PC+7ZolT8MQEJNOozs3fGS+lbFmeL1A8ts2PSUuOcqvDZ/TDH9s3H1mGAhBfpGOPaKFF1quX47rrp9fVWXPTQ4uLZoZw+JeVRkonWpUNir9gHOnwFIFAetEgeX5OnBYaF18vKpzh+I/H7FM5ZoLo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=CQKTBKLC; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="CQKTBKLC"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AFC94C4CED1
	for <ddprobe@lists.linux.dev>; Fri, 31 Jan 2025 05:35:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1738301753;
	bh=Pa8KExjY+pkFiQxRJbgRmmcxMqzVtouOcgl0bk2nImw=;
	h=To:Subject:From:Date:From;
	b=CQKTBKLCOLC6sYqiMwRFVR273MZLKpM9AKk6tt1q8CNJdVBGdje1SNzM0qNAzv3kT
	 RZv377EbhSkp68QupXLPVyAwcumJtOvo3TM9b2G1hVFvG2EMmtzL/RfmmxlpY2kf6O
	 cCgZN/hhl654q5x3ArCKhI2M1wjXar/ymgdKCxTEsiW81kl5c1rCbUE54ykej/5e4s
	 tNUjVvjA/S3VWIdmGWf7FNHQJ3lkrzLdmrolka7kVtVeLapO6EogHcqNmzTViN4Zmp
	 azv4WyUcL7oxzg40CLzjcdXNHelNJSD/4ml3xEbGod7g+rc7g2PhJA0tKbcaWcIE76
	 tRRRmAVR08B1A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9D782C02190
	for <ddprobe@lists.linux.dev>; Fri, 31 Jan 2025 05:35:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173830175361.14897.4428641104212511132.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 52eee3c5ec02d1cfbe53355723a2eb2a15c770247fae37120702cd7b5a313817
Date: Fri, 31 Jan 2025 05:35:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1738301753
