Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 25C361420A8
	for <ddprobe@lists.linux.dev>; Thu,  2 Jan 2025 21:25:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1735853154; cv=none; b=JULvr1lF2C72wIUHT2rY44V27MAt7RnzHngS+MfZsn96FdYWfaoW40Tlla554zdvvhnTtz/UwnPzCNK3MX2SRsvomoeDqm0XuUQfc5fDBKLakoGrWhMx4EnJhkMHpXwphf3mYuUKT3CySwyGybEWqgaDbV1Aqx114IW5EchxjZ4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1735853154; c=relaxed/simple;
	bh=WUNu3VaY+SSLwEyM5mh9yxo8f2iZho1mjWhfp/4b9vE=;
	h=To:Subject:From:Message-Id:Date; b=U8HXxGdTDNXTkbKV4jXRZcvGuQ6jcwIJQmlnzcncIoXKwtEwQ31dxH0DQIdOq0enIl2q4Za1TC7svAhcsOOQ9UojIWdwonUQHOnuaAWeXPdM9u2Sb0gvAOMoidNQTl6NTwGxnu9PQwgG9f/20gVq2nOzjhk2Z9h88M2XXH3cA0k=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=iqtcI0g0; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="iqtcI0g0"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A6CB6C4CED0
	for <ddprobe@lists.linux.dev>; Thu,  2 Jan 2025 21:25:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1735853153;
	bh=WUNu3VaY+SSLwEyM5mh9yxo8f2iZho1mjWhfp/4b9vE=;
	h=To:Subject:From:Date:From;
	b=iqtcI0g03b6Cc9cLWWWmCtgu34eSk0TLVN8Gs0BMjAxq8ofzOTi1dEvXgKYAJAD38
	 GtO3J2/ygj1DZ2AdiCYqNSLDp00H1cpy91qwAHGUG0BWdca1P/3UrE2PUNunZtvl2h
	 65mlTxIHrBs48KXH8QVgh+TokW8mlkn9lIP1zg7VuZePsQ9rN86Fdl+4rt8x3Mo1ZJ
	 vLuNpYbh8iSntARBc6UN37xEQatPklRnMWFdwlfHl6zbqVHlxMdREY61Ilb7svgHpf
	 /Oadge690EigvwdP9qSfSvq/5oyztmbrbO2lQ7JrTKlHgO/GhXOJ2MqkbS4vxM4Pzn
	 L5ImthxQnMRkQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 94353E77188
	for <ddprobe@lists.linux.dev>; Thu,  2 Jan 2025 21:25:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173585315359.10221.12355006093884271223.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 1d383268bc6d2cd1a36784b8a7f2cf414460c7aba7d17c01e68240e9b9af049a
Date: Thu, 02 Jan 2025 21:25:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1735853153
