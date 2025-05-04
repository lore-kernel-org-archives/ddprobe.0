Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4DEF215ECDF
	for <ddprobe@lists.linux.dev>; Sun,  4 May 2025 12:49:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1746362994; cv=none; b=WvN9WNoKSG5cba1LEE5rb4NdY0IvwyT70EshI3wDsrKHMZ9Wu8bjRJkzd85HACNSRF1nb54o/J9NbnAvvAkLweYTnv5t4r+5U1+SwfOPpp1uzfzSUO86oakyVSaGv1qcJPKdAifKNEeuBwNB/oyKYHuCS/SK6RyfT72GbL9Sy68=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1746362994; c=relaxed/simple;
	bh=eY5MeCjjMVwCuMAUUB2LMwM3EhiZgwKzuY0RqbtyQRE=;
	h=To:Subject:From:Message-Id:Date; b=ogfcubFJ2/IJyp5aLkZpt8gmIRxzE2GrxD2QmhKxiCD6Gfqn6c6kEtwPCM3FnUwlhT02l/le2WfEOvcSG5YPfrQCtHa6+LDwuLW2j21Re2cVScxHP+p4SIFBTqfSA0LzGmvfvI1vJc/BO4bt10tYKQ6hZCn3iINW38BA86FRneI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=S2pPB7Gn; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="S2pPB7Gn"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A6F15C4CEE7
	for <ddprobe@lists.linux.dev>; Sun,  4 May 2025 12:49:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1746362993;
	bh=eY5MeCjjMVwCuMAUUB2LMwM3EhiZgwKzuY0RqbtyQRE=;
	h=To:Subject:From:Date:From;
	b=S2pPB7Gn7VdRAFFchgdEu/CxcyXIb7/MTsS06UW+wc1zDDdpg7Ga+D8JFOxTahCZx
	 vEqPozh5ORy2GvXGbeARHsLZzxU4dzEHg232l6IiNd8InOj8TvHk+SULDXADjhSHrd
	 Wz7eoQn/2Y1HJk10Tl7NcROh+hfMndueLqBa9h0HKkmYXnqeo3XV6nBO4gDifcvZ3v
	 kGRILIXI9qUhOXL3knZbfnUIkZenBDacDxQTTOIEH8rlWRMrkf+3NAiMFTvKFkG84B
	 Y07KAR/NZTq5VwjDelmCzPqpB23qX9LXj2H8UBjVne16exg5jEwyIx1Zf3IASfisth
	 oUkmQpf9jcdhg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 946EDC369DC
	for <ddprobe@lists.linux.dev>; Sun,  4 May 2025 12:49:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174636299357.4690.9615163116756647073.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: ffa9ec41286a051659c73133041a8152eea0db31f444f15afe88eb03aca638a8
Date: Sun, 04 May 2025 12:49:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1746362993
