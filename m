Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1BF1D1714AA
	for <ddprobe@lists.linux.dev>; Mon,  9 Mar 2026 04:04:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1773029094; cv=none; b=dbDx9tUEH54hUJtVKm/03tlDQ92NTpVuwN0inmIHUiHKzqtrr9sme7kd4yhY4zgzheYg23ZUb1al6HsRovA5tyfACumS+VI8/BcCmGh/n3zFCFhz5WWjz/COmLREMEFXX032ezfXrif8QxCnyDw782gSEowUN47IPxm4v9D2o2g=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1773029094; c=relaxed/simple;
	bh=22DAsxH8iPYKJaDvpkFHsBElQSYS1SF6MixHnn41QqU=;
	h=To:Subject:From:Message-Id:Date; b=t8yUtO1k0QCvWf6eFCJAZiHUtelbDkPmRAxSGLB56lug7B9+B8/093o7V84NKZXq2pqvfE9o0ct+ARpb8DI4MxCUPkbm+Nv7OaMfGarTn8bXxfBXuiUvDYXiBu0UaXm8sqnRGTcCvcWORJGMxZfTr2KlwK+SKeKIZyCk2cjt9Xw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=CKXl35Ax; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="CKXl35Ax"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A1D29C4CEF7
	for <ddprobe@lists.linux.dev>; Mon,  9 Mar 2026 04:04:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1773029093;
	bh=22DAsxH8iPYKJaDvpkFHsBElQSYS1SF6MixHnn41QqU=;
	h=To:Subject:From:Date:From;
	b=CKXl35Ax4yi4pusm/5pHB4XyBJdtYGYXMNeXSBiQvclKWuTYphH/95qeE1nlPOEtN
	 R9UAnijKxS7dTSwvOOc87rjEASWi1VIzdy0LBmMf6t0X9HyHlFuR+B2TI2Mn3l8KsA
	 DUdzeLnZOzvyhCNEY/Cg6V+6aqdPrd4Tw0RKi5FrciIGJ4x2fyTjuz5bkqWGIVMUH/
	 aAVsT1fQJARUy2zlx4RTKgL/y4QIyZqN0LZFr6d3Yp211FR29k4Ma8Q8R/AJkTpg87
	 0T305ql6GR6yaGjlmpRwuZSk0ely7GlpXSZZ/vBwIT/1gLRVknSfXrHz8mGJ6FZClr
	 TdzIB2ZriG05Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8FC27EA8547
	for <ddprobe@lists.linux.dev>; Mon,  9 Mar 2026 04:04:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177302909357.5164.7622955078015635479.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 1dd06447d068ad7ba0a649e942735cece90c955249f26909d822f43d1dc363a0
Date: Mon, 09 Mar 2026 04:04:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1773029093
