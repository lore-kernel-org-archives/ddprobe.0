Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2A0C026738C
	for <ddprobe@lists.linux.dev>; Sat, 30 May 2026 19:44:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1780170274; cv=none; b=tHP4NhExbHQIjUfKH6LWAoq5mk8Qa8bmpmt8w8oWJxwdWo5QXs+IJS0yfzlGZEU8R9ie8ROBXQ6YJDK2U5WnGxeH9Zq85w7j+5LPs25uChUrCzYBngdVt6cBZoOwbAxjAhUoE5yI9ZA6c5pXXhguZB/TagPhHU+/J7PYqr6pKJo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1780170274; c=relaxed/simple;
	bh=brJiOfOVivkqZtdLVT3601I+wKCN5K1ol8L5r0w6XZU=;
	h=To:Subject:From:Message-Id:Date; b=qQf3rrSbbh2PYeyGcQNYmEAYjSG36dPlHiLojox9XwqzLPk8gah6UCdIZVKnWACr/WnAVc7wxEYIkvlmFBo8kvJqYcr3RB180XaLrxKM5iE0b+UmcEhDcU5z4Uyk7wrgzwqIbHlMFIbiVl7dgff52oao5gyQZP5iGrQ6q/AzSnM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=WkH8PGf0; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="WkH8PGf0"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D084DC19425
	for <ddprobe@lists.linux.dev>; Sat, 30 May 2026 19:44:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1780170273;
	bh=brJiOfOVivkqZtdLVT3601I+wKCN5K1ol8L5r0w6XZU=;
	h=To:Subject:From:Date:From;
	b=WkH8PGf00BbH1efz94M0kMOxRsBG8f4O5538fjj5f5O0A/98Qkq+eYsXqHVTi7giP
	 Dye/gy6UlJ3sDBFjQOJr7e8/RA84mQX+B2Ecd/yS4DzhAxpQdG76kNheLBprf/Sll/
	 NhfZNUOAibUf+gq+9Et4U7s4Y2TtLF/4KZ2w+A7M1ZcASdFIFp+gzFm989ogbAbMy+
	 8UGHjsJFUOBG6cTdRGfv71cmDyZJiVU130vf279eybF007eh+YckOnd/kSvK+XvNcX
	 OiQf8COljRSBeSU/S4ASPon1Jke558xHS5STijqJFWIiJOFWsSvP+a6pHFsKRPiE0R
	 5fqTKby/0UJVg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B332ECD5BD0
	for <ddprobe@lists.linux.dev>; Sat, 30 May 2026 19:44:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178017027372.29456.10814032210350229160.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 77658dfaaf8573dc1d477e87fce43b8d8a6361c03478d2457bcba69e8b4934fa
Date: Sat, 30 May 2026 19:44:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1780170273
