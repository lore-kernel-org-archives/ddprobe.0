Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 25AFE19004A
	for <ddprobe@lists.linux.dev>; Tue, 15 Jul 2025 00:59:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1752541194; cv=none; b=fcoMethus1aA1eZNoN1FCxSkpVfys4cbGkrvNfmZ/6n6YF/QLvRmT3A/svalzc++SxOzgfMCyjeI8shoiP/qTJOl+LKoMKpg/Uam903N6nxgTAgz/80cOrIbWC9+pzMqc3ttZwVtrvv1AKs+jQ0voI9gYPBH0bTAYdhXPUiUxnQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1752541194; c=relaxed/simple;
	bh=plvZXuZwIrTKoHLmkdEhK3avTWHiJlFslafhGL+DGgo=;
	h=To:Subject:From:Message-Id:Date; b=CQmrukKUGF5KJUzZ7m8/6ll6QCS0H93XH31eRHNTNmAflVnKEEpXyDrMotKkd0gH4Y/pkU/GGZhdnTUhAraJjcBWpWRcs0xqf7Oa6gQTLNXoaVgPOyW4ZY7XyYs5HGBgfngkalgByxVqvuA67XJg2gR0DkT0pPSFjqzgOCASqrE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=lT+4y0rA; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="lT+4y0rA"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9DA6CC4CEED
	for <ddprobe@lists.linux.dev>; Tue, 15 Jul 2025 00:59:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1752541193;
	bh=plvZXuZwIrTKoHLmkdEhK3avTWHiJlFslafhGL+DGgo=;
	h=To:Subject:From:Date:From;
	b=lT+4y0rArfAGXoR7UEGfDCU8gZOo2kQ052+ZMWUhWtb4MUo+BoLF5IWV4aNX71dAv
	 o7wjlrd32Nv5KeszuCdac9L4yS7jAQIf6idqSaFZWscEDunjDk1KZfUKByyEfMgVSj
	 0fmJz5smkgl4x+tUgzlnTLtKAC4EqVn/j3xYdu/O32lPkGA1VtVrcZ7Q8C8S6vVB7D
	 B1x6QQjqCcyvYAYeqnBPJ/dEDj9pLEG4FgAFp00xsNhM08tP3IWmJjX9fnzd+l5F+3
	 KpO2T0+uhYMz8ojtdCR2I5FZAGbYeXgi2YOa59eLxhQrGixfcudVd1ktDtuTRph457
	 9do3ROBX1uCxw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8EBF5C83F1A
	for <ddprobe@lists.linux.dev>; Tue, 15 Jul 2025 00:59:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175254119357.10629.9447504494953906329.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 3dae6da00990b262e5c81e72b6b51f6d891110bb043b9bfe5015b58a9c056b1e
Date: Tue, 15 Jul 2025 00:59:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1752541193
