Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0302B63115
	for <ddprobe@lists.linux.dev>; Wed, 24 Jan 2024 12:08:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1706098097; cv=none; b=YN8QHDHGgIHcZr5mnmHpcFCJq9KhnPub3i64PcF71mc2d1ZMNUZjLA0ecTPyOW5UOVBJaojV7I8IytmmRGgO4u6RkJInUZWIUgwY8GiY51gH0sv1OCRDluqrKfCvHHFe/jNOif54O6ZYC87rwaDagAgJs1HH2+YMP+INtoSzKJc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1706098097; c=relaxed/simple;
	bh=SaQtTdTQXMCOYSeC1eCscH2iBEfEDbdOi0GJ6F94zX0=;
	h=To:Subject:From:Message-Id:Date; b=Nw4Q6umY6C2jVFZH7IXzbgYyMoWL33eDfg2AWIhpnyDXIeo7RldQFoaNg8AqCe4tVN0+whxKIiYpEifRQuWlxMl0koQJtc8fABBG/Z6hax42ldlv+jZUyKbEsGGXZmi1azG5xqtrKYTYUl2I+OFaFgdLu/1kL8WdYP+cBodIsH4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=EbVo3vB9; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="EbVo3vB9"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 7856CC433F1
	for <ddprobe@lists.linux.dev>; Wed, 24 Jan 2024 12:08:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1706098096;
	bh=SaQtTdTQXMCOYSeC1eCscH2iBEfEDbdOi0GJ6F94zX0=;
	h=To:Subject:From:Date:From;
	b=EbVo3vB9EQcnz95LxYn4h7dxh9FVsV73cGDkafKHkdW2ivk62UdK7jjGKtydUC1dR
	 5SejDaXi4WwE3Uu6myAMRKmuEnmpu9Ug3Mzm8+1JazgyA44Ulgww1rFqRceUmWWFTB
	 ATnVqxZKt/bkcvDWYicr+lT4VyHjGG4I8fucNy4ZOGYc93LjA/vkkfaSCOidJgi/wq
	 UKgEcbMIdQP9pJr0f0A6tT7C3/aD0SPR1TNmWFgbyXvvICxvcRW0mTUZ9OPtkHS2G3
	 Fscc9a7on6RvcXVBWhkjXUcfOFNG48JGsXXD1cUfd4NTUQ3iWh1IYP4EvPy9XwsRrP
	 1N0CM2+CATEuw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 5DCB6C46CD2
	for <ddprobe@lists.linux.dev>; Wed, 24 Jan 2024 12:08:16 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <170609809637.20190.1998491589723672452.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 2ab4d9dca35d4e14b3015b0f6651cbc8c56d3785eeab62297e126df66fc5ff24
Date: Wed, 24 Jan 2024 12:08:16 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1706098096
