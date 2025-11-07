Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 38BE52F659F
	for <ddprobe@lists.linux.dev>; Fri,  7 Nov 2025 21:29:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1762550994; cv=none; b=u0KMej+SQYCyxKrGaLtnmykSnIg9N41YGx3c7ikDiMamKv+IRMzTV8anD8NWcg7JJZo86Izk9IkyWUduIADxEdaLFiEu2LF4Rg8WGCfEuQreRaSom0fZNYTSrP4go7hYFuf4GlqvUEKkmGd0TzeAklpLyIwbBfZabxECcjIbIGA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1762550994; c=relaxed/simple;
	bh=yiJzD5nD0bHytJifTleSLGg9/FYm7hf7UM3G7OksDRk=;
	h=To:Subject:From:Message-Id:Date; b=S9bwtq30oub/6UsoGbxyw1IV6FkBOVGOuaKVB6NL8J8dda3IbqGwa7dPYKYNf98tD76hF8AxL3TUcaATlKTV8LRHhEvZmO6XZFMwGHvKx9ufmONf6VlNB+UHhc5L/VRmXJkgCPQgGVNxO1wZuSSkHKaJfOA9tEMtQO/XguCnDyA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=SOV9nNt4; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="SOV9nNt4"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9C8ADC113D0
	for <ddprobe@lists.linux.dev>; Fri,  7 Nov 2025 21:29:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1762550993;
	bh=yiJzD5nD0bHytJifTleSLGg9/FYm7hf7UM3G7OksDRk=;
	h=To:Subject:From:Date:From;
	b=SOV9nNt48l5viyYxHM2Wj0+amlUq7ktrTbQ1Lnp7G5F0ZwgbBfMlXCgy3i8pCa6t0
	 0R7En1I4Fp9vmhq90rG+F9/chhVkyVexqtqPQzpNGfgUVVSqFfdCGB5zGNjoBxniqP
	 jzC9uYV98TYGp6CNN67mgBtWM/K8VdKfDzvAtdBlUs1h481kygv/GeS6kudiv5q0La
	 URfaVks+0281rju8ONmM4euIrKhTw1H77QlnRqcCj1TZfyMPArRKIMNg7tMP18ETDt
	 i9fUFRq3U4c2W2GANkvdtEmgdlRa0p3SLgl9WY/+pjjLhRBu80n8iFzmfn9kNN5cm2
	 7o9O+GnSCvo1g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8F449CCF9F8
	for <ddprobe@lists.linux.dev>; Fri,  7 Nov 2025 21:29:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176255099357.22770.10181068424448288651.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 7a33b205d2d4dac1fd78af322859e41f1d770b3bfd8d82b355817bb8415115ae
Date: Fri, 07 Nov 2025 21:29:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1762550993
