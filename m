Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2D88C2030A
	for <ddprobe@lists.linux.dev>; Sun, 27 Jul 2025 14:19:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1753625994; cv=none; b=p/HBaWZwWNJXwHY8H6Fbi1Ou7r5zsC12J1zhiBGHbdUNt9W201yuhz7o5GM9ndWnb1ccFpdS7q0i7l1Nnfis73XEE3PhXSIKKbZ2VKYYS+HfC8prlYLa86VsGYn3FsRmlB/d2Ul2+kRPe5fCrdfhHpOs8Vpuwcyfif/xA9SgsBs=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1753625994; c=relaxed/simple;
	bh=0vDilGIQIuSMgS1UNZTr1XaZr+JCiw2/rApnWWDSV00=;
	h=To:Subject:From:Message-Id:Date; b=QUs7adz9iSmJpP/9CYohwrSAP08k4lOnsQS/RIUlWA05NJ4U3Si7oVvspgVJJD+A7jqfD+JCISrlMsJSuX3AmESwSaTJf1gpCzhAkOKGfNicHVII2gJnv54iKIDSA7Q6PB4a29T+6+wF9R8HYqTkEAWkrCJFcDl9gByMWTAZgRk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=L0EW7wQj; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="L0EW7wQj"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A240EC4CEEB
	for <ddprobe@lists.linux.dev>; Sun, 27 Jul 2025 14:19:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1753625993;
	bh=0vDilGIQIuSMgS1UNZTr1XaZr+JCiw2/rApnWWDSV00=;
	h=To:Subject:From:Date:From;
	b=L0EW7wQjLFwl+wsd9Ea8ifmSHaBrA94zVf1l0YEZAwTO61YxNwOyseDk/36xh30mq
	 DXZee7uhr/pJZgiXf3EH6+ofWKZd0iO1pwaDMAE6RdYJ0w9UYxcsuyr9GunTWo1g5w
	 /QX2Zi/NKQt/Q5iolpEfUUjkKdYy0zDSylGEljE+wxjRA4tq3Lcp/6kYYQiwbDh1rr
	 DY7PCoZWz4/A+JLSdoCy7pW5ojsXfm7f/uegrVUXK6vks+CDaXUPbr75XyMPg9xsn3
	 DsSSGearIzeffEBN1VfZdBWRam/qMoKelFjcIRje3bn+6ajhU2Fm2//h1w7Bzb7JLR
	 muul8lxDn5s7w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 90E65C87FCE
	for <ddprobe@lists.linux.dev>; Sun, 27 Jul 2025 14:19:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175362599358.17968.2856772368313464294.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 0c6868198a8f35ae943fdb017640c1372ee8667404842786032da277ae60f39c
Date: Sun, 27 Jul 2025 14:19:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1753625993
