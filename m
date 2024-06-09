Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6F01C360
	for <ddprobe@lists.linux.dev>; Sun,  9 Jun 2024 01:17:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1717895843; cv=none; b=QYbPTQ8EtMTDJ9G1qUxg86X7HFHz+A4VP0fws0kSv2B8pfuhR/ka9t3dX9klWWfskaUPveD0kRbnn2nIJcPfeFlbFgARbSr2EnrFRNAxTqnxObqQjaNWv0jqzP96+pnZnYbid8pRLepOik/pR+RDbuanhxnu4XidIFz03IZKcDk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1717895843; c=relaxed/simple;
	bh=TTp7ocghC8OAZagVjulm/15Y1BZeMG+e2NbJwifFQew=;
	h=To:Subject:From:Message-Id:Date; b=LT4lO1n5M4mUuFRCXwHB4YCkG1ZdM4gMayP09e/blEWtz21uqMsT0Vew5uxWaFmsNOgy3OZqPmmAbNd+ObHQAuiWiyMUvTVs5UJq7iPsW9x5danKnEr88WENqNtHt7GlJDk0pIMkWout9D5sBPz6sCQVL59EFTixeT8GbKLzfNM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=aiNe8HZJ; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="aiNe8HZJ"
Received: by smtp.kernel.org (Postfix) with ESMTPS id E5E91C2BD11
	for <ddprobe@lists.linux.dev>; Sun,  9 Jun 2024 01:17:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1717895842;
	bh=TTp7ocghC8OAZagVjulm/15Y1BZeMG+e2NbJwifFQew=;
	h=To:Subject:From:Date:From;
	b=aiNe8HZJfGGVTLeOezciyr+m/k13Zm1uaXpFiv6XgnmMG6fJZqzLbWRYzs7+mTrgp
	 +cgUaxvIwCfd9McvY+adU5zt5WBElMr5tkHvOW1zn5WcZzWy3OXg1BWEVdNIpegWQu
	 xmoNr8qXOSvwCplADEXPB/nFA1/QRgV28siYYpkGhZvNUgwIEFYw2CFiMKxFEqVqt8
	 82T/qKQR2yqjno5S1h5Bava0J2AWIZUF2+5zjH+v0zYafTf4GtRdfaNQjOlnM4xmlX
	 8GpFxjrv4r76cWEkHh2AmmYevvzXHMPwEwklrMPggZJEaeo9OxgDkQpCypuT1Hcpge
	 94q3IpBVbiaIw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id CC420C25B76
	for <ddprobe@lists.linux.dev>; Sun,  9 Jun 2024 01:17:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171789584280.22408.10984303318350824548.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: a1840f6cae3d0769798d6af7a287bf9a4c98e529690213519b0c385fd36ae093
Date: Sun, 09 Jun 2024 01:17:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1717895842
