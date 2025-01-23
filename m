Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2DC7B20B215
	for <ddprobe@lists.linux.dev>; Thu, 23 Jan 2025 07:55:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1737618954; cv=none; b=MKilHE64oMKxJ93zxj+p0LV9HLABRQjjiyNM3EZLYRnfoBFkKoE+t/HVtqb+CxFA+//03OUBp4YvINB0nXB/WWu9nFX7GqLNzPY5L1cb65N4upnfVZNPbNBb0dbyDVqh+EeW7chRefKl4FqADNqOaan2h5y9sF9poUMnm1SpM2I=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1737618954; c=relaxed/simple;
	bh=cHrGxB4mlbbjXRVYGgW8GaPUPgTTxezMhclsyBX3ZDw=;
	h=To:Subject:From:Message-Id:Date; b=iQrRE6RShBIGbvNrmuo7K8QRFB1Cejy4fbMeDKjZKn2Ku9qiTRdQ+Q0vfXhsaESe1UNxb9r4kToLLwok5PSSv9XlacZO++D37gNuG4XgT46uwOaExP4IGOCyj4QYOSe9Nr+ZV/VmdnzviZ8wRgg9D0B5yVuoAfylWR9Scf2Yq9g=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=pm+hp/iR; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="pm+hp/iR"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A603EC4CED3
	for <ddprobe@lists.linux.dev>; Thu, 23 Jan 2025 07:55:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1737618953;
	bh=cHrGxB4mlbbjXRVYGgW8GaPUPgTTxezMhclsyBX3ZDw=;
	h=To:Subject:From:Date:From;
	b=pm+hp/iRthyp0va8pr3TcZTdw/dBdZEu7PYvVDJBT24uUBvZk57nU8fhByCiolcdR
	 yTVH+Ke8g8hH473qFfomWIBvm1tUxqi9GXcq4p9qRI8Dv8KRXQbHICz2sQscSlQtmc
	 Na+7toS2z7hu/98xUzA37MzvOE2THLA8jhn081sKECu1ftSdXTl0iG3LAGvkK3h0vl
	 QeNKo/zf8FUW7+0RJlibR6vaE1CML1mDxyo0jqpDuMCXlkhrRco61IFS1gnoIkWzsJ
	 mJwL8QRr+g/AZI7t8IAKxbWJjzcDSS64dkN+Cy1qnSYI2hHfhStFzAZCg7KeaAS+oR
	 fwhSqdOhXo7Gg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 98780C02182
	for <ddprobe@lists.linux.dev>; Thu, 23 Jan 2025 07:55:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173761895361.18201.10374509413767269288.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 04c53427445c52e7a21fdb91903ec3cd0003df683d8e9a0f8c535eea2d4793b7
Date: Thu, 23 Jan 2025 07:55:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1737618953
