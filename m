Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1E41A1C8629
	for <ddprobe@lists.linux.dev>; Mon, 15 Sep 2025 02:09:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1757902194; cv=none; b=VUmgFkfAIIdkYmFdJQAcLCVxGgfjkr52+cVK/AITMdDIm33SfTJgW01k/bf98UelvZaEwH8zpLF7QdqVKP80WbuuJhkIbdK2fzRKGX9O2c5WStHRd8vXICaFoohaW5qPLsivNNjD6uLSgOiqN3Cyi0u/MDmTg5RlRs+5p3qlU+s=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1757902194; c=relaxed/simple;
	bh=lNcI0IaV4EdIAGHc2zTLc5ZJR5qxSkNTxaQs+R5wnO0=;
	h=To:Subject:From:Message-Id:Date; b=ciA9cp5DgV2uQF9+9IIazopwvTrtXnvjsjxrYWAPWiic/jw7Auo8NEvNqA8M/cH3cIce+W3c39Yrh4nI0lDYwJMlZk8xDTun0qGVgaHxNieOX+fEjVL0ZcNJVR3bYkYQ68kBd1/ZZT8El2FzS9KOVuXwiKZOaiB4mrk9yAvkJ/A=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=sMZM9c7X; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="sMZM9c7X"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A0CA7C4CEF0
	for <ddprobe@lists.linux.dev>; Mon, 15 Sep 2025 02:09:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1757902193;
	bh=lNcI0IaV4EdIAGHc2zTLc5ZJR5qxSkNTxaQs+R5wnO0=;
	h=To:Subject:From:Date:From;
	b=sMZM9c7XcQ/MsYACEBvhbm1yMpLn2LCGskKvCP9E8cL3URdcPdYj+tRZ/iVlxvjUA
	 jeBxfmL0tRf17aE+MbJm8SkfDeIfM5WcUcZXb7KaGcucYQ2CoDaT5gDyOPn0+b1upY
	 zt8qLj//rjffumIEMM4MY4wWQhzV/Sj/Z79ZzO/XXqvoUQFwghpRAMM0eQJ9cO1Ay7
	 xehY40P4Sx4Qa+uIRs3y4V4P7BnZ4lrUrZDMO0n80N/K7KYp9C8GyALPUNKSlVBKX8
	 ozIYENvlvYSfCm9Bj7RgQdvsVltZ53Kz1jUTaSRyrfVqcDuEbbMOUmYkqAyEIYjXWo
	 uIlBtnWENXObg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8EDDACAC587
	for <ddprobe@lists.linux.dev>; Mon, 15 Sep 2025 02:09:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175790219357.7423.4300250220982288186.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 8d5e3d27afb363db72316e02978398b3c936dcb07c3d557cc4d26caf94e45807
Date: Mon, 15 Sep 2025 02:09:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1757902193
