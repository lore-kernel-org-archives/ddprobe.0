Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 621682F5C54
	for <ddprobe@lists.linux.dev>; Wed,  2 Jul 2025 18:39:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1751481594; cv=none; b=j2IhvifrwlFeG4GTW5hQMEqd7otQhajqAGKyA2HyCPznusUbYoljZ36F4koXEmAI8Ej3Wk0H68Oc9zDxi6SR32ElAjzHa8GI9NeGsIF15P05hALhEYTJ37eCkKdirm8rg9/d8D3nRLWWOBO1FVs9Q6+kfeEYKIRO1etw+OYoeXg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1751481594; c=relaxed/simple;
	bh=f5D98JlAa5d5OMk2v6FTEBhdUSK/bZt7R4jF+TLICcU=;
	h=To:Subject:From:Message-Id:Date; b=OO89bywWTEKAOM0tiy1U9j5VtOMB2F30VeVLnGeeymgVyzBwtdzCxu2Q8u8CC71ft3MS2Yj0tG2T/ixXLAwNPa3n6TT9ib5y1e2SCLRN4YEFLdkbB6dN8UcNh6Yk+Z/HJKMALlmv3tr++sNAShHD1NuyWCM3ZcoY6VAhXFvxQ0g=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=tEJJRsyr; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="tEJJRsyr"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9CEA9C4CEF1
	for <ddprobe@lists.linux.dev>; Wed,  2 Jul 2025 18:39:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1751481593;
	bh=f5D98JlAa5d5OMk2v6FTEBhdUSK/bZt7R4jF+TLICcU=;
	h=To:Subject:From:Date:From;
	b=tEJJRsyrT+9GfHmjD1EdlZ/kshMQJLmLLI+j++3sqCAT85wnuctN59TVvvgwpqN2N
	 T/pTrpyhkJLSSjAXnGHtQxbtylcV/gfZ4v+ARrlj7jT8cW74GWqbeTkBMD6SOaunnz
	 /9tV86XrSFEhd21BYf7PqaODn4NfhiXnpY9W0TP3drrYBNyFUGFTNjrDVk4MEG2x6r
	 0GFa7QrCjkZFOLoamK7KpPOdWb/sbGCzixIT8kkQX0ny+18UUAXwFWe12MUcBv5LLn
	 pjnrNZ0RA7LAtBjleHLYgfeSOC8rEnXpXCI1B/9aZTKuFR9DgrlJEzTDPrU0a29sD8
	 MmzDnxbnuZyPw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8FAF8C83038
	for <ddprobe@lists.linux.dev>; Wed,  2 Jul 2025 18:39:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175148159358.30469.8426401728533852229.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 0a125fd2e2a4a909421eeccaa0df1fad6863bc14251ffb57c9c5d25b57af8137
Date: Wed, 02 Jul 2025 18:39:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1751481593
