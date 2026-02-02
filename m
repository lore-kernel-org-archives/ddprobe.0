Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 097BD36AB5A
	for <ddprobe@lists.linux.dev>; Mon,  2 Feb 2026 14:13:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1770041634; cv=none; b=cWu9HSi97MSzkKmf5dOx8cUspCdtZ/2oUAoOJzAftoT4KRJD1NwlwotnOfWVhDNCVPE9EM0TXXkMmwViyWxSIWBZ7mv4DHEpLHh2u5Rh53Yp8by12Kif2yhmrjImMr+kiINtsOEgmGS4DzXeC4udk3Bpj2RJhgR83kokhAtkKoE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1770041634; c=relaxed/simple;
	bh=85/Dce1HKB9ZlZZ/K23J9QNQjdozw+QmahxBvODo8KM=;
	h=To:Subject:From:Message-Id:Date; b=mK2h5ye6Yto9L+vZAuZtdpdDQXZXUS5apAmGGBMMzb2CEirWcCf9Kht10SjwXwJ8aKzZT7Ihx9SZS8ArUAlF1xqK+pry1gzSWsmkkp3H58IYMu0G0/LE/sEmpPSBgnZ9sR3XRddxkOa4bJMgDUfEoF1rWYO+z++rY5pDVLw86yU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=h7HRv+xu; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="h7HRv+xu"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AAF1EC116C6
	for <ddprobe@lists.linux.dev>; Mon,  2 Feb 2026 14:13:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1770041633;
	bh=85/Dce1HKB9ZlZZ/K23J9QNQjdozw+QmahxBvODo8KM=;
	h=To:Subject:From:Date:From;
	b=h7HRv+xubdRYw9vOS/0IACH8OR/BgDWiRLgc6Rd7A2CX9PR/xKtVAulbl3SI96Xkn
	 +hoJMomcUky/gylJ3o0hM/zjXxEcxUTt75k+3PKmOKos94lAGrGoU7vvWOhd+4IBiw
	 uVrLE9ErKk48inkkocRLQHm4QSyEO4GT+1vQol5zs2D3VNSlfAcz9tg+DEEWAdi6mP
	 XXtjKvExzlfrUd2sy5uHSvun5N1V3fyBon1yE+iOmibmVkuKB1grygYjgKNst50Ckr
	 eQz1JKuLwDpuvzlckTwT5GpC09PAl2aLEcG6DNIp+5BwluiAl0F0cO8hIn5b6avTAc
	 xfnqmH9YnrTxw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 97E06E7DEEE
	for <ddprobe@lists.linux.dev>; Mon,  2 Feb 2026 14:13:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177004163361.30212.3444396700193995895.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: b93dc3ae65be739775c8a113047fc7d61584fb79678bb9a529896b8937b07856
Date: Mon, 02 Feb 2026 14:13:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1770041633
