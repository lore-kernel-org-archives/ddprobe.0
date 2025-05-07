Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 39D11FC1D
	for <ddprobe@lists.linux.dev>; Wed,  7 May 2025 00:59:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1746579594; cv=none; b=HKIUFkkx3SbaABrL2+aMCcRzFTFi2XnWgwm8jSvbJVEMI5WBWVDrnyqFj+Fa0JL91O0bDoJPEm1n2CYDvGLDxNTDrpiLLntZ6D3hdpI2l6VU3ShG2eoMUofAjQQdGdzMVNsQ/7xP9JfLn/dnGuz/ceAEijNMIgN5JVTB1pFy4y4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1746579594; c=relaxed/simple;
	bh=JrFlu7G5USp/priu9Mm7yo21Uibf5Navummb3om7Flc=;
	h=To:Subject:From:Message-Id:Date; b=SdTjbe7Y2LqBydzG4YtnfhabzCRg5mqX3Htqw84n/j9UzeauB5DAG//HxOgJU5zY6nZ/SgJF/al/0cUrt6pZqg8xf7jExkLPj5lSUOMWtE/KK7wgViOkQLBcnCJRdKjznNCSKckV7QcUKOq6Hix1jPbnlLk9ht9WwnytfIR2ZGk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=gmucIa/N; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="gmucIa/N"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A3EBDC4CEE4
	for <ddprobe@lists.linux.dev>; Wed,  7 May 2025 00:59:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1746579593;
	bh=JrFlu7G5USp/priu9Mm7yo21Uibf5Navummb3om7Flc=;
	h=To:Subject:From:Date:From;
	b=gmucIa/NvOxKmiMfQm0qDuKT9BZ6C0Vq7lPQ9kzFOATlvwho55jHY+TGFC7+KhBFs
	 lle8xldxf9XB3jND3ab772oa3QvqZdy7Hab9YrhVXaBoB4zQnLIfBJ+MPQgqiRGjFT
	 b+n6XlWT6tD1UvhrF6/2tmZLptsfQ+52rtr9aEFtsz+dV8ejx5UDUBzsccCA4NHscs
	 KCz5h7S6pksdL21o9AzwqwaTdLORZxt9Q5kOAtmcxfrjpz4KVVyIZlj45SjYOVxL89
	 q0gpum3iOBuJgm87sDr0Y+s28dwexknZKgQgUdMcQOLE7sqinG4S01uSkmhwCxH/2B
	 hZLu7n0KdcHhw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 94BE5C3ABBE
	for <ddprobe@lists.linux.dev>; Wed,  7 May 2025 00:59:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174657959357.9452.7876164835011144883.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: ef517ec17b3470461b0cd13336415f36fd7451651b8c183abbede83a2104ef94
Date: Wed, 07 May 2025 00:59:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1746579593
