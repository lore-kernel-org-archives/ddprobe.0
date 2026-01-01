Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id F237317A303
	for <ddprobe@lists.linux.dev>; Thu,  1 Jan 2026 08:23:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1767255834; cv=none; b=K6nFcB+v6wBjJFFG0uHy/whPiaGS72v5T77bU5mtxKSrgR/RTJCUEhvcNnqg9JjWJXcVsaKus1LVFgIGC+JZ5DHBj2Vi5f/chNGnz8hf7uQHjInUcj+I2ukfO7WlS3SYRuZMDB+ullmN/b2nW22OlE+PatuUCYpWYrusd940JGE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1767255834; c=relaxed/simple;
	bh=++MAvRwL+zVLT4wUI6g1zF4h20ZXwLF+vZhGtQ29izM=;
	h=To:Subject:From:Message-Id:Date; b=hQ3DLwhF4bZS3SFntuJ31/e5ookmMfYckHbvqLMzSFh/9HAwqDjQHuBKtrP6WBy+dFm6hHd8fqj+U2DWHaZwVpV+xMHRfmqcyWDXJz4PZPa7y+B2WRTTcedLjCHgeYL/yvqnJMXnOAgDjQGscBeJ7bPTfQNL8QlmjGHzPxr7M9c=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=kf+2JuUQ; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="kf+2JuUQ"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 98B81C4CEF7
	for <ddprobe@lists.linux.dev>; Thu,  1 Jan 2026 08:23:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1767255833;
	bh=++MAvRwL+zVLT4wUI6g1zF4h20ZXwLF+vZhGtQ29izM=;
	h=To:Subject:From:Date:From;
	b=kf+2JuUQl8Deh5yMhXjhZ+QAgQq0XcImWA7NWV7v1i7KRYtLn+WfPoNRjumTjan8A
	 it5qM1MYbuXT7wCIZCCRdJ2fn5h/bFlX5YdhPPiAJu8D1RSG7uI6LmPLIMhZIC9Dgr
	 zY4jwaGh5ae7gZGsBXoNqmxeqwlxF/D9ARdh0MhK1MSv2iecuicTNwrT/gcZHIw4UF
	 hYFrZTd5r913OtlquS0vNWPKiH0uA3AByJ18WZwDwuPvqkBXpuzOvL8jEHc5FWicKU
	 vQzf7rysAY5VsnVTRAxldkNYfzEH+ed7m1mlvNs9GEpMhRu3IFeH0G5qetgEBiZX83
	 TjY4ruygpWLHA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 901D6EE57CE
	for <ddprobe@lists.linux.dev>; Thu,  1 Jan 2026 08:23:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176725583358.27181.7715790590831117574.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 4ebb8a942fa5d85421dc822b8bba2d8e1972e358c9256f82dc40b78001a606dd
Date: Thu, 01 Jan 2026 08:23:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1767255833
