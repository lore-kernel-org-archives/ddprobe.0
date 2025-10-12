Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1DD2E2B2D7
	for <ddprobe@lists.linux.dev>; Sun, 12 Oct 2025 03:09:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1760238594; cv=none; b=k6ZUhm6hWhMj0tYVhLfx7D1qZdVGiYDSu43XKcjXxIlBxrrwFZ6RpiOTQRALkKJYvKsDiwAdB+E/9HKmEcrKwU+lgsfDnF6yscuquIvJ/DioxzmFKL+25uhLzFzEhR+ujTJG+2EAWqZLjxC0cIrO9ZjNj7Py5NK3xcfURUyyp10=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1760238594; c=relaxed/simple;
	bh=z4/3QxSqOpO6GJxhxJfZq0k8n+1w/Oydc2/diEoN5To=;
	h=To:Subject:From:Message-Id:Date; b=n3U65vLG0+7QEByCXDEvpohKCj8xFTsB3v4SeZmlzPX6bQqh7hz99hno4LEf5sXHTQrX6wkJ/cwG0Qf2Q4KKhiSJk7YHCLkGhiotpUXe+JZAd9DE7rDU8wByUXtCJnHzwqV+bf+BkjDz6sWMd4JyuDW0toV3jePcc6PV5xpR7so=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=TkkCHYx7; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="TkkCHYx7"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A3AD9C4CEE7
	for <ddprobe@lists.linux.dev>; Sun, 12 Oct 2025 03:09:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1760238593;
	bh=z4/3QxSqOpO6GJxhxJfZq0k8n+1w/Oydc2/diEoN5To=;
	h=To:Subject:From:Date:From;
	b=TkkCHYx7M5nFXWSA14XzU9SKrcpJHH14wxKtYdcP8MEUJmZzlppGlCRdLDuxyEgEp
	 7hxYtgynLDM70y4HucZDI3esozI8IzKTju/2+dM3GOQbwJpDs9FyZfgSn+Kg5B/vUX
	 64D/pH2vPAYn7c1F2Czrc/bQE9NATl7wmmrlvzeHWqD9Ms+sY/Zp5pgZA5al3MkmJG
	 fhY/ZS2bvhRVaijojeNXEiw8cjxiyzGEMprdm7aKY9L+CP8bdYBCCepSnKO27keECH
	 ycprdbSqJnDMec7rCb2sa37+QHspsLXNaGUCEoD5tEPNCFQU+AaIJKUNdfo0Vd2koS
	 gz8EQV7sdBBew==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 95257CCD184
	for <ddprobe@lists.linux.dev>; Sun, 12 Oct 2025 03:09:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176023859357.23479.15374669745319981196.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: d3cb54f4235ce07ca58df919611be75397c67b9af7c706f435f674921aa2ef4e
Date: Sun, 12 Oct 2025 03:09:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1760238593
