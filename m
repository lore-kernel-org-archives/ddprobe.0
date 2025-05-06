Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 20D8723875D
	for <ddprobe@lists.linux.dev>; Tue,  6 May 2025 04:59:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1746507594; cv=none; b=Af0ljsoX/IxON3kwTyHPQsEhiDY+92sAFZfQiLvX86hWYRfJVC3izPJyjuy07bZ3RHDwAbgpmJbIUWoprIXhIs+OFRQefu+V1/SkScMzavs5PAIT/9r0H4PO4OGyvbzC9uELVMHZMVX/c4AkgC8T6/L9sHryX27wqvtQ0fpUwZc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1746507594; c=relaxed/simple;
	bh=14ejlRO4ekAf0A71hUd5d+loClbpqzt/U+24VIBxo4Y=;
	h=To:Subject:From:Message-Id:Date; b=T/cubcUxPL5WFj3faPbJ2jJuPzyX9QS1u6T9DpPEp787edsypGEfeXTQj7foQ3MybWoxWSn0UqRGqopv9A2GFheUJqnbJl+VOq0CymzrSJvN0BYpl6cFfPMI2ARRgpC2tCfMNczOu6XBeb2vlT3TrPutglHeqbhvcCcqBiXPbmk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=u/LFoJ+F; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="u/LFoJ+F"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9CD60C4CEE4
	for <ddprobe@lists.linux.dev>; Tue,  6 May 2025 04:59:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1746507593;
	bh=14ejlRO4ekAf0A71hUd5d+loClbpqzt/U+24VIBxo4Y=;
	h=To:Subject:From:Date:From;
	b=u/LFoJ+FJxZ4S7VIrGhdV9QcQVjY/gpFnvjctNzrvzYG/BprCdYZX26DR5UybdgYD
	 H3PjnRjcEPGFAfzkY4qOYM0Pn3bVkssgkBGwMcXxs3N0n3wY/boHnctUa99RPVvLjy
	 mfwCq8kBZCamu7MkE0sdXCC/XjQRiZ60xBoiQ3Y95QGugni7eSdysKwv9Dacisiu1Z
	 o+7o9kCsvO8Oyj7e280stxgypU0k+q4OuGyvuRyvERdaVS6NE+MZ26fKtQoMmiETrS
	 BW3LXiSeW32VUleLa1XBQHc5oaU+9ra4qViX/mmru9Rw7jiwOhXj7O9QMf6/Tb++zO
	 RF6FF/drgGHkQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 90265C3ABAC
	for <ddprobe@lists.linux.dev>; Tue,  6 May 2025 04:59:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174650759358.3801.15490579219246223955.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 3aac0946b53a6c0ecfd8e8096012c4e4c55cc71eb6c8daad41276a6644e43aeb
Date: Tue, 06 May 2025 04:59:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1746507593
