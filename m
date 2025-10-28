Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4972F3019DC
	for <ddprobe@lists.linux.dev>; Tue, 28 Oct 2025 10:09:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1761646194; cv=none; b=PWhBf8LAJNMqIq0rk3VtkaG6XFVGRfP4pVWht/0bk+tYLoXnjC8F5U8mhSUET70qMaVLBBQ3FqbQITVxHvCVUnQoeW2qZjCwH1w9s3AoT99+zbEA3rX345E7nzATsCXhHG4BxwGGNI0hIHcQKQc9FmqNszAELtpM1qTlLDbfKQk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1761646194; c=relaxed/simple;
	bh=UwhlnMVxZdBsdTsJTDXQHaFRR/NWlkSOWlh7z38g90Q=;
	h=To:Subject:From:Message-Id:Date; b=ZaZH7ZlJrMMI7zOPpGBvAj8gOa1rnwb+4zzI193e4nVbPbq4ZypaERbxCyAJvW85QlMdEmT1ZflZ5GQj4ZxNOYw6nvB9Hi5v9N2WPjRUtmw4H8zEngfOCRbmZuC3XMoYS11fr69qK4CBwRJ0EdYfaukbfnSkwlJEC/ktelfKSU4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=q79/vrTJ; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="q79/vrTJ"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A39E9C4CEE7
	for <ddprobe@lists.linux.dev>; Tue, 28 Oct 2025 10:09:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1761646193;
	bh=UwhlnMVxZdBsdTsJTDXQHaFRR/NWlkSOWlh7z38g90Q=;
	h=To:Subject:From:Date:From;
	b=q79/vrTJZLrAitBldp03Q7THwLNHruBWghVxRRb51cqPB4wKiSlFn1N3kTA5YAI5S
	 jP/90bbycmwZUpbircbAuzJ236LoKvDysiLiqNGLcwFGdGHaj4T+jMy8n0y7ZI8mQH
	 0Jr80JZwTayclwc7pxHLh4fhWdvKAl0+uoCED0lMiz0UAQgDTsh9Gz3LwAALD1BSRZ
	 hL2HOTyggldGiqSAr8d4S6nHO8kwQF4SXAN0k/H2ES0sJk1g+NSprfZTQ3QsntXF69
	 0h2wiIfEyDv6glqP/rwSvDdEpEvCMUtG5W7pXGBtYZxe0RZVpv8f2c1UOxP2drfQPN
	 S8YhFsG6HsIAw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 93583CCF9EE
	for <ddprobe@lists.linux.dev>; Tue, 28 Oct 2025 10:09:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176164619359.20765.15264095254459598657.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 06ed2f97deb5258b7f028ee881cf1ebc698fcd945c9678ae58274a7a8b60d413
Date: Tue, 28 Oct 2025 10:09:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1761646193
