Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3C864249F9
	for <ddprobe@lists.linux.dev>; Wed, 22 May 2024 16:53:22 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1716396803; cv=none; b=VwlNexY4rYm1kKXDbrmP7FfeyI0s5/pI8iQy/yxtWVJRo2oLJC34Uzd5aPYi206XOSferzVHcJ7wLILXXmiz495JJn1FzYs2StBlLq01ROOvpeErJCs9/xxcfSLf4Pgxww8sFm4ztK+3xQs1sOekz6Xc+TULwyS6gY/wdmQHRzs=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1716396803; c=relaxed/simple;
	bh=u4DijtdYv6L74A6H97eavdcydKQ+00Z4jcbeR6D0pXw=;
	h=To:Subject:From:Message-Id:Date; b=iSm1LWBDD26huQlNKE1FaOvzVuBZkQDfjGc/DLA0yWt7iwMTaqBstvBxZQ9mNjWqNNs+SS8EYoKwzyzxf0ARRi1uhaO80/6g7fQKjzGPLiOrlkmhB946Ic70EMMBIQi5csmmT976VftKI8sG6RVyS0w/2Tz/b0JibG2hfqW99c4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=acsJa8pl; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="acsJa8pl"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CF2F1C2BBFC
	for <ddprobe@lists.linux.dev>; Wed, 22 May 2024 16:53:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1716396802;
	bh=u4DijtdYv6L74A6H97eavdcydKQ+00Z4jcbeR6D0pXw=;
	h=To:Subject:From:Date:From;
	b=acsJa8plNB/oYcEhQNOdmET7kCTFPScwMtTkOs9vLWUUY4H5lAJWkqRMRO/bcKB9M
	 qTEZI4K6PGQJ8b/RsU+Q+lkc8ZjoM3eRWGeLHTZyTo1AlfPdtX0u6yd247zsJRXjHb
	 wLbi4z0LY2nHJOFdyrgmAOT0tF9P0WWdDcjX+SCqVR3oqy1pcBpWqZU902ywruxoPw
	 7+o3mrZ9rIxLX0Dc5+NcKuxyt/n1Yf8AUuYoI3eonzT0S9oLl3z50a7ptWpsC7bJf7
	 aVuC08DSnbwIezUwx+tbr2CmpWAx5pt29534nemC/WQSxw9ugLRjG6CHuOkc9A44Ge
	 zhhwOEb0pvDgQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id BDA8BC25B78
	for <ddprobe@lists.linux.dev>; Wed, 22 May 2024 16:53:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171639680276.26188.15736374613882358451.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 8ee71628ea3469df78cd34e4b87148332a42e310749914138fc504e5aafc2f03
Date: Wed, 22 May 2024 16:53:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1716396802
