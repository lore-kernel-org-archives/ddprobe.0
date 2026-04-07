Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3439827707
	for <ddprobe@lists.linux.dev>; Tue,  7 Apr 2026 00:15:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1775520934; cv=none; b=Tl2VVb2Rdsmsvl5123ONP3jmJRzchxQ8nX53tLBDzhSSGHh9IkDjOdzVOd0JZS/E1jDnIDRPM8sjLUvhH78iGkfxfJtiSPkwQwwKTp3IwW6hmNFV0pK+tghieUJsyHm3Ug8ynYH58rg2St7lEX0M7X03WcgDoNw+0h2B3dm2xYw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1775520934; c=relaxed/simple;
	bh=Ie2ibxLjgGMRYvB/ejus8qFdjDEX3KzCCDslhn+V7X4=;
	h=To:Subject:From:Message-Id:Date; b=MG0fuZBjTkcTYjUYqXdvEHEqPgh7sBgBbul5HWc5pd89+iTvpbUYzszQ1XTqxBe1rEhPdtULP9C2jSLaJknbv6zwrNCXz2jTxfqDF3nswYKHI+TWNiUbPPOh6YpTRzj5gfhMasTVDP6klxFUhHDdk5pWbMnMnDJ0MhBnZ0dl5dU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=T96slP2n; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="T96slP2n"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D30B4C4CEF7
	for <ddprobe@lists.linux.dev>; Tue,  7 Apr 2026 00:15:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1775520933;
	bh=Ie2ibxLjgGMRYvB/ejus8qFdjDEX3KzCCDslhn+V7X4=;
	h=To:Subject:From:Date:From;
	b=T96slP2nE9trQrT5p082eHsOawCPhIAfrsc43z5P8S5jTeOehuzNv7XJnS27PzCvB
	 rF+KE5uWVRa0yEFO31xugGi1kIfCmx4aKfCSTTT3usluMs+aEMlfZzZrfrqIDLnOlE
	 Ohe3V4SXIqpnx/Ndw5IVhJ2gTHeDwD4Ny3vjHBmcP+BUfn9g+wV4vnPiwd7X3unZpm
	 u94WVdYSCgOnuEatF1dFWe5OqJn8NmW5fn7gwUYmn8M7C3x6MisfliiHzzYw6YGTK8
	 2PBS+Q5PuuR5yQTuSSSQb+3nfmdmQW0EXkIcYDU60nyvsxQkF0FQSAaM7kX8ruWsiy
	 fYPGG0CWBxlRg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id BBB2AFB5173
	for <ddprobe@lists.linux.dev>; Tue,  7 Apr 2026 00:15:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177552093369.3156.11563127446336888928.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 23deda6a27df97a9821ad33151f2776e539706753424595567c6371452536854
Date: Tue, 07 Apr 2026 00:15:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1775520933
