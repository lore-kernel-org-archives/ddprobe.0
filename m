Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 047B730F947
	for <ddprobe@lists.linux.dev>; Wed, 17 Dec 2025 21:23:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1766006634; cv=none; b=OsR8TZmMvv/vBT9WcorfsyRRKwplT5ohP+8E19DZrq/4N/1PSQhSQHsYRShxsaG8baH15htqZ66boxnhrklHeTobQGQtH6ZGqezdN2pF5I5DWTuYqWIrrddvGygFukIPHaXnrehCpZXO6CzVv6YlnWPoQHYR+56HjomarhELTZ4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1766006634; c=relaxed/simple;
	bh=4Lpm4NR7VYRgiov13Mu0dXqZP4gQJChANzeeZWNt+Mc=;
	h=To:Subject:From:Message-Id:Date; b=oBqA+Xw/bu7p8PrddU1epec7YJJqNgSPxynO0SOVKnJZZw/x/sfeuGmlP0ZX7Bzm+xjqv7WWDsgklujcxUJRJjyQC5yS+t+G46wfU6G+bknG0e9CTliChozvqQitHKfQ4BlZBXt0EbX12Knw8ZmVGdA3HwJsJ0a41n2ABP9Yhr4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=JfBjTZVN; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="JfBjTZVN"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A893AC4CEF5
	for <ddprobe@lists.linux.dev>; Wed, 17 Dec 2025 21:23:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1766006633;
	bh=4Lpm4NR7VYRgiov13Mu0dXqZP4gQJChANzeeZWNt+Mc=;
	h=To:Subject:From:Date:From;
	b=JfBjTZVNTWR2eUI0UvQzDpyYArB+QoFWySqR9y/GKVN8X/rYszqFaueAIyxd/DNS7
	 /ByPd8f24ibVxhuPMlSPMArjG0qSnEzI6YyO12b2T5XKv5uOlvZAVZAlZXvRDdSjpm
	 oB+ScKNDsguhGLfCaO+XV7193YCNmQy7UT/WNMNP/Dv1tsW9+xAWzSIS0KW1OW22eX
	 xMKwlMNEMDzDwasJ3KN9RcyEHfP9o0GvyePN9i5ZnNTiqo+keJr5kWy1Hq67lmlb+z
	 tZUuhNyEtnFELp355SmfF5ow9pTn+0fBUJxG6PotWu6betFIrDqrv/bYqgLK+iBPBd
	 xzlg1+i4iTwxA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 96567D66BA6
	for <ddprobe@lists.linux.dev>; Wed, 17 Dec 2025 21:23:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176600663360.27739.18139403995603178464.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 0bfcf12ee739634ed67cf36670bfdf61764575a85e36dfd928bb0861f685adc4
Date: Wed, 17 Dec 2025 21:23:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1766006633
