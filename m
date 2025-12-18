Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2CA0233C50A
	for <ddprobe@lists.linux.dev>; Thu, 18 Dec 2025 15:33:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1766072034; cv=none; b=InZsZtNxmSED55PDJ/E+1wI5cM7ZbZt+HihDlyX5s1q5MA3ff6U+108ev8b3yFEVok3qIZvUG7msXseJQncqe9M/1AYMM4395mCYBcSofzNi2BCHxt8K0pfK9UYlkjLZ0v/CDS3lcf0cBQKAIlZnvu3grJOwlsOfxAYx9zcR+jE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1766072034; c=relaxed/simple;
	bh=6iIB/lrwIZVUvIIS96e5G1u344L2eEzAT0omTG/XJoQ=;
	h=To:Subject:From:Message-Id:Date; b=Z/r+HUnrcIzqev4wy48sqgStnpLoQFpmYBM+WuNA1c35rDShoJfkq4h0XnmnQ/XNcDCeLZzKqbkirkr0Op0BhXW5HDdk28r8VDrquEzF0Pzq8GAT6+mDs+LKYiP4xBph8ICdOS6s2zzKQE60PKWBfH0tZPr4c7joN/zY7Sgii4M=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ToPqRz/X; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ToPqRz/X"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A11D4C4CEFB
	for <ddprobe@lists.linux.dev>; Thu, 18 Dec 2025 15:33:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1766072033;
	bh=6iIB/lrwIZVUvIIS96e5G1u344L2eEzAT0omTG/XJoQ=;
	h=To:Subject:From:Date:From;
	b=ToPqRz/XmDWrjslh/rJzh82valBW2+THzD5n29o7/Xx5K/LyHTRy4i+I2zneKZ7Ow
	 /nZQudDKD4tU9m4N1FV/HFanmZAARDm0GY48xUDPkZpa5JHKc9PPNE24wL1thXuZu9
	 TsC9+BNi7YkOls7OaSfBAFFTH0E/V/IiqLx9hidDOAbTuUZegFKuKvSEav0/6WbnaG
	 656R5U3HGGUcDp9Hdz+lHykzdNUfwaXAyBoDI0bS82caDjWk/05cMY6IWnu4njDUAs
	 TmfT2NIMs/7NGS9YUfXCMddKtDCGkYnCtvxvsHwQqN7eOeoodJvmVHvqpG4MnsZ8vT
	 HD5r1tzm5SxNw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 92759D6D237
	for <ddprobe@lists.linux.dev>; Thu, 18 Dec 2025 15:33:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176607203359.7266.13730021155334001951.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: ae8cdfa0d9c209c74f8502885da52b2ee85eedfc45329e96424361dcaa21b16d
Date: Thu, 18 Dec 2025 15:33:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1766072033
