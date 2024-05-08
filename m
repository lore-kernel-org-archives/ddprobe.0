Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 59B4A1A2C2C
	for <ddprobe@lists.linux.dev>; Wed,  8 May 2024 01:52:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1715133143; cv=none; b=MBHYWnd1VIYmM3OS4r/xQ6eFQQdWxiQn5/MW5vmjOs8ausOY0hIkocxdcp9AfxluitbZ/rsI+70nhplDHUub3y3S0aghBIMS54Gi0K6KyVo7J9YDBwqxbJ+AmKZgw8Q/mqGZy9WVOuwoL2c8H4U2D3m2g0qxV36fJHj9aYfBLA0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1715133143; c=relaxed/simple;
	bh=YzYK+DLrX4q9vWBiyBu/nqcP5YxpJgCDnCUrupLf8xQ=;
	h=To:Subject:From:Message-Id:Date; b=InChKtts9TxHSeHc+D0G/LFgiWFHG6FGjHKrq7lmDOLMImy7tKWCpxnREI6R66Ov2pLDXfGVVjG7U++uF7W4VWDFYbadS6waZ8paCi6QSXSICwK+KS+HXFcom5Kkp39huxziO3wbxX19OIILK9TH3sbO09M2DSEF32LpQ7hvvvk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=TiMRjWU4; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="TiMRjWU4"
Received: by smtp.kernel.org (Postfix) with ESMTPS id DE528C4AF63
	for <ddprobe@lists.linux.dev>; Wed,  8 May 2024 01:52:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1715133142;
	bh=YzYK+DLrX4q9vWBiyBu/nqcP5YxpJgCDnCUrupLf8xQ=;
	h=To:Subject:From:Date:From;
	b=TiMRjWU4Dng8T4fJAWJ7DexZYUtvasKl7VXAFBP2viDHnEEr9TleUT0CSKdAfHEOy
	 pkyHpSp+WY+Z23jOqmQ8PK27qT8JtwGFUMvEmaNXBsjEimYHhjhdg80+Yam2N4xa9D
	 mWKAFpG2fF7GvaAwXJ47Sts9j+RN6lS13nT3L+QTdQKmFJyBJrnmUUHb562QxQSxp5
	 mrAprX3a1Amuv31PP04UH75QTt3RhG7JhjPcHgyo9b50jXTbYKQIDTCuFpE/w4mXo3
	 TyoJXLU/WD1EevpPXDJqhWCC0vX7JZX7gRLPIA5/pril7nJjhXCX9YHrBs4/QIYyX9
	 GQydrXg4gzhGQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C8D03C10F1A
	for <ddprobe@lists.linux.dev>; Wed,  8 May 2024 01:52:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171513314278.507.5154462248935956756.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 781b61692a637c0ba4c6aa59563c032a8928198e4ee7657062bbe9484955e068
Date: Wed, 08 May 2024 01:52:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1715133142
