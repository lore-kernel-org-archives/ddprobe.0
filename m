Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 33D842E0B5B
	for <ddprobe@lists.linux.dev>; Thu,  9 Oct 2025 11:19:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1760008794; cv=none; b=IuVmdLmsLMWQSMPnUiaKmnvcggfcTL8GzjBOL4GbO0RFy8uGo5wgb+B14yKRpnS0/3DqRcCdcs5XnWHbkVLuMIF6mBOqZWerEJA+i3Q1Eu83l8yvR9Nf6jOpE5jHQqgtwXGx7xatdG7l/z49APDhmTQo3vuWUCHRCmg9fpGxLXI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1760008794; c=relaxed/simple;
	bh=+PmuRK4sP7yap1lSKKSCltrn/MqvkWSVA2XyhAzKUoQ=;
	h=To:Subject:From:Message-Id:Date; b=GjoatNhKgZCLSf8dp8h8MMvY+D7F3LUaTbiT7OplKnw5RqfJav8j4Bkfdo/qqV3SmmxMkwxvIx+FyPTcEEy+3XQFX66sWnNg1T+YWZQPHafBhR90EUpxp/Nk4iX8Ie2Jr+180NP5zW7zz7iNnkJttjt9vlfLkcFdCeWoUAtijLE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=grLgfZZz; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="grLgfZZz"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A68DFC4CEE7
	for <ddprobe@lists.linux.dev>; Thu,  9 Oct 2025 11:19:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1760008793;
	bh=+PmuRK4sP7yap1lSKKSCltrn/MqvkWSVA2XyhAzKUoQ=;
	h=To:Subject:From:Date:From;
	b=grLgfZZzCwaJdjKCE5367kVw5eW38W1RsbXj/QD3PlU9QKQCZHoLrwnHm4JeANYpX
	 i6qjiHwf/iUQuXkSpYsQAo5gUBRE/zjxpNfe2EWyCTl2+tnpKGXwYBiFSXgaVD6n0v
	 YuWCj1BwiMKmeLasEIwCbKcED/FVjixTHCHlx76sWXyXWKefNyZPZrBgYd0uop2Ki8
	 i4KCkw/aaMFHfTJEI8yBJmed+/HgpYwpm9Gyb734Q3cVV2Mz4Lzm1YDFD7EY2zQJwo
	 cUnxyrxCyYlhwELojiFWc4+w+XhboFf0vFl1mxnPQTurOIsaWxZUvddUKXBJV7V8k1
	 KGVWfQwzN0CUA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 90784CCD187
	for <ddprobe@lists.linux.dev>; Thu,  9 Oct 2025 11:19:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176000879358.3333.4658332756379417814.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: bf7798a4fec16def8a0acdd7b2b49b11d4fd190ada9b9bf4505b4c5668f6280e
Date: Thu, 09 Oct 2025 11:19:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1760008793
