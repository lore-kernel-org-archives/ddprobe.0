Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4D424155C97
	for <ddprobe@lists.linux.dev>; Sun, 28 Sep 2025 21:49:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1759096194; cv=none; b=lGXpr09a99+btDUXKT1BRM5gFZJ8TMN+xVyXwqEmdhnOQ9QRePC062I/KHP7p9DnO/ZY9ErnprQutZr+L53w7Xk1R85U2Kus2MaWcPVOrBpPEZlikn6AU3UO5ZMAvlQ3NCRF5kjaiOUumXAfgxh0xqm/klbQfWByqHerrgc4HK0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1759096194; c=relaxed/simple;
	bh=2AIqwQwcIet8RogzrBXbWr/4/bGeIODXP9j3uukQ/fw=;
	h=To:Subject:From:Message-Id:Date; b=VfNlJl5myPxhaXnMSHSrHdU8+ACVuWnZD2XDLfA2XWIkfJW5kSR8QsbYtUZgbU5Tbulsdt1uY6Wa5NICvqx/WlzJOayXv8dfQl68RazNDawRamVaMZFMhumpwPTv+7AXID1b930LustpmWa6kpBzbSQub9zrmmX6b4kqB1UE8gM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=n9dWpjW1; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="n9dWpjW1"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B8D55C4CEF0
	for <ddprobe@lists.linux.dev>; Sun, 28 Sep 2025 21:49:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1759096193;
	bh=2AIqwQwcIet8RogzrBXbWr/4/bGeIODXP9j3uukQ/fw=;
	h=To:Subject:From:Date:From;
	b=n9dWpjW1OQu9bP3t4l+GGFoUSNVGdu6M/BIWabb5VHED/5pM51hZJ2b3X6cR3DesA
	 aIT1obKAlTkBShl1JS7xvW9RGV/gW17R8KZuMJQVG3VBXluNXUGDgto6jLEMNcbqeI
	 imVkHLop/Nsri5gZktzDT2/ou8I1E0T6Vvm592Qlm7FRbXLwkxZksSj7ZEX8gcsuUu
	 B45VQ2Sdor8ofv5EalFT7dPOgqzxIgSwUL9PeYmV9/gc9fuYxbExLPSfPFSqyzzGKH
	 DUYW2MYhsXbig5A8Y7sGP0YZJaytKwfPRRXkkG0X/rIe25TDQYZqhlbCB0/YM4LJp/
	 ovVebOf1a06Iw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9AC25CAC5B5
	for <ddprobe@lists.linux.dev>; Sun, 28 Sep 2025 21:49:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175909619361.19740.6387641198574269045.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: a38a7d6e19ece2cf2dc659f45f7f248d0c74a3b96ac4ece32e27a39602ed93da
Date: Sun, 28 Sep 2025 21:49:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1759096193
