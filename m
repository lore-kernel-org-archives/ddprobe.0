Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0D43B2581
	for <ddprobe@lists.linux.dev>; Fri,  5 Dec 2025 20:52:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1764967974; cv=none; b=R6IYXyaG/4Bnq0kD+d9FAbuwk/EREKfTXgBgaNmlqLhomsVYFNCDGAyE2GXA9IKDRr1eUiPU97BStUQwNLGGPrrnh2AjnllMumpWKJVTVLH/GnRnlkpqj+xtyZJ/AaW8ewg/ExeN1PHazDNq3DbxsFhu8auYFdo5sy1doZV39O0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1764967974; c=relaxed/simple;
	bh=7H68gzsxDMuDUjSKRY0fKtare5iGhUgxvOuhEn0jVys=;
	h=To:Subject:From:Message-Id:Date; b=lpt9t96H+n5ta2QYwEhlb8qHqGRToq1wLYX3X8aLfw2EhcN0q5SdPYHpWqXFasaS1PGKu/zyWECmLixICBbVMpG0sOo/vOxg144U+zVq1o9hbLt0sYdBW/9VDWeWHsc9WpSJVkUNBYWC74T9VaKMVuK5ql+xGRvUrLGAqZw2GhU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=qkfXtKCO; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="qkfXtKCO"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AF34AC4CEF1
	for <ddprobe@lists.linux.dev>; Fri,  5 Dec 2025 20:52:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1764967973;
	bh=7H68gzsxDMuDUjSKRY0fKtare5iGhUgxvOuhEn0jVys=;
	h=To:Subject:From:Date:From;
	b=qkfXtKCOdqEOquWZ/g054SC84Z747SW4ZlpKSrBt3z5wK3ac/jcXcRFzyq4fFMYIq
	 V43UivGV5+xYH7CrRdoShgoGzKCuvPEFQt8Ol+QUD2oyQYoPj99zx0WIsfdNYCk98b
	 GJr3Ie3FPzpIT/v07ekqm6dcdYHxhtNQ+GCDqShaIzOIZQu++SynNDP4143UyyeKF9
	 FwoKtbYlsogbxHK1ivJ41F6OprlUb989PLCJ7aaqxH2pH0LtyoUaIBXZiu/8wFF7Q9
	 oW11mm404nnytBV9WeYRt3mW7Stiqs/SLW+fCMfKzodyJIIn1hOje18+cGKRaBYjQ8
	 5wlI05yy/DIDA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9914BD374A3
	for <ddprobe@lists.linux.dev>; Fri,  5 Dec 2025 20:52:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176496797360.3076.1461749313472001259.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 1e4e0a8a80bb90043a313e63487b7859c0c21b3684593653f9ccfd68d86a85cb
Date: Fri, 05 Dec 2025 20:52:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1764967973
