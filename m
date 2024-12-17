Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 337F381749
	for <ddprobe@lists.linux.dev>; Tue, 17 Dec 2024 02:35:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1734402954; cv=none; b=WT+iIRyu58SlmlM8alROn3vyYXZdp17VMvJBwbhLVgC8XNugM+AM2pozvZw/e24qZTz4FWPd3nFgSYPcCs6WKyweG4Y+lSQJWK3UgpbHkti64yu+94SY/kRDIFDkndKqTK2ZkvTPvAFUPN2RXuIT/z4Mt7cg1/f6h9PL50G9+IU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1734402954; c=relaxed/simple;
	bh=8B00+zU+NQVGruwIMwpu4oLA8qGnlmyIvFup2JHkm7M=;
	h=To:Subject:From:Message-Id:Date; b=AUVszGtp8bTsun8Y0XsLppm9rl4PwtJUc18gwNS0mQN4wcHhgK7CZQfOUBBMjMWUgU/wAlVGJZVwS0ijZZE9ZCDxUT+k1xFRoWz4ZXJMvYS70XUnqzpDc/VQV38C1Gnlx+R2MtfVFrMGtWnBN3kmg0l07nKmGgqkIbT9BXJZXI4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ha2OjAJ1; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ha2OjAJ1"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A4922C4CED0
	for <ddprobe@lists.linux.dev>; Tue, 17 Dec 2024 02:35:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1734402953;
	bh=8B00+zU+NQVGruwIMwpu4oLA8qGnlmyIvFup2JHkm7M=;
	h=To:Subject:From:Date:From;
	b=ha2OjAJ16NQfU1PNibTSd8EXWVOQSsXclAblUdhS6lz8nEdtuchst8Fom/OjwfecF
	 4k7KH+N09ptvPG9GyjFs+HNEPXuZ0urqD2iclixuk/gGHXFknaoqcn5MfTpBiQ85aj
	 XLdZlw3NKzQBYCR88nvKDG/f/HDoYtaDp9LIae0ltzCLkdyRJX7cO9eNDPipRF3okc
	 CxkeZSKENRSbmlPTUvLVlea+yUd8g7ICv2NJvFeR7LLzHqvuta/MwmnjRELb8RsT3n
	 PrQ2+jIH/ovTlJh2B90WZhfEOfZ+bvC00pkViOeyxqIxIDRtLtNzbrNFyMXrZkgPed
	 S9JZcHKh/ZxYQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 926D6E7717F
	for <ddprobe@lists.linux.dev>; Tue, 17 Dec 2024 02:35:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173440295359.8722.5037438121606190212.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: d2522849da6e371844c18e723e1da43a0dd738942d9eb458b6334111a2b59803
Date: Tue, 17 Dec 2024 02:35:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1734402953
