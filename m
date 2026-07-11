Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3AB3330CDBC
	for <ddprobe@lists.linux.dev>; Sat, 11 Jul 2026 18:48:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1783795714; cv=none; b=A1s2yS0WM5SpvunGQbBrqUYVZLyEoCrdg0VOa80+3aK4RgCuuM1zI1OcPaKrOdazgfNxc2JyNU9XaUiGHAeluGsfaVA8+nFgjmrSKlq/YCj8GvwBWC7PlGrd0LFkZH5pnH7J0PUZIu7c5pyRhIUq2apLRCNN8p/8pA+TYUNg9zU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1783795714; c=relaxed/simple;
	bh=rYQX1jYq5/HKh7X2lGZrASzAaFgHwbKGEJi/JS8vYtc=;
	h=To:Subject:From:Message-Id:Date; b=d0+TnUZ4imQbgKPU66RjYMNsNFiZq4boMc90rE9OnjNIf/N0bVJlfyNUAnGHvKXdsSOHfB3e/TdCG7A863Re24cmF9xXgXLtCkxL3hRrxEKgbjAfg8ClJElMqQqYbpjKTZ+zFk69ILrbLrFIov2VwpgNC8SHno5/eULw9jhAFY4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=UWV0H2Wl; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="UWV0H2Wl"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C9FECC2BCC6
	for <ddprobe@lists.linux.dev>; Sat, 11 Jul 2026 18:48:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1783795713;
	bh=rYQX1jYq5/HKh7X2lGZrASzAaFgHwbKGEJi/JS8vYtc=;
	h=To:Subject:From:Date:From;
	b=UWV0H2Wl/PAGeBf3HvJgZvKtI6kAaLPXWNkPAwAjXiOxR1p5XHEPAEqpGluB/NqXy
	 jEFFFwPnk56NAGmKVAH+elTkaZXK/3yXNo3BuDBJXF+cdxNfv1eLwp5XDp1rG/x8Zv
	 7v82CUKLagi+lLqpaaZ74XKoCREACkEYX1UxgrwL7uYMRsd8RGICnZOAPMSBpBtL0g
	 h6LUiiAb1rFFhHxo5IjTY3t50xWlDD3fHz3PGCDYffUfcAFAVLLGYbB4Ui54x2Seth
	 ImLN33Hf9wWLLho/g4oXJEYYqYVpuDQA3spcQYl8qNb+nC499gkKyjHCgUa0V8ckNH
	 3fgAhLpSmkmZw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A9B90C43458
	for <ddprobe@lists.linux.dev>; Sat, 11 Jul 2026 18:48:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178379571368.3390.6046027206954947916.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 5f63b668f75362439c57c482db2d1cb347faf0a14fed60e783c7bdc2981399bd
Date: Sat, 11 Jul 2026 18:48:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1783795713
