Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4542F168DE
	for <ddprobe@lists.linux.dev>; Fri, 12 Apr 2024 06:39:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1712903963; cv=none; b=kobYJNTNzTrluWRsrt5vCeOWAfRhzFvn/YIJmTYe9ikgb300EvQXK1V/JpOHWfPDJpRrcmVAdhQtldaqi+BhNbudf6fca+VZgXESgBw/syb4IbYhjWTZHllAJJxzk1CefQGj/oxwk2VcGMBvFdgLZ5BLEI2W6MBi1vIXyHfpCcg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1712903963; c=relaxed/simple;
	bh=PUXvgEqBWKe4BEw2S2SP/1UwNPBv7s+V4GmdfunlTJ4=;
	h=To:Subject:From:Message-Id:Date; b=QqvHwK5j0FsMj/S038htJCRQF9YIHhYCB+KB0gfmsf2R+oo+nXuv9b29TneZJ5kyCGfMwixV7/qhEpjqC94z1tvX0zx1qokAOfUO7o3i9iLXmJdBht/3hUZUsW/P9RS4JYDDr56juyDqPLUvgOOiTZHEmIgp5t7ZQWu5nnP5Mmk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=bzaP2nVV; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="bzaP2nVV"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D7A03C2BBFC
	for <ddprobe@lists.linux.dev>; Fri, 12 Apr 2024 06:39:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1712903962;
	bh=PUXvgEqBWKe4BEw2S2SP/1UwNPBv7s+V4GmdfunlTJ4=;
	h=To:Subject:From:Date:From;
	b=bzaP2nVVaacpHX6ANaPGyvR7EgprI3rz9QlFQJG2TTisdMN9dsNy1OD5Ke3OCPye0
	 PC4f4hy7vM0UiAPvPtrAtV+Njou7CVX7DvijfDipc36kIVhbvzROUevq0e5x0HcxnN
	 /WzY8MnQPx0x6mdl4n3w5nwBFTadYWdonIerxepJC3Cyn5u9FA5J/OkirDm2iCocJV
	 qT5CLoGXyPWXAIvPm0qN7+X7RWY7oHcwyYRJiSG6LKvphiHapWo964voE+tJSAtcdn
	 N88Vpr8D283Dx9F/txmBkcTAwPXNui7l5ziPCUFXhjf7RUjt7w8FNatiMIEerq46UI
	 YbEE2GM7g4KGQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id BFEECC4345F
	for <ddprobe@lists.linux.dev>; Fri, 12 Apr 2024 06:39:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171290396277.8863.10157345600044396745.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: dac2ce0c08c5146aefbc982754fe2d59fa090dc6d59547950ea2fcc13fa9553f
Date: Fri, 12 Apr 2024 06:39:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1712903962
