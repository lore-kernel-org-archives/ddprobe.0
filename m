Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 12B184207A
	for <ddprobe@lists.linux.dev>; Sun, 16 Nov 2025 03:00:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1763262054; cv=none; b=b8VQ915HnRiifAYMGv2KHjWaolqmCYrQJMjiv4oOl3MTK+/Ly6luNuXm5BDosBvjCxySOTJWj7to0ZQ6PXYGYU06MzEE3xgzyZDkBWwI7iI2JZ8/23awoPtYv4aKAmBPEv7XrfsmWDEFiJlL6KoF9GrMpTQgO4EviEjm9wqE9Ms=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1763262054; c=relaxed/simple;
	bh=Mit5friRMwTjTgKbBXmjN5NLIMSsQh/UjY5WM239/EA=;
	h=To:Subject:From:Message-Id:Date; b=NsBV7iuxMN4drdVTyH4LVqfXW1QTud2TQnHUUNRrbvpA3XKBZuGFeigX549y+wRfhZsuxKnZzfJrwH8h3vQXetGMjyot5CjYHXFna8e8FmjMTpWZAMSg1+Gtg6EqmsC1urdf+DHeDZPRCPH+j0qQ7kGhQTQUenpV3dbBtDbjjSM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=XV4yHs8X; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="XV4yHs8X"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A4886C116D0
	for <ddprobe@lists.linux.dev>; Sun, 16 Nov 2025 03:00:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1763262053;
	bh=Mit5friRMwTjTgKbBXmjN5NLIMSsQh/UjY5WM239/EA=;
	h=To:Subject:From:Date:From;
	b=XV4yHs8X/jiJG8eWNQWeWKahlLTscQOyPcMhz9bvuJsHBa/jVnnljVwMLS+bL4KU+
	 wtuDoBd9iFPJEJ56hY/483pkpWSQWAF4qzzT8McW+Io64jz5g0w/TKG5GwFLN5bTxV
	 3TBEdG0UdNlKVV0ve8LBlKyA3gCHvxtUVSxnZ9Pnu2zIA6pmtAgL5arT+WIbi1LS5q
	 pNJm8gPvDs04uOS19LoEqDqm3xsdOdFvmY6tkdH4PC6ue1uCqLjFRGe5BnH/5LpYuZ
	 OHYKTH93YZAjxMFIH+mjYcJIwg2WXaF3K6Ose+3Z4+12VLMklyOccNJ/ml8cZrKkxk
	 U842E1vvtwWVA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 95C89CEBF92
	for <ddprobe@lists.linux.dev>; Sun, 16 Nov 2025 03:00:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176326205359.31204.12221277577397086551.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 7b019060e844423c011fe6f8c17221a02af52c2e438921e60fd1a6df579e8173
Date: Sun, 16 Nov 2025 03:00:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1763262053
