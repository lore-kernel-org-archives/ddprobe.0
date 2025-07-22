Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3A0B97F9
	for <ddprobe@lists.linux.dev>; Tue, 22 Jul 2025 14:29:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1753194594; cv=none; b=ZJQCp2xQb/UlQVhQr+znFTavnNmcZsQQ/PYa/+V6nFgrs7/SD+kM/jf2CIo3ZWbX5QReN+/497PPesqgQayoH5tfSCZG9J34JiNTWuEoXgLftoTb1FtO5T6B/cMZKQ04DqOGvcuaBerpkjxL4M8g2Jc2NEGygh2LmkXQoEFMZ5g=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1753194594; c=relaxed/simple;
	bh=sjOsEhU7rRUFX+KHxHl1LFbtnZW36xuHUhTrPuDIA9U=;
	h=To:Subject:From:Message-Id:Date; b=g7joUVKVgcC/YSMyGHm+HcUS4xfplHpJm7kBseNn1AP1xJlqtOQe7gG14l2pDlT3XekzdPre00CPOMlf9IN8oVzFos9MZ/xwrTdOYrHMbyGdMr6JP2pMGj54EOBbJ7ssqTccROgE9wEP1n1SWh+jkGdLSw4GP2gt56zCpUjMgpM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=NUFE1Wml; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="NUFE1Wml"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AC360C4CEF9
	for <ddprobe@lists.linux.dev>; Tue, 22 Jul 2025 14:29:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1753194593;
	bh=sjOsEhU7rRUFX+KHxHl1LFbtnZW36xuHUhTrPuDIA9U=;
	h=To:Subject:From:Date:From;
	b=NUFE1WmlSZOApMjKoI/z4a8g5L8SrGD53331RjCOh034qi6lxf+avkVE4CY5KRNbO
	 CV6uW/W25OMvSB4iQc4ntHkPkAq6FSHQx8jepeAkcHzeaXk80XrXRk3hxuw5kT6AAC
	 w7z9qM7pzI0RhSIR5OTUlHDA3BdUG3ze/7t4WDZjzG9/Z/lnapuJ4ieQXK+v2jJFpd
	 YEjNmimOUc/Sq4Px7QJJMeRf5wmgiwS+0ehm4jVyugfYWY/OSs2W1ELxq68yqvQ8SO
	 n3PmesZweTniVNb42eWtKyFdqwxuLXwSBSfH7HAY6uu8WDa+HAvkW92Uw9e/5LDI/I
	 WJVn7R4Tg//uw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9904CC83F1A
	for <ddprobe@lists.linux.dev>; Tue, 22 Jul 2025 14:29:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175319459361.30102.2006777351318531701.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 084d0e2be27e3945717d28bd3921e1891f359d59fe00ccaf501bbfc1befa8d63
Date: Tue, 22 Jul 2025 14:29:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1753194593
