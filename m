Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1BE172F4A02
	for <ddprobe@lists.linux.dev>; Tue, 12 Aug 2025 18:09:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1755022194; cv=none; b=mpmDXLqxN3PUxfdBbOgP3E1Xwd7/i2SxpK2HOOliM2KISfbhAw+ddpEY8Nh/kbmlW+Wh1c1yyvAP1InuXgr2uZvgF+V8BlRrNt3FS90Z7gBEOeXRGBZKqRZSpYJvsGEqRrvJmsmG+WBlEhFJO4Py35naTH+gW4jGVYp+44OjrDc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1755022194; c=relaxed/simple;
	bh=i6FWbu97coPHSyrPgnNnSD7aWaCCHF/93Po1Ajy1afI=;
	h=To:Subject:From:Message-Id:Date; b=EfvC7L4tK/gUcjI7FB1oPBVgs+Yrw3o01O1tvJ9imx/GsCyljryPsfCijq0OnXBt7/dOLIO/aKal3QyAJsp+5EZv49flzkM3KWh5g3RqPYqhC4b6NjJBzRyKuziibIU2f7CRg1mUDDefv/UB68jGkAFMxjQ2jXkFptLApQdCeKw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=lXhVKGw2; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="lXhVKGw2"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9FE28C4CEF8
	for <ddprobe@lists.linux.dev>; Tue, 12 Aug 2025 18:09:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1755022193;
	bh=i6FWbu97coPHSyrPgnNnSD7aWaCCHF/93Po1Ajy1afI=;
	h=To:Subject:From:Date:From;
	b=lXhVKGw2xo1axTiiSEsF874e6SV5HtQjjS3TOAIMmorJjtM4B2ybBDNHR6HtHkh3K
	 +Yy1B7rHAd9BBn5dN8EXOjha4dTgD7ZdmTlaCjJrlkA8SZpW8xdEvRayOa9b5p+pj5
	 xDt60ELySgdw7hGHehz2og1E9iZ/3TN2Xl3WMGyF7IPgZvpNcCsVTYGjuaZy8SkuUT
	 HYxG664Khwjn4yUM4SuO9qaJWIGbNUI+4/JvayLqsAIQuWopup+W8Q1YmGctkJ9Lk0
	 YPdqZItinlsJXmfXBgFr7BHKV8SKaGSTuBTSOhIIZJjgCHqUyEt+k9/HKp5UJ9+Aot
	 CCy+tfTLSiGMQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8F64FCA0EC4
	for <ddprobe@lists.linux.dev>; Tue, 12 Aug 2025 18:09:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175502219357.7317.9190586932284225284.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: bc278872b61adf8850944f874972b7114486dca5a51ea0178944426639e47412
Date: Tue, 12 Aug 2025 18:09:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1755022193
