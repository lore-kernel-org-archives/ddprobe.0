Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 252821DF970
	for <ddprobe@lists.linux.dev>; Sat, 15 Nov 2025 03:59:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1763179194; cv=none; b=i3+rhkl8HHkk7kmNdcQukT3ARV0X/mYzrz2+hLdBeBgFCk5GfCi5C18/IkYbhznpJwHs4phAHQ/z4/PCyC11RzW7UUayNuCL1u407OBDB+sCihBZaG6c1D6SjJ6CF8dgRen/EHkNNzRrmPU8rjvPwxxXNS/geEIn5b54IplC/wU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1763179194; c=relaxed/simple;
	bh=LgnawGVDxM5JjR4EEA4bCblOl68oBhuNDggJsWhfjyU=;
	h=To:Subject:From:Message-Id:Date; b=ifcP4mUwsJ2SqucI1r8AEoILE9ERFj3Gjw+P5THE9LNFm7YBIVqKjpMA48vYM7u8SbZFphW2ZioMb7FHJKYuI9TXHPYTX5R0pLSgffn9HPE8J87LFJnKTlwLPfAGvHAwoo4duE7X05kGlNCwMK5WyAQQu5ut6YYWNHkCrXoWMH4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=kVASZV1K; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="kVASZV1K"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A1FB9C4CEF5
	for <ddprobe@lists.linux.dev>; Sat, 15 Nov 2025 03:59:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1763179193;
	bh=LgnawGVDxM5JjR4EEA4bCblOl68oBhuNDggJsWhfjyU=;
	h=To:Subject:From:Date:From;
	b=kVASZV1KjyEX/vPcAn0t7FSI1kcUhZP5ea+jKUKmVhNtv7vO1CimgfJs+FL0kAj8z
	 5tKDi18B+Ar8j0Az9+JYgO7rYGVIKty8mTQUEcVKU6U+R3RsXtP/AHueeB3PjrJADr
	 V1yUWsrt35bvLdnTILam63pOLqoUeM7KBeXZF7/zZp0PCzCyWwRzkn05IKGg2/c2B3
	 4+rhBU/PSdmWIWI5aVIxPJyrf8hqhLHPadSEXoivQ4UN5NP6mhzz29abQP4EbVHoLL
	 UKIDNlwhwk1T+ViZThwXYzKo3Ue/Ply/cinj8gd+eCZ9wt/yn07uudC7O2FK/KlaEz
	 5gTu6aHcupRkA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 95521CD4F48
	for <ddprobe@lists.linux.dev>; Sat, 15 Nov 2025 03:59:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176317919357.30709.3528678858119498514.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: df3073476d839654dc0e3cc241c0800b3bb1234e7a10407c0628418699c2605f
Date: Sat, 15 Nov 2025 03:59:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1763179193
