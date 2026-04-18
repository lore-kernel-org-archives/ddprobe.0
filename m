Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1A39037CD3B
	for <ddprobe@lists.linux.dev>; Sat, 18 Apr 2026 08:47:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1776502054; cv=none; b=BHmC4Bqu3j39iVnCSopupyObb9IVO+NweXowJTGbnBKb9vJ56MsHmbr91FXdpxvwNZiID16VQTcqB9GAeFBnegk+aCaAuZ6iJxzAn6rNj4+ESh6iHnRM8mdP+GoOvLsSRkzdRTFKZHuIMP4zToa41h5T/v5nPPaYmqGAfCGwck8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1776502054; c=relaxed/simple;
	bh=4cNUr1I/F0lU6oqYpOdUEDSWCWmicKQbp/1rMpYy37g=;
	h=To:Subject:From:Message-Id:Date; b=rsevEqLULQeGDQ+Njqcv+SxDASmU717g7zSBeYkX8LxrYJKoF7Nu01SXOak6IlMp4Qm4DfQLqO7E5i2P9dA9ODiBK0O2ANPBOLyYcUp2KH86Smu08Fi1hxNFhi09MHmaOpYWyTLz5SSF+/0yY4RUpaSjxRhcZmP+zxYFkqRE0po=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=FqbmhdH2; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="FqbmhdH2"
Received: by smtp.kernel.org (Postfix) with ESMTPS id BD515C19424
	for <ddprobe@lists.linux.dev>; Sat, 18 Apr 2026 08:47:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1776502053;
	bh=4cNUr1I/F0lU6oqYpOdUEDSWCWmicKQbp/1rMpYy37g=;
	h=To:Subject:From:Date:From;
	b=FqbmhdH23sVOTGTqL+mVdsYG87HqPRJCbnQsfq7WBpgWDJ2r5yNXKXliJQkpuOSqA
	 n5G1r+8QnF/CnRRhrBfr5//pjGQ9rch2VCDCK9mxJu13yiFNpt9UhUSS9cZreGs61w
	 LScxo1DJHsUaPlvpdRavWjMBSTw0SrLKmI+tcxC46D11v43kZhgVH62Kt3teJ2snLl
	 uQ9KBkBtYC0hk8dsl8US6FExssIcscQAeYvhEwwUQlY5AHriRA6IG+8Y88rNABNLx2
	 O+VCpPeC6Q4nyhVAj2l1MtgcS4X9KkuZGX7eK4wQo8r+YCukXzO8uv1lJ6Zeh7BAtL
	 vh1PqJy291hFA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AEDA7F8DFFF
	for <ddprobe@lists.linux.dev>; Sat, 18 Apr 2026 08:47:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177650205368.24184.2594106564005951512.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 4f74cebffe47b430005864be1d2c2378421386d1b300202f56b7ae5d0f1f1f34
Date: Sat, 18 Apr 2026 08:47:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1776502053
