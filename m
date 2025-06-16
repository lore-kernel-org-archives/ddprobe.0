Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 16F9D2BF01B
	for <ddprobe@lists.linux.dev>; Mon, 16 Jun 2025 19:49:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1750103394; cv=none; b=QmsrZ7d6A202C3a1ovXNdWXnOAFTqO6ByczNr/KYAJCSbNnbF1hWCUAOZlbcIJEXhbUt++A8FahAXuRdjInFJ+jyRFTOpNmQP5yJyJTWwMDpltD31NXKgNT1w6pErtmp3gTZJx1OV7BimA581cct/OvUOpePQsHLSBg+1i6f32w=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1750103394; c=relaxed/simple;
	bh=3wmyLONALBTNqLKbn5oRXWEE9pFQmVCsr3E83l7wYUk=;
	h=To:Subject:From:Message-Id:Date; b=JcVHUuiWxKxo0OBcniZ2RXxZ5eqwLbhfolE7s9/9pMBK5z/3kuUohWjhcrAWKVbR7/hL3ts45Sq+WgD+NiNgD3U1hIiAyRyz3N12t1FEkzjoA6PMfNWQZlk8BpwqKbXJUO2T6rR1fWi1XMxllpRlI76Gel8+3OjJ5WvTy9zaBw0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Aj5twQ9x; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Aj5twQ9x"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A8270C4CEEA
	for <ddprobe@lists.linux.dev>; Mon, 16 Jun 2025 19:49:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1750103393;
	bh=3wmyLONALBTNqLKbn5oRXWEE9pFQmVCsr3E83l7wYUk=;
	h=To:Subject:From:Date:From;
	b=Aj5twQ9x0pjetI7gAQ4zEjW1Y0+inLJXs5gYMwfewEhhkbdJ7936UygBEi444DRJQ
	 dvkhIPzDOvU/bstV5hYQnH2CXk2xwJDb4uG6iaQKH0hNgWjRx5DhS0+MYQ9KNdR2Gh
	 gmWHptwPUy4kyIbXpQsGXD+Cb/3P9/N0HP1xLuEezAeJu/SiWV9VhynYcT5EmDcNrZ
	 W+3qOoBO9+JAnBcE2ZGbaFfGxdA9wejQnSHixQyN5PztFJmLBxmWhkrj5bJP1TbcI+
	 s4bccOfAR4EtdUOtb/ReqjEXAUwiIUMsapUWtoAs8+VX7jboMt9NnWoMzjmOa6qaeB
	 oZyX0LD1g3t/g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 94C80C71159
	for <ddprobe@lists.linux.dev>; Mon, 16 Jun 2025 19:49:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175010339357.16158.12464735439671539516.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 77a53222e6355da2fd563bdb132d69f965e70c001b474a91db78f2d305f45967
Date: Mon, 16 Jun 2025 19:49:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1750103393
