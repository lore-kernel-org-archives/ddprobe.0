Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 308771B425C
	for <ddprobe@lists.linux.dev>; Sat, 30 Aug 2025 06:19:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1756534796; cv=none; b=JBtR4eds6I4dDubXlrOITB0biKRwJEcjtwTXEYNNFKeKy+PspWRKsJ2pBTzE72OL8falNnGqxYyI6xZDVAGyYWoASYcVWh64LTyzg9x5mjkg4MNxSG0Lgr/vsXltMYqbRVzsSaD29xQ514JBlFCYI77gwqzFHNo3nJ27vXr9jo4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1756534796; c=relaxed/simple;
	bh=7zxvm/+dI0VzUpKJcNWv08lkkFc0SQftgv//vBahO9c=;
	h=To:Subject:From:Message-Id:Date; b=EbQIiiZwKlw9mOxBTqM1+dnyRa4BRJFJdzS+UaxETsehZ4fB1J4n+dULrrd1S/ALTBYS6wBoLTB8Reu4TmQ87Xc1HEg6K0SX8LDZziqDePSgeoOJ02soCbWMgnQiaAetTDd0UpO5vvcKv2RZiqcRIR7PrS3Biqx7cd3mn8+sQQ8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=F5X3WaNZ; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="F5X3WaNZ"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A4D5EC4CEEB
	for <ddprobe@lists.linux.dev>; Sat, 30 Aug 2025 06:19:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1756534793;
	bh=7zxvm/+dI0VzUpKJcNWv08lkkFc0SQftgv//vBahO9c=;
	h=To:Subject:From:Date:From;
	b=F5X3WaNZGrnkimR3D9Q1yeKyEUrEpLnVJOpB03We5ZMhK8m+XuA4yQ5v5jndYKs4m
	 ACSxBop7JZCWLqR2lk84KEWA/cshvmZjkYTOeauEQLE0DvIYvOD1vv9A3sObOlLmAa
	 j9qfAGy6yL9GjysdAhHPehjUA5r694NMlKERSOsGBmHUj4b+QsFF8/1bFQOziXFgV1
	 bgHWpJisXGED0x5qad2y8EkKWmVdD5cF5bHUDP23YFNNWhkfRfPGekGVUIgEUpwhcZ
	 L++iY01HVa2TJYScOSV79kusQl+L6F4IIH7XkmwuxwdB73NK9+h8vLl4S8RT0mHS5P
	 RTP5P8O9Fmg0w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9158BCA0FFF
	for <ddprobe@lists.linux.dev>; Sat, 30 Aug 2025 06:19:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175653479357.11803.2461973882842787285.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: d75e3377f429559f0da82baa0f4b6792c700a549be6e259161c06baf21d0f0d0
Date: Sat, 30 Aug 2025 06:19:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1756534793
