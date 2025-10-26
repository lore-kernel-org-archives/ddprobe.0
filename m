Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 22C84129E6E
	for <ddprobe@lists.linux.dev>; Sun, 26 Oct 2025 05:19:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1761455994; cv=none; b=eBtD2xoepxdMC+aakh4u0dyaNnEf7yrTBcPAoJdYKvGr49FcXyRm7d3b6CipoAkn/tbsSFzebEmr/cYHteu+96PELo9anutPR5D9f7ZInwGLJSjxGYaDnAFRB2/DFVkwM6qPvfxw7HB+okxHZ4Y6ow2/OCilYfpQYJmc95+f9LM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1761455994; c=relaxed/simple;
	bh=rxuDRVzioWzcQwotCY5ySCVldaJw/pebR0KDSfeHRTw=;
	h=To:Subject:From:Message-Id:Date; b=O06Ra61d6+O/kKxneUJx1Lun9PYelZOsgUBpAhO7C82dCg+EDgpgspMaVOEz1N8J0+NLxfIr8FTbK9Ijvn07a3ho73YQscBl54GiKEkIL7SA+WdOMnICfXVH55cNOVTOQvmRWqhITzbpF7wxwRmh/BmtU0eTNrX8tPSPIfiedJc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=HCecWyLj; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="HCecWyLj"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AACA3C4CEF7
	for <ddprobe@lists.linux.dev>; Sun, 26 Oct 2025 05:19:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1761455993;
	bh=rxuDRVzioWzcQwotCY5ySCVldaJw/pebR0KDSfeHRTw=;
	h=To:Subject:From:Date:From;
	b=HCecWyLjR1GvyAU7RnkCjUQvZ/nKbZ1pbIjQ1HiX/Jk6dPiRwp14PLEo8N7KwadzT
	 vVtpO2ZcaEvdwjgiax6mFI3+YkTrdtsC7h/q+NRCh2nwLiLR3fZdYRgbWM4QwzKJ8t
	 Fh767wOpVueB9HtPHC4plaJupRHwBZA5+eBnYn7kZ+JRYiFcztBkBn/5o2f83N/de/
	 fOJG7pXjd9aKzmjJAln68c9/Wtv2HTQFRm5WtFW7Y/zClxfMzFQ3n5AMrig4kl5P9h
	 nvj34+GZSVMJx2l+h0f9dJM+afCJ9WHr33Q513CCrPDrD6R8DYHU1b55MLLw21J+ix
	 SaFotz2F1xENQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 96B18CCD193
	for <ddprobe@lists.linux.dev>; Sun, 26 Oct 2025 05:19:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176145599358.1093.11997781243908833759.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 2455adbce520b1bfc67c6b785f54a23808abfd2712a926e9a649da0e2c42050b
Date: Sun, 26 Oct 2025 05:19:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1761455993
