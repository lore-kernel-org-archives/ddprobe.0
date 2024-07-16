Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5BAFE199EAC
	for <ddprobe@lists.linux.dev>; Tue, 16 Jul 2024 11:55:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1721130923; cv=none; b=TEGUVchGRKGrrzL7Zt6Hf0nilIG09HxZ7sy/+Shw/Ye5+FIY+muccDLc3FyWdUMAz1iGfQqlg1D8BPoXuLtDU8RKINLGSEi7AI0NUXs61vGqyynGBRgSBR4inEd3MGXLGN+2iV+Z5C8gLgMpUT2/x7Klq3wYJ6fbpuCk4KW8G7A=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1721130923; c=relaxed/simple;
	bh=d5NpGgjSXb/NG/dUem2hx4b9z20oSLwweKF9BwOS75I=;
	h=To:Subject:From:Message-Id:Date; b=VchelfSi/hoe4oiR/07eb8ygozxoX7T0xUyMS1blfP8NyhaAkXPM7WNm/pq98dRSmHjjAiKjCWQnTQNZYi5jlYWzVJjf7rf2i4KEe6WW8eNETIff4PcfRVzztkdcO2nCfIi5XEuE7NtL/6AX00rqdHKZsNbE6V05nOpL1pf7vR0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=DVFFqOrq; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="DVFFqOrq"
Received: by smtp.kernel.org (Postfix) with ESMTPS id DA3CCC116B1
	for <ddprobe@lists.linux.dev>; Tue, 16 Jul 2024 11:55:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1721130922;
	bh=d5NpGgjSXb/NG/dUem2hx4b9z20oSLwweKF9BwOS75I=;
	h=To:Subject:From:Date:From;
	b=DVFFqOrqCwHJR3LpJe0d91hSk+bIvGGZHIwKOI1Z4CHlVMDxBWknPuRtz8pGoGwP3
	 6xvvuekZaA86JajP70SPPXab4GfTFicWrOtzojVCHBJT20WnAPbr1wVTOeE26Ah5ri
	 duTsrHQ24kqPwNEGQeZXR+d+4O5bR6PelpC0xlH8UB4Dj6ZRLKrmPEydDWBmMVaady
	 ZGXNBTtWJ+vklaGg5//wHWm/EI4Os91Ox5X0MD2dbtG9V7DAKFfla2YkXFJyu7yycD
	 GdwxMmGkKlkcXERWYid66u4wMihe1MZzypuAyW9CjqYnlJWoBGEI1rcgsjvKsxJI9h
	 M75bBSjAhiF8g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C7E38C3DA60
	for <ddprobe@lists.linux.dev>; Tue, 16 Jul 2024 11:55:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172113092280.27469.16543857786574460728.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: f57384dfe3efaa6f75940528900f1ee3fbcc3ac6661aac685c7caea4fee5cc19
Date: Tue, 16 Jul 2024 11:55:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1721130922
