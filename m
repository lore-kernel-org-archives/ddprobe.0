Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id E8A2E186615
	for <ddprobe@lists.linux.dev>; Tue, 24 Dec 2024 07:55:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1735026954; cv=none; b=uxWRHEfOPhiT3xqxDVng7+NnzXdBTvDOGhmawzrDaftPEXBrCZLs5/rJiF7zwn5aST3LJ1CoYM/foqT6gDRLeP6dpUpgeZ4CS6B8FcOaNaHbczrOvKiY1irmFfc4Qr7MsCn+k7RB+lfoc/iO34EmYQ8zlnq5t3dqYLwlojqIpUQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1735026954; c=relaxed/simple;
	bh=/HQItBi6uTbP25cIoYNV6rCQ5qwZvJBOnNjNk/MFD7Y=;
	h=To:Subject:From:Message-Id:Date; b=iN8e+hQ5zLFh5hXGTFUT5+OFHZzGiIKzhBH2mxFDSj3/aSkT2ZD7UU0BWHWosqsHdMOunphTVTngO3stjYhEJfzit8FEEcg5bGSrGWPchJ5GA1bZaV6BZK9ivGyTpxsZ0DNsY9dIO0Y3tMg56wwRguhJ9I2WJkDe6daNR3XW87w=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=oU2FfOCM; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="oU2FfOCM"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AF44EC4CED0
	for <ddprobe@lists.linux.dev>; Tue, 24 Dec 2024 07:55:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1735026953;
	bh=/HQItBi6uTbP25cIoYNV6rCQ5qwZvJBOnNjNk/MFD7Y=;
	h=To:Subject:From:Date:From;
	b=oU2FfOCMGbbCAZZE7cMshqQ2UdlG6pzHeMOh66+X1VOdg0QJ6RQEuKMhYZfy4hLzm
	 kO09ksYUCatGZEX5ufcY1mFZeZLCeZqXx939Z473PGZaDdjIeUWbWqKv5JG/NLWkF7
	 qm0AkYkCQuDWj+e63R85HcJgPixO/LSzI1gew0aWRGk4y47nG+R8+qoZC9/k4T2Vkb
	 +nZoc5r4l6mNC7TiyKoOU75yHRccIqxFriD4820O9gbvnW6hE6kNmSRK61WLRqqJk4
	 /oRNGZ2JkT5863isK1aqPMxAzH2vpkrCBl0gGelGdbe94Pl5feK2OGrdGy2gGGg8nE
	 dAEbq0hF244Ow==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 98B32E77188
	for <ddprobe@lists.linux.dev>; Tue, 24 Dec 2024 07:55:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173502695360.24657.17767705724044449086.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 5b89b2d78ae8a4903fe731df75ea4646c2695b8506403d37f87e0edc407ec5aa
Date: Tue, 24 Dec 2024 07:55:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1735026953
