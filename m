Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5DAA5394
	for <ddprobe@lists.linux.dev>; Fri, 21 Jun 2024 00:30:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1718929823; cv=none; b=p0xNbq+E5gGQR8oqCtARa15GwSb50JtEgVF4b/2Zr24Q/LDunHDxMzgGraciei7EtbX93TYYdfCo7lhMZ0o3R1zSXutT4JJVqcP1TqGTZaaUzqmxX44Rrrlyc5G0DkFBp4bduyOXR8fuBAQwfJo4pse610/IieJ0A/cSCf5adAU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1718929823; c=relaxed/simple;
	bh=ECRZ2zYeFQS8cW0l9EYFkjY5Juh1v7PBmG77OqQSxyk=;
	h=To:Subject:From:Message-Id:Date; b=RvaWctXI0yKhqbEyMEJXR8xcgy4RZZ0w666wky/irhf+zUUuAM3/GlQFPZFsMOVSYazLj1b9Lan0Hw24hJGmlW25IltFj0GJY+S4juocw0TqUjq0c0Zh/9DItsn4iizi7YTaRcYDB4l8twuvKaKxw7ySKALSljZaoTN8Hf7u+GA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=MeWmYbxo; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="MeWmYbxo"
Received: by smtp.kernel.org (Postfix) with ESMTPS id E61D3C32781
	for <ddprobe@lists.linux.dev>; Fri, 21 Jun 2024 00:30:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1718929822;
	bh=ECRZ2zYeFQS8cW0l9EYFkjY5Juh1v7PBmG77OqQSxyk=;
	h=To:Subject:From:Date:From;
	b=MeWmYbxoqems4c/ytkKZQ8AgGiOpv3qzagqI1aRH1kOKr0kWZ3MhIEtqeF5DwDb8S
	 xktOoBelh8YXrm9pvxq+2kQIx1Jhob3t7KaKSE1cMcqIZyIrsGsVBu7hFSiHXv1Uzu
	 qNthprhJsI0ZAqRsM8kson5/h3tq12Sp77mLeRAXcHxGIgULr870b6DitK0G4Adudt
	 MQVms4OJuDxAytvQw03ueRyRKWzlErkaTKJHq2TDRdoQVM+in32R+Ll7Up4RKRsl4Y
	 PPqFrya8gwiCtfJQRGqSxQJlHZLXVn66pAu8Z1Vzm7oYJ+X7EtKnrpQGAND9hq0hFY
	 MVSES7jgQDtgg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id D2CEBC2BA18
	for <ddprobe@lists.linux.dev>; Fri, 21 Jun 2024 00:30:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171892982282.17944.14421676716617902717.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 17dfdb9e96aeda00cb1206183740262472c9b297997c723f6297521b91f2cc7e
Date: Fri, 21 Jun 2024 00:30:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1718929822
