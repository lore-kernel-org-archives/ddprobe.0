Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3D6DE1C84D7
	for <ddprobe@lists.linux.dev>; Tue,  4 Mar 2025 21:18:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1741123134; cv=none; b=DWZco4Nr3ikoRGCCcCTDYHIAjsotBDUyxqyw0R5xVfURICZ7mrt1A1mZi3Z1ZLBvxSxqbHe+/glYYv0DCDSh74HlWzSL7M+2ws+99vLp4wdq/XhJJBE6x1gCarDfU8gYYh0pYTPKu9oSEXqChStUeJm/B+iKIvOPBLZkjJ6Am2A=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1741123134; c=relaxed/simple;
	bh=34Gflp3nln+SneF+Tpt9vh4YE734YywpjvOpnJQVijg=;
	h=To:Subject:From:Message-Id:Date; b=uEuZZOBuMxiahHl5ChQiZDbe8G1DLiMvGMY8edb9IXMCWv3qUroVl0rfPBJMAj57NYoymHGbwlOFmwpH7N/oSz/nuc+ahboWP8QZ9L8giGQ89Qwkp1WfgGEmgHAZXUFpZ+tBdbW165xcZiN71l9lCsjmylO9WBlx6VkqNbEoDbs=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=XhIio84u; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="XhIio84u"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A7D0FC4CEE8
	for <ddprobe@lists.linux.dev>; Tue,  4 Mar 2025 21:18:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1741123133;
	bh=34Gflp3nln+SneF+Tpt9vh4YE734YywpjvOpnJQVijg=;
	h=To:Subject:From:Date:From;
	b=XhIio84ujD47eHSosuBZE2oKsFUzoTXimAKtxOpSR3tTW/ZMZsalEDD6jS3NgFHKn
	 qcdC2WJ+a6p2MRnkBjahQj5uC3ds6d+pvZDDM0CpVdk764clVR22Wtm4xHIGieMPi4
	 /Talw++rgVwcqHyAglGYo+kCsmi9pnagjP0m4znzGMKYGnI6wV/JXlMAeDI7Z8p7Gd
	 38x6LcEqA/gmobl4wog6a3iu6FWF8g9kuNeF8Il+x3Z87do32/Fc2FFpcpyM2y8Z7I
	 nAKzT4m0JZQ4gdO2jzbpxhg4bHkUgmKumNxdHgv0VaWXO6Xirt0iUERbe0RNw2FLV5
	 +y/7nDLhLbF1w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 94C93C021B8
	for <ddprobe@lists.linux.dev>; Tue,  4 Mar 2025 21:18:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174112313360.21493.13211020260724184841.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 863791d54ea78304a463746d0738903840f8307c5faf9819e76d8b5737ff7231
Date: Tue, 04 Mar 2025 21:18:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1741123133
