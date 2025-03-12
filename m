Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3F574198E76
	for <ddprobe@lists.linux.dev>; Wed, 12 Mar 2025 04:08:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1741752534; cv=none; b=nK2rxSoMv2GfUWNt1B/FDlfL9nbyDlKj3SycmidqsGuRrBZTFBeHGvUPgfkwkdioBPjpDVEwnXz6Ss0vfOoDDqyzb0AJKKOY9UAvWdHuUnJpjy7+MH3WhBC2QyCgSlJmmKUWLPM6KWG8RllpAHfqG1EpTLzMjRoxGFsoS/EKYZU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1741752534; c=relaxed/simple;
	bh=A8XRkXQvaC7CW5wzK+PDFdHJiNKgCHPe00Lq9TYFW/o=;
	h=To:Subject:From:Message-Id:Date; b=f8DobCjpxlQWTLdUCKH3ABalZXbhVJ/Ee8kIqHo/sOqlXfRwAwi2W2MtKm/Kw7j6f8uqlADZ8qf880FxTje6vZNVg0fN3tSQTQE3drF5zdb40trif1kCIrm8DDE68VqsivWMtWv0yCHvkEAD/0LBeNI5kd+ixWoyJA4YeDMXTZA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ETPaFbZl; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ETPaFbZl"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B0299C4CEEE
	for <ddprobe@lists.linux.dev>; Wed, 12 Mar 2025 04:08:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1741752533;
	bh=A8XRkXQvaC7CW5wzK+PDFdHJiNKgCHPe00Lq9TYFW/o=;
	h=To:Subject:From:Date:From;
	b=ETPaFbZlOKq1TGl19+uKaHRKasGWqxv7SW7/tIX90D27ypaF805EiPjeOMkHNcx0v
	 YcqDoTPDr1fdkgRqbboaZYcEIL8kU+SGTM8gsx/qoDKDHSkV01GBEK2oaiLx+JTnw6
	 IpPTSwKNArs7gCjPy4MZZmbkquxGAiogjcOY4r0/b2XLb5guBNEvG4NqsmG0q8gOlS
	 XesWng/bDbbv4DEj+899doEoUYXLgvw2/0xzYK6Y2OkeAh6i1jaPK7alc6kzVxJmD/
	 d+WdzmBdSMT2Stj5baPej1DXiQaGXKKlFvhgBelHk818/cGeuwYD0YRcTsMIwBZVDe
	 73feWxxZV2ecw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 94320C28B28
	for <ddprobe@lists.linux.dev>; Wed, 12 Mar 2025 04:08:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174175253359.8187.14475182354535397254.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: b0042719609b36a3e0895fe7d35aa63651c4135bc3cda5e47bc0380e82885ddd
Date: Wed, 12 Mar 2025 04:08:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1741752533
