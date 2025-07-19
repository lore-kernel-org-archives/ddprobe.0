Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3A0AF1C84A8
	for <ddprobe@lists.linux.dev>; Sat, 19 Jul 2025 09:09:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1752916194; cv=none; b=SLtXmOzNrPQtjPf6srg/7NlckGbusF2ugxNKqeuyEkDNd9SlgA+B9+YE51j8FPCSz2ktpc5T1wa9WbJiuJj//fPTckM38nyH9Wpkt2eRPwpIihjBMEPu5OtrLr5+SoGTNgcuCu07JzeVWY1c+/qPGAr179w370a7q4vcKZf9Ii4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1752916194; c=relaxed/simple;
	bh=dJD/NIxcNgiAcbAnC81CigbzDTw59pJsVo/c/vtreyE=;
	h=To:Subject:From:Message-Id:Date; b=o2HmJgDt0RgJjK1npG4qqMl3aBxVPOmcUL9WFeqpacRKWqkkebkpdtXLSo5Bx2u3lh9nmYf4n4xTD2yCoZydZX9CU+5VrPf3dlC1iIUn8D+PETsbZ9AUckqhDwLxYX39aH1y/UKu54PPfS+evrNj1VW8tIMe5uVAfVtKPkUOmOQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=WNDjtzqa; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="WNDjtzqa"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A6BB8C4CEE3
	for <ddprobe@lists.linux.dev>; Sat, 19 Jul 2025 09:09:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1752916193;
	bh=dJD/NIxcNgiAcbAnC81CigbzDTw59pJsVo/c/vtreyE=;
	h=To:Subject:From:Date:From;
	b=WNDjtzqaYq8VzhKVhz+6/e2kXxhEFokPrV/4jt5qlpRxc3vZv5+BORYbgGNImhlWM
	 9J9mjBPYnV5cwqhHMKzf28Mp3qp3nhmxxg8odsnxI4g35hsSq9qV7t6I3l/wsOoPJx
	 zgwU2VMW5kKh9LEYyTcMBh4+h3LR71FX2pL68nEPKlObW6HVien0BNMu+klq4lVQqY
	 3RoVX83NJMccAkMsP7DCZrOzH4yLpPKu6iH4/v18Oig+oiyMUPQVfiyFID1yeQe3z+
	 eF9dJTj19wQOpW3v4mJoOtnDarZi9ZWss3v6H4flOBtiAMNX36RgAeCG1PPlpzc2Eb
	 9ihOSuV6tIdng==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 94DE4C83F27
	for <ddprobe@lists.linux.dev>; Sat, 19 Jul 2025 09:09:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175291619357.6827.12431005416358062273.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: b08466f0783659f4e1d98ba120b49ca0a76a9c2a805abfbbb324710a54f13de5
Date: Sat, 19 Jul 2025 09:09:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1752916193
