Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5C0AF451985
	for <ddprobe@lists.linux.dev>; Mon, 17 Aug 2026 16:30:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1786984234; cv=none; b=TBiGO7IkNHNZkmi3zKARfp+PQXq3omesL1hxUyEokDcgyoSO45YAYgHoBuVJWH/2ywZe52B2OiqXlP64FqbBOm+0HtrlvSAJmf5M3sBo+e10/ht0AnvxRFAFKqXeHNA1qY3EXRhcBI01UbxuhUQvE2xIcr/L0s6SyNhf5z+w668=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1786984234; c=relaxed/simple;
	bh=hzTbVS0dZyfMLrKr/MmS3HpjHmMXOZgJDvlYVc+Quz0=;
	h=To:Subject:From:Message-Id:Date; b=EoTN9h+XOq4rzCT4/rFuqqSuwRNk381FAM7kvRlyyQbNi5AOQug6XoMij7q4qEo2n4bdzX+xBJ5jemLmMEpXgNUpRkcIuNYKnqI8p1RqBmm7EQ3sMKKVQTM7eOhTyQC2UAybZcqYy4Q8wROBTUv5MslOdtwiW0AKwCpopOYkCac=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=UzK7D6RX; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="UzK7D6RX"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D3927C2BCB3
	for <ddprobe@lists.linux.dev>; Mon, 17 Aug 2026 16:30:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1786984233;
	bh=hzTbVS0dZyfMLrKr/MmS3HpjHmMXOZgJDvlYVc+Quz0=;
	h=To:Subject:From:Date:From;
	b=UzK7D6RXiFx8IDorU1U7dB+cV06hOdWcaH5LHLk6Ai1X9rcjyIx3dEm3LCR5Ub2Ql
	 p+HKjIB1CKgD2Wgjkdcl6Z8J4mhatvk/YMsWkLrmM5eWgR1aLYSHvMvpSuCUn1MpRc
	 Ym9RMTq45VGKs1ZmQwXe91/8Kd23HUDV25VPrZDHhz/b7DuIk2vN9X/JtUOsjHizLO
	 98SJfP13/qO18SQSdP3hhnPUzJ3V3RC3bjox6SK2ZSVL9UgJl85pDwuixb9qDW9dwo
	 XHUUnH9dSlgEtOLRqAz3J/3MRh0FTKeYNNT2z04gaX4xBsrBydZcgdz2fPhlWQYkqo
	 WH98qEiwExgWQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AD589C5DF66
	for <ddprobe@lists.linux.dev>; Mon, 17 Aug 2026 16:30:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178698423370.13701.1409427349385480443.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 9928a528b1b63fdfc1f0d0e3acb2fe67399d072417e8f36b6f775d614fe3c6b7
Date: Mon, 17 Aug 2026 16:30:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1786984233
