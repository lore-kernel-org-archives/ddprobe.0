Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id E506B357D13
	for <ddprobe@lists.linux.dev>; Tue, 12 May 2026 06:30:35 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1778567436; cv=none; b=evkBl4v7vlpilVOQ0gW9F51kKehOcVKoQIjpsgUu/218d+QlCiH8Dbao9P62Zm706sJTH5MMoFeXHdJWNCpg/xse7fMXhvgplXKlgDTu40KeO+eKIBI+cN5gkUsX27+9pmrZpavNVNKFh81j3GYpPhZt1ZdiVmQg2Rmtam2svJU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1778567436; c=relaxed/simple;
	bh=s8uGnszQDHteZ6quahv7SfeReku+FOPz00djl6gkCcM=;
	h=To:Subject:From:Message-Id:Date; b=RDkmwO+iRkgBED2winVKShFD2pyyyAC9pMSMPqET6gyv8pTg9dp2ShEjZXFJqesmK10Ww6ZOEvFOx0G3N4OSIpd708v9cLPzVYR/o0v0vG+FQAPGRlD26ET7XSV4u5SdeGgwE03GJjdk6b3POo3TMDBnhP6sHN8UTJmfkt50I5k=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Kosxh7JW; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Kosxh7JW"
Received: by smtp.kernel.org (Postfix) with ESMTPS id BC8B0C2BCB8
	for <ddprobe@lists.linux.dev>; Tue, 12 May 2026 06:30:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1778567433;
	bh=s8uGnszQDHteZ6quahv7SfeReku+FOPz00djl6gkCcM=;
	h=To:Subject:From:Date:From;
	b=Kosxh7JWyM+KV7jYU1tZNAyxOc4dJS2SiaffONO+ozXis+wCiD5xrNYTFL9A4/66T
	 9n24Wxd/caKM4ZleV/1QAVLV6l+iF6j5l8C3g+JuhfDdPxvhk7m/X81N2x9G7dL9Wz
	 yIXjvsSwYKjiAb9KFoHt9JF049ViRweqF5MZCw18amDLnbDkLjX1V2CnwqFNM9zqxB
	 sZv2o+lQOCTWPHziaq1JcZm8fnNas4MSy2ycaf8HUy2KcRaq3dkbKK3XDhCrz0czn7
	 KIRnoudDwxzThmdFSDjPKpsgQozU5B/9nmu/ddRgbtPx1+BlYEN+plvGJaVxs8rMhx
	 6vmvZWdckhb/w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AAD8ECD484E
	for <ddprobe@lists.linux.dev>; Tue, 12 May 2026 06:30:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177856743368.13173.4409217133697314974.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 0191eaf0f8680a8d4ab58e6f8ea63535f1c4fab964261700a7914757cc598164
Date: Tue, 12 May 2026 06:30:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1778567433
