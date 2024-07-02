Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 457467442F
	for <ddprobe@lists.linux.dev>; Tue,  2 Jul 2024 06:25:22 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1719901523; cv=none; b=Nlcitq4Gvbs76oySna/OPB3shY+4sQI+DcoBOSG3uf0iMKYphEmmqU++ZjSJphUJB+ejSP7MZcFb/Y+eW9MnU1gtaTVxFWqFQ2rhQGwKbr0njKZddponVyE7QnfVpHZJKJtE1raYLih9LXhs7gjDUSPsa74jy1OU6MdMhafYsL0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1719901523; c=relaxed/simple;
	bh=IItQxvkwP2nN5kxrxyGrTnDioVSjoVUOF0IjvIBrCOk=;
	h=To:Subject:From:Message-Id:Date; b=T3lE86zgF1SIGx5zCUBiWVV9WUjTd5yk9kDFXtH6XvA6bC/1c5MUcfEE+jq6VxHPxtNQ+c3zKlotrspRNjeOJU/xOvZyoFvXByDp1g+hACEQCZ3yVpFSziJiCh2pxS3vnWiu87Ov1+QdtbQ9cCOH6JMLWB30bVXFTdgrpaoL0eE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=HZy6JmRk; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="HZy6JmRk"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CD34EC4AF0F
	for <ddprobe@lists.linux.dev>; Tue,  2 Jul 2024 06:25:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1719901522;
	bh=IItQxvkwP2nN5kxrxyGrTnDioVSjoVUOF0IjvIBrCOk=;
	h=To:Subject:From:Date:From;
	b=HZy6JmRkBzctULP3YYOdYeXH5kmFwhTr8LmylUF8/B7p81YRfvKpqZ35EWvs8ugIM
	 jIYgPd7x6180Cliwz5t/XD3c+e1coH1A6IvTXMaOCy/rReRtBj6QGSmFWpGoy01sH7
	 DiErhW9OZ3oCrjMTxKveUPew/sj8t755oGmLbTHOaRIpQ7DkC5vTpC8jkA2Zq4RMTX
	 llrmZZWGFsjEK4XhYiDxUihBzGIFa8ULDhxUT/5YCS5q5GF15G5UBcgUriyWGJQAao
	 M9LlikI5f4uZIGi6yNODWOSD/0xRruIz4CZNjoN8Ho4CTTScF0GyFgEBsgHia6B0zv
	 Gg/SEszp+5/Jw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id BC68DC3064D
	for <ddprobe@lists.linux.dev>; Tue,  2 Jul 2024 06:25:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171990152276.18164.9874073636706629145.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 56b4d1c4e613ef4221811ee74697227147c41654b85adc33e74ee7e96a6e4df7
Date: Tue, 02 Jul 2024 06:25:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1719901522
