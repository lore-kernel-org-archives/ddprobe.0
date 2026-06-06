Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 426C12C0F8C
	for <ddprobe@lists.linux.dev>; Sat,  6 Jun 2026 03:44:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1780717474; cv=none; b=tfc75oOwUO2Gw8azmWzz7qQV7538yclhP9kFzhQNw+gn0O0fvFrr1lh1Eryn0xCLbatZTCqw/KlkkTzz0FRM/m1opG+zbyOALsU52K95x+QgJ895hz9Ixdd3CnA8/BQMdVnfEdECiftGaMow98WAR8s0JZCX9/N+1y9en+tg50o=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1780717474; c=relaxed/simple;
	bh=BcEl4dhaPRID40mtI4t1KcFoQqFp/nnFrmtCSN3JQ9o=;
	h=To:Subject:From:Message-Id:Date; b=rN7spa3L+bB1GlNyrgxUNqy+/UlG3zS4KWnh+wr9B1aN7+ZHyC6eUgrgKYPHpDx1IWZU1pwlNWZ9zvQ90iC+ow6/FhEJzl+Z8n3cYIgoXXt4p1PH9QPSZ/5MgE19IhvVTX8XL9cImx5CbXpMUImOy78GHTrShn5OzhYaN1C9FW0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=jIjAgh3O; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="jIjAgh3O"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D94F2C2BCB0
	for <ddprobe@lists.linux.dev>; Sat,  6 Jun 2026 03:44:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1780717473;
	bh=BcEl4dhaPRID40mtI4t1KcFoQqFp/nnFrmtCSN3JQ9o=;
	h=To:Subject:From:Date:From;
	b=jIjAgh3O2lPQzKMrv0569kIK6o57cM7Tu0tL+ZndySzBAyufmtoA6Xd7/+mRpdqbz
	 AVGL5unX76PKXOUlPzOO0lhQh4VuneiiQ5Q5DwXf0W3Xp0KO8s3IZp2ikpJ1fGht75
	 cxvQ8Su4BYOaPHCYRN25TJ7UOekzQACHe85ntDDHr2JyZQidOyYZQSoHE7MevitWAM
	 iCtBdrGTzmE9EPG7WSo5+fmlbLog1osM2dYLffd308OgOULwUfQdpkfjJaG3srnUVQ
	 DcyB7DnoEAwi2GqiX2G6db1lA1lEf8Vu4J9wrPzxpz0b/lHl1GRt9u/uNssrV5it15
	 iXjzWRLCzh4ug==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id BE7DCCD6E75
	for <ddprobe@lists.linux.dev>; Sat,  6 Jun 2026 03:44:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178071747374.12065.11659931321445085310.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 59258779d7a1c3308c57319e6cf763085d50c564d88325102f952f667cef3555
Date: Sat, 06 Jun 2026 03:44:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1780717473
