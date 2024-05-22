Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6D72F175A6
	for <ddprobe@lists.linux.dev>; Wed, 22 May 2024 01:53:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1716342803; cv=none; b=CsuIBsOVFpDjVy33tpTwZZrRDX+Z5zS7e/ALIRJhFciLDa3eWIevzxseFlH2m3Y0+VgqXfNIAyjfGW184a7xAWTQGnoQF33Yr4vgaQmQzRxA0UztQ6oSBiUKp6kQesfhTzKz4PkOdPA0xekPQr0o4kCxKiFtjvORWZamqvsSE60=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1716342803; c=relaxed/simple;
	bh=DrmwTLS4Yrbv6YseKlY6SgX0/jB/03R21hWVRDIKS18=;
	h=To:Subject:From:Message-Id:Date; b=VF7/Y0dwk2r3W6QaoysFxU79/mPKW/wEXaPTzqjvnKxx3vlJD3tSvQsrgKGIh9HPz9K8HKO/7A3JQiHHxrOl6KAG+6hfqfTWGsZcoyuCqexI8pfITYfXRTmf2SkQXymsfk66umQGeuBoLZWtM0sYeiGJxL5/Vp9S363PKEJZtwY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=j+cDypOi; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="j+cDypOi"
Received: by smtp.kernel.org (Postfix) with ESMTPS id E4512C2BD11
	for <ddprobe@lists.linux.dev>; Wed, 22 May 2024 01:53:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1716342802;
	bh=DrmwTLS4Yrbv6YseKlY6SgX0/jB/03R21hWVRDIKS18=;
	h=To:Subject:From:Date:From;
	b=j+cDypOiCsP5x0+iUJd4Fk8pA9aCa4NGzTpcpzhiaJ0iHxNEA5N6twE1lGgol5ntD
	 Rpf59rN2evMNO0DDSEu8qTtjm3CFTIqKmzeRTqbJ49Bec/7m+yCnEcuPga9WPprrHw
	 K2YHx5cUk2IlfPAqHE9PUXaO6nWyIdqeeW/KfXxtSAwkF56RKrCUI11IgWOyoy/+2a
	 NTAPLBJDHtf+9dLjJICWtyDlqnl0aPvBkrp+a+ctTMva67yKRerZ1D6qbOYsTPWbzw
	 SS256wAJivqiVi6ip2ROwFCH+BvnUez2wicooPOx5D8PXifbSA4Pm/bEU9tbboC3Mu
	 3Ts+Gg89TwV3g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C5E7AC25B74
	for <ddprobe@lists.linux.dev>; Wed, 22 May 2024 01:53:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171634280280.14779.10983160034808473916.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: a6cbaf280cbf783ec7484a14a4c46c0fca6b2de09bd1d5d1db1a467449ef86d7
Date: Wed, 22 May 2024 01:53:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1716342802
