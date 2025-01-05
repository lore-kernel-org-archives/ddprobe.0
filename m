Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 311AD3224
	for <ddprobe@lists.linux.dev>; Sun,  5 Jan 2025 21:55:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1736114154; cv=none; b=jGeHS3k3ZNoXr3Utw+Nuxg818Qq2SlUNLu+ZjfVHrXIGUN7jkYWzMBmx5cCQYlutpXORRMWGGZf/cgOHd0iwjSi1YME46N+Lp4u9O1Xzln/i/H9ubbKHbHKSuVTKsXBukZ9339tzULy4OP+Uz0jf5uRpfbbjqrAn4dCWKY0qQSs=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1736114154; c=relaxed/simple;
	bh=RoLo0l57Gq73iaI8l3oFtOKs31wYDVLDPANq9UN7dsc=;
	h=To:Subject:From:Message-Id:Date; b=W4M+JNqH3sdmsPCy6FQPTEbPGqwGVi8cnbiKuZe0+3GN837HXdSHJlXmle/6lRYONFkVuiFJHkpLMh0vdd8QlKga6k4AqIYwFc6i45My5jdBoL3RKTg0oFgOn5og7q+0aOR7x2vZFb+dLmlZm9vSXBxswJTFHzlkWe1tTOa9nY8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=NqmtqvpC; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="NqmtqvpC"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AC48CC4CED0
	for <ddprobe@lists.linux.dev>; Sun,  5 Jan 2025 21:55:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1736114153;
	bh=RoLo0l57Gq73iaI8l3oFtOKs31wYDVLDPANq9UN7dsc=;
	h=To:Subject:From:Date:From;
	b=NqmtqvpCBTRvoiWLKlL8X7nM0t7KFbd14+eys2vIPYZCj45wT17PJ19MLHO2ks6I9
	 WG6g5+uvHQS9Z1Dhp5HGKrjyGD9OQPEkvfmi+cmGqp3jswSwLQiAjg7zLxnBBuIlvl
	 8MsLqyvoCLQ40CXnwKHMgXRFcaUvz8XZbOYA0gF3U+eQZAFqbwvlQrxqIn6qdYIxmX
	 LFhPcdUDscfmYny38w+rEsjYBKbZm/7/o9w1ren2ebBH65enim1ZEs679GbpfooC1L
	 VjvIBPcRt+ktFwfdn9HEfZfpOek/HvKPNVERZFm3dw+TEsQzqMpmcXDE6/pueBLwp7
	 /mmYaKzhKPfNQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 95ABDE77197
	for <ddprobe@lists.linux.dev>; Sun,  5 Jan 2025 21:55:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173611415359.21118.8559447490776193439.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 59f7ce9cd815498d4366654685091f7c28e09e2bb182023ee230c433e3f4256e
Date: Sun, 05 Jan 2025 21:55:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1736114153
