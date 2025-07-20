Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 38AAF40855
	for <ddprobe@lists.linux.dev>; Sun, 20 Jul 2025 03:49:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1752983394; cv=none; b=X7VWoLizrbD7qFtriecGay9dCZuH1l3jUyrQM8OXW0tDMA+y9ScwndyaY/5e671GCCffRaFtXuGRJS+QbWmVk/Q857C6uWXpfyRsa2ZF1P5s7LvGdCzRF8wY3fercBUVlmyJ0FRZQCY8b+2LDgAJ9DIRjATWLsBtaIO7MTrlBgo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1752983394; c=relaxed/simple;
	bh=AoHsG92ncGopPGFxKWSIwNZZdz5/XLB9tPTcerd76EE=;
	h=To:Subject:From:Message-Id:Date; b=NmzIsGr6vbUEV1PAkCBTOOgKZxkakACWce2lu2AcS4T2jok4O0iuse7RpkxfQxUbXk450926UGofJKWqG8ylGPKmqspyqyKs1hqR5dt+UAIxgT97XDUMamq66eh4kUj+NHCMhon+79YdzyfayddrZmS+qnxyuvR5V3FaZXUfcho=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=gSOE1V8L; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="gSOE1V8L"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AF034C4CEEB
	for <ddprobe@lists.linux.dev>; Sun, 20 Jul 2025 03:49:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1752983393;
	bh=AoHsG92ncGopPGFxKWSIwNZZdz5/XLB9tPTcerd76EE=;
	h=To:Subject:From:Date:From;
	b=gSOE1V8LhWs2GOUjff97FIE0Q0enWjBzsg6wqEjnSP7QOPK7OnrD5PsYeJxA8Wwut
	 TRoj1kIihuO8I3mRNC3b2pO7tt0iocExY7q1OY419LXjXqDzR4kqnRFlhPkIJTwDRS
	 5J1eD/xcwz//lH5lc+4e3ug7mp27ELFPA+9d5lRL5Unr+BKBBzuyoesAezCI+Eowns
	 zIC032oBEhVfrys4fQKB86P5u3A+zBODy/MDnAaWt7NGch0KeZaBvtI8r4iXV8iO5E
	 QHCLGaKUpNDgJJGu9AG34NvC6gCyhAXlguj4ZCT5L8KT7b9eSKrV9tqA1x16nKsm9f
	 eEAY/xKm4CZYg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 929C7C83F22
	for <ddprobe@lists.linux.dev>; Sun, 20 Jul 2025 03:49:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175298339357.11727.6275741726683266098.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: fd3cf6ce17760cafaf3a6916ec87cd5933836b1586eb3c75dd0672af1245c829
Date: Sun, 20 Jul 2025 03:49:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1752983393
