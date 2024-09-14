Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2AB2A43ABD
	for <ddprobe@lists.linux.dev>; Sat, 14 Sep 2024 09:05:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1726304754; cv=none; b=nrjwIyy98te+wnEljJSK9P0++31291B1sIjHdVz8CcjmaZT3FBpnNzt9h9snRRsFmEFagN1YuA5mtlQSZEVh0Rj6dDf/s0Z3OwGtP5ZuVo5lTvzApuZ9SB4qaihLGArV7MsRZJJkv8YZQnoW59tl/PDPFQNtAfjuKx2QS6o5RY4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1726304754; c=relaxed/simple;
	bh=yxQy+MEX7j0EbGsYE3QAjv89JBghO3FpTt/ILBSWOgA=;
	h=To:Subject:From:Message-Id:Date; b=E6YLagjYkQcQ3Lmt6u1eZ1XriQgN+CaRQE0QFt3J0J0oKjyrfj4iO/vQuR81k++Tb/+T8c3LmziDXPqriRmU3PN5yLCrAQ+MFGff3j1kj9KujxTyxCU6gxSPOETwfPhpDT6qiyZBvHu7LT/lFxRAJyMfzhu1jZJMSVjY3+lZCns=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=FS8mweUw; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="FS8mweUw"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B20BAC4CEC7
	for <ddprobe@lists.linux.dev>; Sat, 14 Sep 2024 09:05:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1726304753;
	bh=yxQy+MEX7j0EbGsYE3QAjv89JBghO3FpTt/ILBSWOgA=;
	h=To:Subject:From:Date:From;
	b=FS8mweUwD52OAUY7W6c6RPfNhRCsMUjsGmjM4aCRqPr/oYOmbBIsr8YlzKqo/A0+/
	 W956FCPyn9QSQbdMkjuEuAyLT7p7UdsYV3kS11/xwLgYD3Ljc1rHwidSg2JPx2Tht9
	 f/RSD54+nGece0FSeYzm2vgADm729Njy+M2R//T+Xc9V0FZ8g73O7ZO5WCeGt4jau7
	 O7KY/IRXBzFTT0Ug/j8O3ul7oOaa9ZP3gLQm+2frpmJZ2UgbMwfzwhrOyJA8Rh7o4y
	 AEjcWkQacZ1Hq96xPbocCiksalDJ7dxM+QdGg/3ul0SlhIk+T/1ePsBMANlss8Ahop
	 fYXsxNJYE4XDQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9C682C02186
	for <ddprobe@lists.linux.dev>; Sat, 14 Sep 2024 09:05:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172630475363.5358.8847573062548709016.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 4fd48933171b62f73f2305dc5ebdcbb20c759dfce517dc4dd4fdb7a9cc99fcfe
Date: Sat, 14 Sep 2024 09:05:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1726304753
