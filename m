Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0B46D2EE982
	for <ddprobe@lists.linux.dev>; Wed, 16 Jul 2025 09:49:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1752659394; cv=none; b=hFv0XoV4UyZn/UmPblK9SSOuEnjJHm4LCtibcnt+F5sV8GreD8i/yEnZS4/R3DUf6xXUnVjLPKdVj29kMf6q7Y4vQNSs4d0SgR8lFhPDvZrW/U48lcXcdZmbQGToP52Ek19egy6oGdP0rUM+F6OAzsaDNfuXzZiCoT639mhQOSA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1752659394; c=relaxed/simple;
	bh=ZaFWahxyxMhEZVvXD2ICpdo/5D+36ITywQ6Gps/M2gg=;
	h=To:Subject:From:Message-Id:Date; b=EG3uv+uy8j37sYkpR4pfC6Z78ApfGrul9xBtLmq08yZjcLzg9ydqME/ZaXN/diWg35cea3M2RP3NB+vWBUSzf6xypB++abRU5mB22yEtezlBRRbKDQHq3KGEfSMDWXHt3oAHK2uq3xPEoKDSSaSoReFhPa6PCz/s/EV2S28ItC0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=QEMd4MeX; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="QEMd4MeX"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9BDEBC4CEF0
	for <ddprobe@lists.linux.dev>; Wed, 16 Jul 2025 09:49:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1752659393;
	bh=ZaFWahxyxMhEZVvXD2ICpdo/5D+36ITywQ6Gps/M2gg=;
	h=To:Subject:From:Date:From;
	b=QEMd4MeX9Myg/p0mhDMnM+7k59B9VbX9pLTu0fO3wlYdW6V17RZGZ47tkwIsq5kLH
	 dEpMS7D1J/0wXL/ez2gqboKljqd+Q6y8G6QqKQ9hILrsGGKKtCBhaBgxayg6cxxb5c
	 itW4EjW79kwcYBcnvJsnAmMJvpI6+Y6XE8pcy+Tna1NPHfgxjMcPpSXYFvNy3IYXZ0
	 nQADSGM6RWmME3RLXbCGh3Lr8pDUQi+/v9B6wYH2gRHHxJK4Jks4EIBcO4xyPhoOTl
	 oxC6sUTR36q4QUEB+TanuiibnMis0jO0CQdT5Yq3mCQPeLHpoOJx2YFHpa5nIwI9Y4
	 E8UmbPW20wMCg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8F054C83F1B
	for <ddprobe@lists.linux.dev>; Wed, 16 Jul 2025 09:49:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175265939357.31137.10034533383985307133.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 4e77482ba479e92669fba82feb0e6512c0cfe694e6c8bc840d6b2dc96f9ae7f6
Date: Wed, 16 Jul 2025 09:49:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1752659393
