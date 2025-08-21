Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2686F2E9ED0
	for <ddprobe@lists.linux.dev>; Thu, 21 Aug 2025 21:59:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1755813594; cv=none; b=pwXHVeX1uxmM+rYNY/yfSf6nNRU8jTnexCpXLmDciNAgl+ttGUXk5H1R576Jvrc6P64MKZFijmK+EZpNvcFoWOvRN0XeNoFheteZOf9DgzNPE5SPGqucWUN6TudaSdpz//5BMR0zd7j/S932LzWEV7CrRZMRSWhMzOyiWAiIgaA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1755813594; c=relaxed/simple;
	bh=7foIARoYzt/v49QcNrQHx8iPhjRuzjgZk+uPBIk0pnI=;
	h=To:Subject:From:Message-Id:Date; b=qLs/zrZbRwmcFaryalQ8dCvTDeVEvc/3jSw5y01ti0achFOgZXHMKFjWMw/AlWAGuKBoY9p2NHjeIN+AszsARc4Vbm1TB85lY9duMJPvW/S6vh8Eyxy3LlFeRcCcSagxTu/Td44qhn9hL8+5Zjeomi8HVMbWonF/tP4eAQXkGG0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=SyhpygEI; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="SyhpygEI"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9CAD0C4CEEB
	for <ddprobe@lists.linux.dev>; Thu, 21 Aug 2025 21:59:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1755813593;
	bh=7foIARoYzt/v49QcNrQHx8iPhjRuzjgZk+uPBIk0pnI=;
	h=To:Subject:From:Date:From;
	b=SyhpygEICnPaeBjm+R43vdU1CoXQAXgpwDvlqIIVTvZNFOl3muzCA+Yeft15I/NBv
	 vykeO4VrlOxMLGOuesOkO3XmL0tHQ9+Mw2kItk5VVGJHqP0FRXdtv/DOeSM4V3EQqR
	 W+0jcaHO1AnY+dWoiHa0yNouNK/YLSGfgc0WlfqZe0ZQMy1u40IdeOxwTv5JlNwo8e
	 ChLt5HJKzIw+y/abMbHC800kP9NAY7so5G6EMgfLRRM58yc0wkzj8ncExorUI20UHJ
	 PIZ44Jxh/CcyVbr1K/lzhJCaLI45SDXonpKN0E7J67hZ5lif6zgHEBUQtAl6Jrz93+
	 PLgrQyOO4JYJg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8E93FCA0EEB
	for <ddprobe@lists.linux.dev>; Thu, 21 Aug 2025 21:59:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175581359357.24091.10025385110678162396.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: d19f7d788fd8e177f1dcb42f88a04d9ef9c809c57f0b1a69df6d0a08873ab87f
Date: Thu, 21 Aug 2025 21:59:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1755813593
