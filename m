Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D69631A27E
	for <ddprobe@lists.linux.dev>; Fri, 15 Mar 2024 12:48:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1710506896; cv=none; b=Zv6l7KZawh3kqaLMCEpgtBJBYyGwa7d2cJhYNa/h/zxRLAd49t5q1yX4utsh4jSDa7vTDYT0SEMhlgNjtSIR+P6VBR042pUKHX1LEOdwYLCtIYcet4K+NLhWbilfj9p+qZUJLUUIW8BFIJDgDybsNBdGUK5ptPLEyfumyk62KSg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1710506896; c=relaxed/simple;
	bh=WTukFlombmeildOOCr6s2k35pOpa3iHf/o3aFIveyxE=;
	h=To:Subject:From:Message-Id:Date; b=ubga3K+t4JflWFFVnmdGH/DVSYU3AkCyGjoIACxEKYGmc4fskJrWbx3hFjtYvJfSWDeZcURRTUqa0wi4aA6jtJUNNnk0LIUv7M2PPEDVeNoF552ToLE/TFHrs9csS6ijlf0ur2X4ckdOjPY20j79P92gix59721j8+HiudoXwvI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=vL3fICD/; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="vL3fICD/"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 6CBB1C433F1
	for <ddprobe@lists.linux.dev>; Fri, 15 Mar 2024 12:48:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1710506896;
	bh=WTukFlombmeildOOCr6s2k35pOpa3iHf/o3aFIveyxE=;
	h=To:Subject:From:Date:From;
	b=vL3fICD/YOJSGUyC3rZ4QlnOrPZ2dPBiiw3HN9sR9Pea6SmRQyk8Ej3ccQE8GB6aZ
	 WzbetTeb9u3y/MrJo+MENpbU8omuPvhcGtjLMQ4Hb7eluiuqn6LnozzYc9cYVyKdUY
	 uviJRJKvNfcYTiF9r9pOcQNdYy62YRYQksuTm0Us477TyDXpZ6lHz5Hzh3NrokZqGg
	 grAsnMq+So+pqh912eB4jyXT9c8EfbqaguoZjbULEZMWOOBIzsz5bOrzDVjo4mBcTx
	 a7lfeHFm/SDZiTj9pw9UOUnHZqZlmDuxUB+6ODXSJI/tqFPPD8on56DbAhLrcwUqGt
	 87TZsdHqA9oKw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 5A654C54E58
	for <ddprobe@lists.linux.dev>; Fri, 15 Mar 2024 12:48:16 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171050689636.6118.16673989724466648268.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: b7f82a25aa392590adc7ce776744d70cab846b64d93ce0f89bebf4140ea9547e
Date: Fri, 15 Mar 2024 12:48:16 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1710506896
