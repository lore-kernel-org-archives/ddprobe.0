Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4B5AC3FFF84
	for <ddprobe@lists.linux.dev>; Sat,  8 Aug 2026 12:50:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1786193435; cv=none; b=O9jrqnTeMIc3A2gjRa2O4PpUgDkiC65/39JbY9GdplipovxpW4+GJDr4qIL+eW+Ov4LuNwT/3aGX4b/rfr8nWAdHUeUrZxobvqjBThULogNLPypUt+JPIQEQ8b2+cKNCjchvx1IsHmg0iECVz0Etlm136YiRgciLnq77jLYpUL0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1786193435; c=relaxed/simple;
	bh=Xyfp/xl0lKCp47mpBJiB8X9ImZzAhEeZ+FF07o7sK0k=;
	h=To:Subject:From:Message-Id:Date; b=BZCn9kZQwYWroTpdWKbU10QA2mv+oloWgVbmOXR36msgJBxfnzwKxx7VGv88m5nc8a68aJRtuKgDw7W+fXLy5RV5RIwd67AFN5UMD/So1vlgS+9WmxfrnhLpgsk//AF5Jyg0OIevzlbwB2FAOgPgo6HxTtcyK+8QbOebfLoqqcQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=HUrFPA7A; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="HUrFPA7A"
Received: by smtp.kernel.org (Postfix) with ESMTPS id DAEC6C2BCF5
	for <ddprobe@lists.linux.dev>; Sat,  8 Aug 2026 12:50:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1786193433;
	bh=Xyfp/xl0lKCp47mpBJiB8X9ImZzAhEeZ+FF07o7sK0k=;
	h=To:Subject:From:Date:From;
	b=HUrFPA7AwxNOI5zzKuti02lDegYkTpQ/4yqGGmtjoHnrzpTNkg35tPnLaMRBVQ+gR
	 Sl83iq71kD5Eryl8wMY2v+OhWXey7lLXkCyuWzp7VjdvqtDHa4+poRRoeqQQAVDz4c
	 5K5dztDiaM3n4J+ZencnTEQwRyOOjiLSUOlTgosL6VO28vgKkaElc2epho7nMz3aGS
	 5nwoo0xRdPOMKqj0y0fMVU9XzAJuA1LeDZTYhKYYN6+tHJTjZoLUZgwHgjIfcvEkFz
	 RsNeP7U1xQXgdlEpih1vCGgSNobKCj/5XWmPozZAnk3MMnw2yhk9cetVN6BdR4q61q
	 ruE+hZ+/rhO2A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B62E9C55174
	for <ddprobe@lists.linux.dev>; Sat,  8 Aug 2026 12:50:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178619343369.28409.13339695642412776738.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: b43cf23da289a1a228b11f87f7e1c446f1c8d436ccc6c971bb2a6f59c9d6f8ff
Date: Sat, 08 Aug 2026 12:50:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1786193433
