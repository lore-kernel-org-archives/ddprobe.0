Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C262A221554
	for <ddprobe@lists.linux.dev>; Tue,  9 Dec 2025 07:22:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1765264973; cv=none; b=qAneqaFGrKZrc85RdfNzswodS2x5PcW0VHPAXVsN6hJaRYhS5wj4JsiuXM7UF6y0+bOcsV7CdDdO21xfu8ooh1PDCitXnBPkQ8FPIVUJqs++U6DmOcUHonsdhL7704K/g5IklYYPXoihRp5q83t0ofTP+OwcaTfSz/s1pc7rhYQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1765264973; c=relaxed/simple;
	bh=/8TckuewgK+Ekzkq2BkFwBBFrIX2dDM934NEBd5Kx1Y=;
	h=To:Subject:From:Message-Id:Date; b=MYcpYRlVbe537tRZppR+O/dH9c6Mg/6joPHgJAV2xVssiU4vwlGrng6/QhDETHGqAp7KRpkMaUb2t+P2Fi2wqFTVVPwFTPLsiXk1VVoNuVhUfIEJlsIVu33RhaG2amh8WJnIOP3ccidpjMAZi9PCi0q97H+uJFMfbrPw1+Wy1Y8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=EnOytpRg; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="EnOytpRg"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A0A84C4CEFB
	for <ddprobe@lists.linux.dev>; Tue,  9 Dec 2025 07:22:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1765264973;
	bh=/8TckuewgK+Ekzkq2BkFwBBFrIX2dDM934NEBd5Kx1Y=;
	h=To:Subject:From:Date:From;
	b=EnOytpRgQjSbTbeng6n2mhMfhWX/10epCJTg0BVT+oPkXmAUBADYPpOEjfhHErd0g
	 GRWf1ZxBv2CC0drPSnkfDENIDqDbemP5Oy9dp+dQHO/pNoIGxCG6u9NLPe70ALDnBk
	 FiNMn2f7/t98bjtG5j6ggw2cf32hjInhPzNyhOLFME/S7XDfjUg9lGuRRFXFnEmXqT
	 a/QxQT4JoTDfow76iudJgfJ5WAS2dDCkbWIjzF4AF0CEatfsewkDcQlvrXknW6KBUc
	 /kY18Cgqfbu96Nje0Wc3Ja5IgwLwivzb8eVxu37jQcZGZhvTO1jJ9xREwF6ds1PyXn
	 EEVa7uuqPfPcw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 90D2AD3B7EA
	for <ddprobe@lists.linux.dev>; Tue,  9 Dec 2025 07:22:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176526497358.5899.10663078275586949929.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: f39482b623cc906d4a5f74f9148a0432e00926e1faae76c698729f04f838188e
Date: Tue, 09 Dec 2025 07:22:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1765264973
