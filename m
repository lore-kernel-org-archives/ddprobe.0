Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 38619305E02
	for <ddprobe@lists.linux.dev>; Tue, 14 Oct 2025 04:19:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1760415594; cv=none; b=Ic2O5JlLjqxsgyTG4Dm7BeymBmLgM1o62bTzANDCBNWoJMe+6/rLsvaPaHxqbL/ayzostSNuOoW5xcpUA2IVYBJQH/6LenitYhbW+tbONES/xuM15Iec5Y5G0ELLjnvfKGqTDfFB1cyakRNTxvVLI0jGC6yqQ+pHFXAYACi2BUQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1760415594; c=relaxed/simple;
	bh=e4xt3krSVYJcc8Aw+Mu+o2Wkr99fAJGJie5qojcJ9UA=;
	h=To:Subject:From:Message-Id:Date; b=N6XrZ6GgQ5mT0dODn7fHVJrpmmQ3tNxMVnzDqI3i4daGGLrDSUGeESIMZ63o4fmW+v/J9ebVkqiZZZrAb37PQdwObz1tVjPwdkiNlKy/Ozsnh48BbimWvAQuvI04yWKmw7Aaatgyyw93GrV+1dLo4letvS/LB0cQyY8jNS1HKFU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=qT0o0W7b; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="qT0o0W7b"
Received: by smtp.kernel.org (Postfix) with ESMTPS id ABEDBC4CEF1
	for <ddprobe@lists.linux.dev>; Tue, 14 Oct 2025 04:19:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1760415593;
	bh=e4xt3krSVYJcc8Aw+Mu+o2Wkr99fAJGJie5qojcJ9UA=;
	h=To:Subject:From:Date:From;
	b=qT0o0W7b+nB2qhoMx8crrtaNlom+1kNhyuQn2UZ+n4MwXHIzBv5M5mOy7hqp+rnzU
	 zmNfI7BwBdkcPV5PS4iv08ongHHsIGdzdn8MQ1wODHNdg48uUmZrQBSLWH6kH6L06S
	 iUuRiRZFFhyTG8g66uVKj7bvDZ7Eyzi6MDf5zb/WkT+TrscgJ1qvotHP8+QrJqi+5n
	 U1F09/MdwoxVNL8fW5tpWU8gadvtSXKAFd/zaIQ64k//AS36j/RGpRODUl8XP/hXQj
	 /2NcKVSHKJEX7CqfOMgjnGGpBRpsmJM8FQfRZfKW8HbdBSxV28DFWajrSFw5A28ncd
	 wLtLR+qaol95g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9760ECCD187
	for <ddprobe@lists.linux.dev>; Tue, 14 Oct 2025 04:19:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176041559360.17650.8657068288986798174.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 1b8fc14c9a394cbbbd1efefce2fe6734868236ea277fe015c9f518d70671a295
Date: Tue, 14 Oct 2025 04:19:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1760415593
