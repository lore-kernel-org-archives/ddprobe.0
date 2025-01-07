Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0FCB81F0E2A
	for <ddprobe@lists.linux.dev>; Tue,  7 Jan 2025 15:15:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1736262954; cv=none; b=jpw5X5DXRCfwTfjOqRs/QqFoPx4f1EhSGKwW5khm1CshDlIzYXr8+mA/cweQ+8+3lzJQLO1r/OkpXWM2UQ6fEt9Abd4ym8yT9TnmxUzI0X3TmJnWAdShL59ccN5ezeTDUQaPx5jWCiX3nKoCS0VAfgQa8Jk7bwaHNb4NEdyqB0c=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1736262954; c=relaxed/simple;
	bh=vcoYfWX29282ok5flXI4Dz9+aZnhhDa46Pn0X5/htVA=;
	h=To:Subject:From:Message-Id:Date; b=NXNyfWW/iQF33+JpQKrA+sKLcThL1SOhHjrNDtQTDhY2i3qWqA9pKjbzIDqbAvmS6Fw8F2y/4+D6G03JyGNZV4NZtD3Q5pdbBSXqRlDXTPI5tmqRhvq4K2KrwICzBf8G0Lsx0oHDicSouQTF+vnrD6CFC2/i86MuzvJnKaVHAB0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=rgRIVGGZ; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="rgRIVGGZ"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AB624C4CED6
	for <ddprobe@lists.linux.dev>; Tue,  7 Jan 2025 15:15:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1736262953;
	bh=vcoYfWX29282ok5flXI4Dz9+aZnhhDa46Pn0X5/htVA=;
	h=To:Subject:From:Date:From;
	b=rgRIVGGZ+fRcMp9eQuTZ8VBBhvsR5QDtJ8fie1CxO3xGfj6zVv8W71bC4SvxsqPyo
	 yRV57iGa/de0IFqYYt6bkQxgkjzkgxUO4LNUjGLY0GHXZE7nQXjX76ECBL1Dox7loG
	 h8lYiSgxZbMLD9z8sW67mcjF4yuUiIjfTsAMZGsfExBzt8XApB6zeQ4f0b4Q0al2Hx
	 tK1fzDH7gLcskuPLFrgcc+eolF9vyMj2MG43XPyyFLMinsHAtg09IjcqEgaCbQhLZB
	 zkPfe4PbWhGyUX5/1WzQAWaO+83eFrg4FGCesfsIuDS9RmE0FElspQ+Jk+9QC88T2J
	 5Z0D2GtLQT8XA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 98437E77197
	for <ddprobe@lists.linux.dev>; Tue,  7 Jan 2025 15:15:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173626295361.26751.12390913491885216758.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 16b96dc962aed6aa5fde29daa1fc7c87b1daa81d962a97d86c9ce10359c43356
Date: Tue, 07 Jan 2025 15:15:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1736262953
