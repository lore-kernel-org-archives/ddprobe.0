Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 580573EDE78
	for <ddprobe@lists.linux.dev>; Tue, 14 Jul 2026 21:38:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1784065114; cv=none; b=sddJvCNB8/vy6jS047RuZMFMVkqszxsuutNKzj5puO0ukwKvZzRvOttIpfWY8UGt2LuTnSQeXKfpgdZtes2vKSnAT/EQmpuC3pEvOffG20gu7hGH2zdJakkv2zrnckewKeqq5e9FEPjylAhFaZ+VSH5V3Jr+QTL/NorbIkNsrT8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1784065114; c=relaxed/simple;
	bh=jJR41xA9pLWyqDWB/CALkyw7+8ckyBy4UmKB9A2uG8g=;
	h=To:Subject:From:Message-Id:Date; b=LEeXlNWuNs/MUpwJeEd+gNQD5KVkL/GdbrwlDyb7dOoZbrkBw8mI+tgB5X4+JfzYQZARGmiwnzfvGG+nlKzh1k3geDQs2V0XuoMgp01nCLu4JItEeTzd504qIaXvI7EnpYUAJ6OVbIZ64G0yYBpRVlpmcQ9dPoaQ2rOM+4Ge12A=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=EtjUcg9W; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="EtjUcg9W"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CEAACC2BCB8
	for <ddprobe@lists.linux.dev>; Tue, 14 Jul 2026 21:38:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1784065113;
	bh=jJR41xA9pLWyqDWB/CALkyw7+8ckyBy4UmKB9A2uG8g=;
	h=To:Subject:From:Date:From;
	b=EtjUcg9WRuV5ANE5kRoP98/l2Z2NV4n9vGXE5fEkTqL8b1/FZWN8p8ObTjfc7LBm+
	 Az4ibZg5dpRNkDmYMdPgcKJxcBdWfEb3Xp2h3bWqrNQr6n+N/uShSY3MVIpZRtz+jK
	 UhF/v96HFN8Ryj6O6cbrMpaK/Yni3yCzSC7ESKdmjlCb8iJ0ooBfVad0gKzRqIJZro
	 hZAQCthRbRQnM8IWcTJnadKeRfGQgQVSJ8VTT0P7eoTyQnHzGMQQv0lQnfsJuG/Hdi
	 xFfpVRUq8GUmsUE9d/qOCTW9gSLuFEdFFHvCLi2y5fWxV9BNsYbXtfSluj012BOxsF
	 Nv0hFUCCKrAuA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AB663C43458
	for <ddprobe@lists.linux.dev>; Tue, 14 Jul 2026 21:38:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178406511369.10910.5042551253270515987.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 3d959402e8bd5db59a8908ac57c7bc46e20e3089d5eb61e892d6826152f0fe1a
Date: Tue, 14 Jul 2026 21:38:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1784065113
