Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3EC661632CA
	for <ddprobe@lists.linux.dev>; Mon,  9 Jun 2025 02:09:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1749434994; cv=none; b=WfyTGFOuRnXU8G++Aoz70po+P+0Zmhg5qs6ivxuKYoKyIW8Nbp2tc1ceWsS/+FDBGo4IiceDtj9JyoJ9hPOaLZqB/THRpb2L82hESuS0aNRBwtvpKlG0HcnYAbieJSI30dhBCKJq0QaJw7YmRiOyOKFp4BCHacM1nZkRidSfjSg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1749434994; c=relaxed/simple;
	bh=ltxT8cH79yj3kzn/uNVGMIT0NQPJD/cP6msu95cSuMk=;
	h=To:Subject:From:Message-Id:Date; b=k9bMM6VtWWz2l5Y+KqAdv/I2/zPA3kc6/HHoSLSV3l6L1tVf4gI3+UyPFmlPY4tsT3nZ2PUAL17ECsUyE8z3LYo0HXHvXi++ojAWu1qsedodXpx1gFtvvaGMpcIcbpy+AfgQOQ8islXqFnsP2vUl9hxXhos9oz9zL0MGuSqRn7s=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=R4lLrUqg; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="R4lLrUqg"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AF8CDC4CEEE
	for <ddprobe@lists.linux.dev>; Mon,  9 Jun 2025 02:09:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1749434993;
	bh=ltxT8cH79yj3kzn/uNVGMIT0NQPJD/cP6msu95cSuMk=;
	h=To:Subject:From:Date:From;
	b=R4lLrUqg2hxuN2KXPlxXI+rMvso5CGVXszcllGvfRwNEBQqjaxTg92yBro77canh+
	 SV2JYEO5hkwh3pPgEEMge2XLWQit39iZiPigF96/g/zG5IAh9tr0aPXlxiRDWyhI/H
	 m61YyrSCspuOGMUeuB1aIJtoQcwIvr69xvQzZklfQwGEgb4CqkGvkamw771AOTCN8H
	 T1TFEB/JB80TYxCsuKXUqdDI91NqsleloesjLS8Eayc/Wq4k/LmWDDLJM82QDTKO8e
	 BiWExM458J0bhFGLjwMG7OcIw5xtG9jR64Wn4k6Jf6vAyDolkvZYc1/XCW+NZnBivG
	 tBinZ7DK2leHw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 999C1C61CE7
	for <ddprobe@lists.linux.dev>; Mon,  9 Jun 2025 02:09:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174943499360.12794.17242342481994302932.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 282fed30698c7d4a254c7658eb8de6f87b8bfb6d28f1318b84bd3d8cb941a595
Date: Mon, 09 Jun 2025 02:09:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1749434993
