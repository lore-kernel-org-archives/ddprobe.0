Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2087C28EF
	for <ddprobe@lists.linux.dev>; Sun,  4 Aug 2024 02:45:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1722739554; cv=none; b=i46nwmJDxGyBRY4W4fCa+WeTSd1JEBTcYDcfdG8C0gdIOqk2grzAOuXqJ3apAXH2WsXpuU2wzYvv5EyULL2994pbevldz+xVTodxePszRKz1WT+eTPxphy0seHRXdbAAyRo7fsySmVI5Zx2KHUYYZWwPkV/xmYhT2gW3unlNJE4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1722739554; c=relaxed/simple;
	bh=ViLnUznTbKKGlbKaoy5P7FgRMzpjH4oFw4D6uulQnjg=;
	h=To:Subject:From:Message-Id:Date; b=scNMQDCkfnoYjBXZ2s5DeNc2IHfNpXo3tosQD/DBVEZA/N9LHEt74Aax+ONB860PaQobdh6owRQGX237/3FolrwWu9E/ZTtrfMUDFsrUOihB9rZaZq9j2sY3mmW5ZzycTvxrSiSMxDHYF6S2+AWpj08htLrlFZ8umLw4/2SG/B0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=GNr1u7lz; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="GNr1u7lz"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AD5ABC116B1
	for <ddprobe@lists.linux.dev>; Sun,  4 Aug 2024 02:45:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1722739553;
	bh=ViLnUznTbKKGlbKaoy5P7FgRMzpjH4oFw4D6uulQnjg=;
	h=To:Subject:From:Date:From;
	b=GNr1u7lzUJpci/QdWjwn3u4Ju62IsJHuUyeB1MoZlk0F1/yXUOirjHlhawJWcfr+V
	 bY7MnZQByIy2xlQNGwHZot/nkedsKPsGSDzfjs+YDdyo08cdtLRP0hHI9+euWVrDeI
	 Tz4KkOnGyKbgIA6FDJq3F35TkADMXwxvOGg3ACJBgyQT5utiltylxbyFEg2ZS28gDg
	 xzr7sDetMAvTtxjLWdzKB4MsyvgaWJrTdbLCSs05Ad6zmfyesZZ2/SzyvbdbScrnQO
	 uyAi1zrvPI6XqF4nST5WXJBTQ+s74iVhED8CTr81FuffGHpV/MdecoGNqslifRA/sW
	 b5rBCAhRqXNwQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 98BE8C3DA4A
	for <ddprobe@lists.linux.dev>; Sun,  4 Aug 2024 02:45:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172273955360.17677.13645606115961554919.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 1985ffb7da28371643525d2142b249119162402c17f3cd410f8df3cef72dc06c
Date: Sun, 04 Aug 2024 02:45:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1722739553
