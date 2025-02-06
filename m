Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3EC5C13C809
	for <ddprobe@lists.linux.dev>; Thu,  6 Feb 2025 17:35:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1738863354; cv=none; b=rCya+u1ZM7BWEbsVlsGOeO/ylq9JvQfvlRrK493xM1x1JM+RDr6J/heyVgjJwUa/CP7163cVyTjJ0Zk2Ct0meNYr2e+rgGtw9ZHxlGCTNXjX/C9EqQL3ZDrF2p6IVCDBe8J4GzMs/xZUUEqmcxEkew4j4CakRP0iOOpWlEtfo9k=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1738863354; c=relaxed/simple;
	bh=BbnNmMvnNDTx0tZyzY5rsC/njJhtuIjSzS+Ow64Ya7s=;
	h=To:Subject:From:Message-Id:Date; b=CWUsAdqHrLq3UpdfWZJrCuLFfYcp29ZZMgwxcWdiTTRz1yTwtIWDfrBWClJH8at1SM7KIb+DsT3agbjGaB0dYHxhrEf6XL0n90aeQg5y7b8zV3dv/HlQiaPc2uHdyJpYAgJ05eBGtAbdeAKv/qRn16UBuugKIgSBUgE5Hkir0ZU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Sbza6Ugc; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Sbza6Ugc"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A87B0C4CEDF
	for <ddprobe@lists.linux.dev>; Thu,  6 Feb 2025 17:35:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1738863353;
	bh=BbnNmMvnNDTx0tZyzY5rsC/njJhtuIjSzS+Ow64Ya7s=;
	h=To:Subject:From:Date:From;
	b=Sbza6UgcKoRkkZ97/v7RDfkFDEvcKBVuOn3a6kuyNpXLw0cV3dZgYAZivgu1/0hsG
	 oizBrTwkO2m64yWi5CIRPemHzPRyH+qlsZeVco0AfNyEa3gJYDooY2MeZkibQcS5N5
	 HkJnTwV5uqJM8yuAMbYP9YGWZKCNi2xB7yaRP8X+KjjKxPAQH2fNlkltaXX8Okxyvs
	 5ySD240nONJJmCgVxs6jX7WePntTlTYc0JU4DtnLrD9TjJVN0ulDLwRYdUtVwtWWdi
	 cd0amJZDO2cZMh2XGoYRPZ3Y/ltqTVUtYLhwIJ2OUDj88phxg5gJGKLG6nr70PNB5a
	 PmKhZWDh2E4YA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 94D3EC02199
	for <ddprobe@lists.linux.dev>; Thu,  6 Feb 2025 17:35:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173886335360.4322.7692920450123823349.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 241f68b2d6a6e09fd42dd2f5c3448bc4765c6ded79716d4eecb9b686aa88174d
Date: Thu, 06 Feb 2025 17:35:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1738863353
