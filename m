Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2829435DA68
	for <ddprobe@lists.linux.dev>; Sun,  5 Jul 2026 08:08:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1783238914; cv=none; b=tcc0RBFzZTyKK3pB2bIaKqqPDexnF+hIhJ00H3TsfJ1PPNbiZpd3StW04wjWvI41yubDHFoR7JzB2t/JpK6rM9CAY+R+y+cn64EBbgARSVJFaJtILXLildWZu8oPSA2uSjixC2qij1x10ejw2pOHSLH31QHkk3FkfVKeA7Xq+M8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1783238914; c=relaxed/simple;
	bh=lqbpx/0On7CW3Wt6ZQYLiJ3qp9cucTo7u4/DDQsIvrQ=;
	h=To:Subject:From:Message-Id:Date; b=pCs3mKNQ4PZH0FFSbJHipSvhK/mlMQXKsEJcE4LMP0HsJxIjRjXG+xgsZpptjoNkWDEmg0n/XwM2R+MV5ES5O9A5LTRvYU0rQBbGe47eNMJ8JU62GmKDZQcnajaiBTFQp/GUybGw28WvZNBtKYYH2jvlFddnPOceVoLUxIZd41w=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=dmsKhRlF; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="dmsKhRlF"
Received: by smtp.kernel.org (Postfix) with ESMTPS id BA925C2BCB8
	for <ddprobe@lists.linux.dev>; Sun,  5 Jul 2026 08:08:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1783238913;
	bh=lqbpx/0On7CW3Wt6ZQYLiJ3qp9cucTo7u4/DDQsIvrQ=;
	h=To:Subject:From:Date:From;
	b=dmsKhRlFvTDhOlTGeKJeCWxJyuR74VKwMUKPBxs4W038x4doFreQAJu6L6L0ykjos
	 czk4A+gbVKUZNFTUM3tVBiNNQRY6XtIkUinefpdisRcnE3Y0ASQ5umwe++bO4A20LA
	 vtTskQuIFx0rvQ4QvXmVZIA1OmVxYBbBgcuv38R4PdjdwT2/MxAYcmTexPWJmiR0a/
	 CUNYb+3WLHCAAM5TsiVWSmFCp7QAFh7bHSXiWRIKWIzrf5MarHK0+zK9hf7yHp+OLP
	 k3gYRpCqd/1iiue2ic1026YVUXB0Kkq14ZEok7pgQRJhWXY1aSocWUFheZ1Ze0zY1i
	 3bss/+O4octgA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A7FC0C43458
	for <ddprobe@lists.linux.dev>; Sun,  5 Jul 2026 08:08:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178323891368.13321.2792245429089458160.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 8d752590b1efbbcf4b2988f1dd92cc1b908dfc31f4177da417997daa7fadc748
Date: Sun, 05 Jul 2026 08:08:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1783238913
