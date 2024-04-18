Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5D19713F443
	for <ddprobe@lists.linux.dev>; Thu, 18 Apr 2024 21:59:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1713477563; cv=none; b=pawiEg0Edw6xO2LmW6daOR1GZNP115ByaEUxBui2XKJ9GTMQYUyAQOgME6r0+iC4gB4AEfp4aPUOpF0h5mTOfLf+IX6fXzxVQSXMhVu5pQEk5+dQYUuzRPE++YP1UwIIX3BviN1Fk7jCkAn9UX5CFuh/KN81QRNQmco1HUTeJbM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1713477563; c=relaxed/simple;
	bh=lfu2LQo0o4aNoHOELDPv2UuAQzNL60Mbbe+JsIFZ1tU=;
	h=To:Subject:From:Message-Id:Date; b=grVUCQPTg6eKaqbV/IvYqDzsi96u4jQG/bcGPhTy1Pr0uu3CrtOcEE0Mj5BkxtTUa4eXvTUkmVrgZ5DHX7XbGeyS2dX4FHIVY3QvsFpRtQKKe0kXKuNU21eJYNUCyfrpUUBBl8WnJEHZ7os+xMvDSZUwBRHQgtX5w7VZyZeq7gE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=d4dL67pv; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="d4dL67pv"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D6FB8C113CC
	for <ddprobe@lists.linux.dev>; Thu, 18 Apr 2024 21:59:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1713477562;
	bh=lfu2LQo0o4aNoHOELDPv2UuAQzNL60Mbbe+JsIFZ1tU=;
	h=To:Subject:From:Date:From;
	b=d4dL67pvG1UEwLvvQHj4TfxMee7XoQGUkaa6+myZycNqnwqnchHnMlYKUU0kTA/8Z
	 WxdWFHD9IVrm82Uo6CF5MZPjdoPS3PUA/TcKoOZsqWbkqWlrxiNqPL64wdGllNkhmN
	 MPf8RgjhVfZHsYladaj+dOSqTcnH1423gTok+McDmS20GBiyF2OkGFQ3uUELOpqMOQ
	 4jt2c6Uhwpq1zwW20aP2A+1RMRU6s9QR7sOyETuzKRVQW9eORfMiWHIZqk3zwzEh6h
	 GWU1qHcry+XW9MsYsRjPEbbZsW1KzAt5mC9I4WT7Y+UnpFKGzkvpcclHsciMeNY8Dp
	 wYTZIpiTRPbpQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C18D5C4345F
	for <ddprobe@lists.linux.dev>; Thu, 18 Apr 2024 21:59:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171347756277.23766.17270395429346131635.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 9713a9cf2f7af045811b421a1f79f2640f8aaec70ad9bca4ab3819e70a6f4b68
Date: Thu, 18 Apr 2024 21:59:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1713477562
