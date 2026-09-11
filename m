Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4065B2F7EFC
	for <ddprobe@lists.linux.dev>; Fri, 11 Sep 2026 06:20:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1789107634; cv=none; b=TGciMp4nAApUtMZrT4Wx580IEzhtBZJio4CxpMriNKaEK+03O89OIOmkCYpCIbCGtvYCpbnS24NIGkzzjxTGa7h4EgH58T9Q9UVFxSkeqoExLAzcf6TecQcnLidfThSHHZp3oodnYmE/UW3SM+AobBb0t0UNrpe+Wno865hl3Yc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1789107634; c=relaxed/simple;
	bh=CZy37mJ7kaxucKUFtXC8O3fQqpoBkXTF2U7IaMs4UlQ=;
	h=To:Subject:From:Message-Id:Date; b=OyQ5KjkLRxEMYHraOGRwea2I7y0SLqkRV02ARqxRXYHN++X5BeHv7+7U+lRn8RaP1LTRSw62BMpzdHdIjtruvZM6zfWrA2jpqfsJ6gfNCIv77Wgx4JF1HmhhEQhwZ4jrpNeRIQt8sLSS2ES0xmLrogv7P08TJB9QT2YYeUCGUwk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=QFL+Iulf; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="QFL+Iulf"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D10A5C2BCB8
	for <ddprobe@lists.linux.dev>; Fri, 11 Sep 2026 06:20:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1789107633;
	bh=CZy37mJ7kaxucKUFtXC8O3fQqpoBkXTF2U7IaMs4UlQ=;
	h=To:Subject:From:Date:From;
	b=QFL+IulfZ0pcAvTwqYCKZKM98+VyTT8/oHmuSRWfJVkfTwOB/GE7AHrfvV3+v/pkS
	 hh+GZN4u0htCIG+kIWWKoR/PZpuVNy5SBRY+wWh7xSj92C9BbxSA6H+JqdchWTL8O1
	 NXuNFAkAxVHUEydG3dcJEAXYlO2rNUws/gCaGUH0eD357s1hhA+HalOpNz+a1aAb54
	 4maHLxkJ6r7p/ZpYhkbqb5vgRC2z/pwkSIw5mYzr3/2hrzz1uflk/Abm9FBHtLoy2n
	 Sl2dW39iwgREF94TqE5NZ5wYSrFyUFSDGscp7ZdbpyWiXeC6S1mMzr297h+n0HOZT2
	 PfRXzQulgUBHA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AC6BAC79FA1
	for <ddprobe@lists.linux.dev>; Fri, 11 Sep 2026 06:20:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178910763369.21128.10448929069293375266.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 27d17fd6bbcb2034449f76b0fa4921f3e7d4d54dad766be925adf5a519156479
Date: Fri, 11 Sep 2026 06:20:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1789107633
