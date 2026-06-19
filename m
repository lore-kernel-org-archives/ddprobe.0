Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 26A2A33121C
	for <ddprobe@lists.linux.dev>; Fri, 19 Jun 2026 14:06:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1781877994; cv=none; b=UH7zO0Bc78N5fF7zPHtrsjpfevzihrIQWQj3BFEfZRUCMeC43AqyEvGlK+sHhsxJD1pEyD4y0S9Pj6ceSZno8RSiWcxRJvpXigmwhVX6qISq4po8ASh+qYtP3312DNhkzpZCyw8qHIvRUsFrbD2b1OnSKDtR0IvqlNYbw7qsFIk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1781877994; c=relaxed/simple;
	bh=WxzO+oP4OKUT1BenpYPGGElkMHoo3uwG2E7Q9sXZw00=;
	h=To:Subject:From:Message-Id:Date; b=Nkp5fPs1nISWFC9FvF4saJhNSp7QUDF1uwhyj7D/pmmbtPpt76oL6OY5LgnRswYaV9mGhrSzAKIHtttPr0DuCQaiRKf2S0cmGpBUu+s4rsfxSKxOKyouU+YrV1Vuzij4sDYLknMenJU8wCDWGb2uwwdVZWCXyW2L89fAq0sDkyg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=hZsi7CnK; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="hZsi7CnK"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C6B78C2BCB4
	for <ddprobe@lists.linux.dev>; Fri, 19 Jun 2026 14:06:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1781877993;
	bh=WxzO+oP4OKUT1BenpYPGGElkMHoo3uwG2E7Q9sXZw00=;
	h=To:Subject:From:Date:From;
	b=hZsi7CnK3yuM2TorjO7Qd+lPTULTLqs4OwBwclGiboKKTsAh1lZyV/GiH/Km/cVTR
	 FqdNJEgLN6q3ztTcwymVwfyxTBZ3natuGXrdtvuFSvE18FbZMcwi9rrlKcGpdljYOJ
	 YC8lp4RVdn+P3J4eEQFCjfWwfSUUIjM+cSYYUEM9u2av8RZ+kJv2wRbaJcW3hrnKsv
	 nJJtD/IAs3Il3SxJDWOt+obkcGQzJcabHnA4gX+KkfIBb/crEfprtt6IqcnlxD0UCu
	 lbnL1ZqyM46+ATA5mNHpZ0HzjWY/0B1B7VFIG9xB5rmLVpi9tq4YiSJZMPY+REd7VK
	 qR0F301x37jGg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AB969CD98F2
	for <ddprobe@lists.linux.dev>; Fri, 19 Jun 2026 14:06:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178187799369.27997.11472711346237563221.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 30d4b8692af010b717e2f74260bff0a582b3b9630e982ab6a5e3799240cdf1ea
Date: Fri, 19 Jun 2026 14:06:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1781877993
