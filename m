Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 061BE19E
	for <ddprobe@lists.linux.dev>; Wed,  6 Mar 2024 00:48:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1709686097; cv=none; b=PROz/GjGr3OGLaOYtzQWlepfw+brrk+y9QMljN1ms+HPF1GNq8stADjxHJibako9SdkcashAipvndCPSmXKmalxdUSApAZ0F/YFcyLsrNBHxu4lHDnt4hMKKlEPZY1JFEOCFiZism7b61hL/JXMc0RB6g0Rv/LEtNo/AisFkm5c=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1709686097; c=relaxed/simple;
	bh=skEXfxkTry9NktnkfsAYkK9b/zrKJAK2kMOusJjLucQ=;
	h=To:Subject:From:Message-Id:Date; b=dXO1F7jlWTaCgyErP/9xFtsVUO2Et8N5DiwAYNFUApSoPefo82KfdEy7ehAfhXG2IGxqAeZVdCqhrigQJoTYlKEwgIIGl5gTp2qUIYOwFNRVbjjeJQ9z4t+zRvFZ9TbkHxM/sumtxub/DIzwd0Vc+0a2fohyaNI9BZEiOuTPKYw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=KXnOa5WI; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="KXnOa5WI"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 7BDF8C433C7
	for <ddprobe@lists.linux.dev>; Wed,  6 Mar 2024 00:48:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1709686096;
	bh=skEXfxkTry9NktnkfsAYkK9b/zrKJAK2kMOusJjLucQ=;
	h=To:Subject:From:Date:From;
	b=KXnOa5WIQJrOqr0A+tjGMtra5o6r7R0MDgZs8uzqMJU8cNm6tIv3DdMjzBhkDOEST
	 dna3tF8DUBeuTdov7cMk62YyVJrpPvzd0mvEqVPDgQuvUdyzll9CHhHRKj/EmR+jOT
	 fPXkOh8Pi+MtFfaw9Z+RXC7MPKORaBt6TBzA8S8EBC91juVrOfKXz6MRxHstJCPN7K
	 TrZ4nAoknI6xvf/xG5BCCAHgP5IgJthdd0RhYTH+1OLHCmiqAf29e3RxQ0KpUSxOlx
	 sHvu0G0e3ywHtGXcK/TYCjmOHS3Sx90N51JADDmoTWaFj5q6qLXNMK/g36filnvsp0
	 7jKMQ5uRwBvOQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 5FADEC54E49
	for <ddprobe@lists.linux.dev>; Wed,  6 Mar 2024 00:48:16 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <170968609638.24575.12522570475529277318.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 10ac603e349d160eef2e5309fd335a21e21393a234966a61df7b529c2224655a
Date: Wed, 06 Mar 2024 00:48:16 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1709686096
