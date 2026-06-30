Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2114919DF4F
	for <ddprobe@lists.linux.dev>; Tue, 30 Jun 2026 18:48:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1782845314; cv=none; b=Ob1GpJ0nhlIJGAW7ejbuD2AmUagxn1J+kxj5IRn0hKTNiIE/6+phRjHRcMOstCrL6REITuUyHSBR0fTt8QlbSshyERtsy+UpJD7zMQwWuk6Gnl1ip6JqPjTbr9vwDew45jk++qnC5h/eILaCRXOmvANbSrmge7TmCAsZJzrWCUk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1782845314; c=relaxed/simple;
	bh=nI8DW58vs5xFHtMwqEM+0oeAVN+amUEKz5Ksm5j55H4=;
	h=To:Subject:From:Message-Id:Date; b=eHWoEXCKKxyt8MJN8ACamH4HBm95jYrYRbGTBKw8QUbokk+PYsIwC1+qPd1vrmJ7J8Y1YNrKCiPuPp4ZP+kCk4VAAlUHw1gOiXtyL4sQSbVt622TDG9RSgyT4F0meu23cen6Pt6X15mkev95oOVIO3afwsxAxEzCI/ePDLimMdU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=mORF15Cr; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="mORF15Cr"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C5201C2BCB9
	for <ddprobe@lists.linux.dev>; Tue, 30 Jun 2026 18:48:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1782845313;
	bh=nI8DW58vs5xFHtMwqEM+0oeAVN+amUEKz5Ksm5j55H4=;
	h=To:Subject:From:Date:From;
	b=mORF15CrcwTWmx0iF+tdil/bB+6ZSZWpMPViIWVb7P6L5NAB1n3bWFjx0/fPBpKK7
	 KCVkG2SklrHeB9gs/0cJyxKSnxYJ1XC23q5FlcHmRlh6/9wdjlbZitRwQEuUdyQHsB
	 Owtg+AZT2mgjALKMPfeDvy4tnH3eXznPi9KPBwsKK24eL/uVkYIHgOL1xYH10LUwSk
	 icgSfVHescMRuV4ET8pTqJD+2cJ1+EWaEU3sESG0HFxKDRCFkwsCrrRxDkEi4pZ2pb
	 F78GrC6tNzoz0FHG5C2rguwy/iQ4Va+sx+w+wjZGrfg90jo3OwcP/qrlBNUbfimOld
	 9qdzoEsknoSjw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AB5CEC43458
	for <ddprobe@lists.linux.dev>; Tue, 30 Jun 2026 18:48:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178284531369.29317.12652201247546052649.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: d4ae8853c3890ad2961b68526f802d0b9ee418612b23adab757ece0109b250c1
Date: Tue, 30 Jun 2026 18:48:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1782845313
