Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2B5EE13B7AE
	for <ddprobe@lists.linux.dev>; Sun, 15 Jun 2025 19:39:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1750016394; cv=none; b=nj+g9E6crtmZQGGkmAx7dK39w8KAOoyP2la01hCl10tMo3nJH1Ew5nnekHCr2gaOtbLhK1AQwOWHnkx1pznuB5er8HcbSkUx0KMykNBkgxZzuuUTuul92jzqkb4kAop6iKhBHnhTDLywMxxTCbJ49gUmFRy6NPZ9cu6h84qQeAE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1750016394; c=relaxed/simple;
	bh=BnxbBIsrLpjHpRHony8rqr+WzJ2ZY4IVPjlsd/6BqlY=;
	h=To:Subject:From:Message-Id:Date; b=jU5bJewQKIt1OYB8mbiD9or+2KldJl9sQikET7J5p8wF9XeSZ/Q4IKw4a8KmmO7fFMz3j+ozmd+Zz10xOmSwPWK/4GrDBGCLbmmypwUQahYS+JzPdANa0XqJoVvPpE2WT3TFm7gG1OV4cSXY+zNfh97oNReDt4Snum6Y0+iSPuI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=gjBbEomX; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="gjBbEomX"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B1D5CC4CEE3
	for <ddprobe@lists.linux.dev>; Sun, 15 Jun 2025 19:39:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1750016393;
	bh=BnxbBIsrLpjHpRHony8rqr+WzJ2ZY4IVPjlsd/6BqlY=;
	h=To:Subject:From:Date:From;
	b=gjBbEomXu9KXiR7b9kKEY3B9og/wAQFDDIrT5QS6X2QZa+vFVlfwF6GYwIJIr3+1S
	 jYx+SjwnDUf0ww/9QCjRAGuhliIjhaG+oHvBluzn6E1C0/CGxNjzMQe0k2SEcV6UK9
	 FQOwr2tMG1PEQ+brxJJ0I7K07LJ+937OV/+n/TSCv+iNm7P4WAGXUJBKllUq8oqqqO
	 lfyQ6AkujlcJcDVZGCCYBIUn69a5A5JY6FZVXJbxe3372x9ynUq0XdYJVwv2rfLTtb
	 JhstGNff3TuXy86PV+iN7XGookvci5KMJMwA6je6E2u7cdLbTXsw5PoU7DsadTlXCe
	 /yTx2lVBwX6WQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9BFFDC61CE8
	for <ddprobe@lists.linux.dev>; Sun, 15 Jun 2025 19:39:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175001639360.2273.1819138741343683272.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 29b61ba15e6eb03362da13bee977dcd60f43f03d21a69f36f5b30848afd4c0cd
Date: Sun, 15 Jun 2025 19:39:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1750016393
