Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 9778C241F6
	for <ddprobe@lists.linux.dev>; Thu, 18 Jan 2024 15:28:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1705591696; cv=none; b=KPprnWiQvU/ForeXuApnmi5iJiAkV/5jQWKd2+iqHHEyywVSsTO/g5HpCPNCV9lCOmO8bE1eBs/i3FK96iV0R8TlRSN8WksKSqd81tiZbYIHHLBHnVPbmBWpZ+qDxavXYT60/DU4/wuaCvk6WImP+Cjr94iICdindvt5cd+6L98=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1705591696; c=relaxed/simple;
	bh=pbUlxPvqv8M6yE5Vj9btVO7XjGvu4QBrJNixS2TyxRU=;
	h=Received:DKIM-Signature:Received:To:Subject:From:Message-Id:
	 X-Rtt-Probe-Hmac:Date; b=I1RvRoc1/T2z53unSlY0TMrFY04uH1kBumLQql7Cp7rDB9s9ffqAnCKsmzLguGEN262MgPhhiWOSBJCyy4YsJX0fZxKwxRhFyNxBkki2eoRvc5uC7lPBbB+14D0KwfqYJF9TrjlgdIyQiU0jlZ9HxyMRygVt2ZBOk1P8dQQtbaM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=iHUiSueF; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="iHUiSueF"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 6F278C43390
	for <ddprobe@lists.linux.dev>; Thu, 18 Jan 2024 15:28:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1705591696;
	bh=pbUlxPvqv8M6yE5Vj9btVO7XjGvu4QBrJNixS2TyxRU=;
	h=To:Subject:From:Date:From;
	b=iHUiSueFNHLkJCO0o9F8kGaum3BPl6UmiEfhhKlCFdSiSg/NncHjpYlBh8uodigv4
	 CTFSfx4H7dVtCtrGaAKheJ2q30ve/dLneXOUpcs+U2hA4jIfd85zg9MVBrQcrkdBFx
	 3IZGo+vza9rn+w1oszkEggL3fmJYV0pt8O4Nq4o8S3IEMYXH21qQ9TuBlyM06qJhDb
	 7/3mOXORueS+rBzS6Spn5y8rye0NCBQo3bPDKvWGX3ofR0nmBhDrrdaS4ni3Yly3A0
	 k3HTqnF91IRiMC4OE4cbhYPk+0hJkziEcSuJZpzuhnFcF7Dl9PRflhIs5OHKAxIi9x
	 5ChvkfVDQQmgg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 5BF5CC47DAF
	for <ddprobe@lists.linux.dev>; Thu, 18 Jan 2024 15:28:16 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <170559169636.10954.15267156083782401014.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 70f2df1f5b76a56798066f2cc184883f4e7ff1b1ef2783cb1c1e6cbc316c7240
Date: Thu, 18 Jan 2024 15:28:16 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1705591696
