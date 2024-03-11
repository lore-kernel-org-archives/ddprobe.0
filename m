Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 020DF10FA
	for <ddprobe@lists.linux.dev>; Mon, 11 Mar 2024 06:58:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1710140297; cv=none; b=L0QlgOn4eaEzonxtYrkylwpfliRFFgH/crP5D1pqK0roXa8YjvUeBezo2Sn98VmxPWOFEuBh1uZ8H0zvrN2zQsH7cTpoXfgmAzSPiC23KKONwSX9AkoYOAYWuumXQGyMdxFfHx3kqi09SKDTFUF3ZN+YIlOUopfow/ZLKOBYD4k=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1710140297; c=relaxed/simple;
	bh=YvXhOEWvQsP3B0v/ot+L5HZp8Oi5ZxwaL3d2g9yLiF8=;
	h=To:Subject:From:Message-Id:Date; b=Ponoh1JxmGGnx/yIcIa9L/nBfq45A4EQ8qhRMDROxuU70ZD3S++rcWTeN3mhXelkMj+zBoh6DdUSFvpA2Oyw7t+T/5qNai4UNWTzhzIUZtBB/6s2I4gKtvGZWXOtaKQyV8ZRZwmeRpHOZUJaBcqxd2qHxqxF7XsfNCniNl9bzrs=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=DA8M40HH; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="DA8M40HH"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 8A640C433F1
	for <ddprobe@lists.linux.dev>; Mon, 11 Mar 2024 06:58:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1710140296;
	bh=YvXhOEWvQsP3B0v/ot+L5HZp8Oi5ZxwaL3d2g9yLiF8=;
	h=To:Subject:From:Date:From;
	b=DA8M40HHyD7JKf+irGnUWiQtNDbCXXqGIGtiqOx6vzJ+Iz4E0saS3LRQYlFRXPWvV
	 1Cc+/G4ZSYURqceVUAm1vjSOPSkrxxhARined5RJbjxen702DaWdZ5iP+sMoAiulWc
	 Bsj2ZkhqVzj37yd33NZ7x52cVdFNsVP/3215XCSYQ5rsQe7nDp0Gcz6pZLRmFzOEP+
	 OoTiL3MUk59bw56D0AXGek871FNGjO6/owaToZWmwIDWyCG9OknGyXCm864PPV2mf4
	 bvabuATAFXGMvjdrkAO/f7ckF8QwBBO+rrlscRlU1f17urHrUaPLDlzBk39hMvNJeU
	 m7Lf4841JDX5Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 6F0E7C5475B
	for <ddprobe@lists.linux.dev>; Mon, 11 Mar 2024 06:58:16 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171014029638.17348.13220909710388565214.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: df79649747cb8c6bac22097c5328ef8a27c63d0d81deda023066ce419990701e
Date: Mon, 11 Mar 2024 06:58:16 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1710140296
