Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id B8A863BED54
	for <ddprobe@lists.linux.dev>; Thu, 12 Mar 2026 11:24:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1773314693; cv=none; b=JNPAs3SJ/Tx8rs9awz4nVgQvRNxdZEaOObfH52eoL7Lg1Vj6PM9n3HEdNNPbcISHKvRgrVxG52u3kkJH81U3XWERKjY1stHpA5182rUMHi44B+j9gbVPTa0MTBR1nx8+x+srGpeZ+LNKaF5K44YS6z7f4gYz2pKJZPqQiqxO+D0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1773314693; c=relaxed/simple;
	bh=PUMnQ9pOaGVQJlUv7WI1r8ou5dej0jIJj5j9ca1nRJM=;
	h=To:Subject:From:Message-Id:Date; b=U6qYyr/S7p7LEx518Rswt/+DIupxAmDryc945EXE+AMBK8FcNd5cJO85QZcA+JyB2HzPGMnwdWxL8SGwsarBvNCjTLFDTMEubEX3ZZ8acendItl0+MVI3zN6kGzVCD2OSaej1Lm+/wN8i2oXe0zVie8l7sDvU5DfQuglEQsdV6Y=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=O5Wq6CnK; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="O5Wq6CnK"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9CA63C4CEF7
	for <ddprobe@lists.linux.dev>; Thu, 12 Mar 2026 11:24:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1773314693;
	bh=PUMnQ9pOaGVQJlUv7WI1r8ou5dej0jIJj5j9ca1nRJM=;
	h=To:Subject:From:Date:From;
	b=O5Wq6CnKrX2z5btFxdiFfw8hAyGiVf3DR6XSi6nJWvlnP1EXDk6jM5OG7MJAP7RhG
	 tzN13HH0HhGZe5v0gRKChAGVUhiXnbxttzpLEo6OV1itk8H1cUskLbUTLxvmuD0ej0
	 lf2ds23xXfRSlMuwLj8hLiOvduL4hJqyPMGTRFKzZIGo0Vru7OQGd+9WU5A9Vb5MyQ
	 IXpK95c8/XfeM1RY+S+PA1JVEus4IlBug+Si25H0obcFLDHo4DNDik8+XxHdaOtKtX
	 k9nA5n3ADW272ppMOTfms/XjYkOuu+6ZJZi6nDdrfp50ZcWMr2hvDhdhflvcRzkMw6
	 zNaEc0s6ra72g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8EDB3105A586
	for <ddprobe@lists.linux.dev>; Thu, 12 Mar 2026 11:24:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177331469357.13475.14649617858793633696.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 2df00df092d41442c5138da413b8c2ca0dce9f9b51b83fe42867b55c904b79a2
Date: Thu, 12 Mar 2026 11:24:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1773314693
