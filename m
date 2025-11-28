Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1E236286D64
	for <ddprobe@lists.linux.dev>; Fri, 28 Nov 2025 17:02:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1764349374; cv=none; b=a6HYwOEy+92SQIHNkA1/xJ+AYeajQ46/AFatrW5WGqcQGk3d0iIzdVENjBmSZu0KzifHJBD+celGsKJ2RMyjEvNuzlAy1QYpzSVZ7W60/JxNj/BfWz+OF4XXCXjb1pkN9R57t9G9yAiShr26AngLAI+Ht3zNvRHHI3A3eaWY850=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1764349374; c=relaxed/simple;
	bh=IX/l5Gb/bZWOGwaqqBSyuvpm3cCt6YIkpWtKqINX5bI=;
	h=To:Subject:From:Message-Id:Date; b=SiSommwEWhyp+B7gzArZix5nR7oB4tEVl0KrImIW2hjR5yTDkU0gYJLaMoLQ8lCN1PelEkPif2ItFJEfsRqifY+URpeBNBZMtzbDkjVHGpY4AzJsOFuOacBQZWr4od2RNIrRKhiNunk8OzPlpsJ+dWzNUqfT5FnAa0+UYg1Lhbc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ZiyVCdl5; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ZiyVCdl5"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A496CC4CEF1
	for <ddprobe@lists.linux.dev>; Fri, 28 Nov 2025 17:02:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1764349373;
	bh=IX/l5Gb/bZWOGwaqqBSyuvpm3cCt6YIkpWtKqINX5bI=;
	h=To:Subject:From:Date:From;
	b=ZiyVCdl5rks6bH96txoMbwa0yEBd0km2/Pz2sFHV07VXIbyf8K7R8nOLLuPRzhIXQ
	 ic5IajiiztXgv8IeRBfCnepJu92lM18hBdgbvMHIRG7pFobo8xObLo87j8az5eWHj6
	 5OGVwmGFghA5lKerR0OSp2Zyf5/B36cCJ0K1gHN2AoFA8ZQQ/72kLsWjBf1AkaPK7q
	 ReaHeBSGcQJKymYLkF/8wasJ5TBRCEb1A0N5LX2dZDtcN4+wg+cw4OqwiSvTjw0YF5
	 32Fv2aa8RlsOe0Z8cfCKRg9irc9w5HXI4GruEh6h0xKxi0TRYQkH/WZargtD8NevYY
	 G64SPIFIb8C/A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9111DD116F1
	for <ddprobe@lists.linux.dev>; Fri, 28 Nov 2025 17:02:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176434937358.674.2271239769013336533.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 1061260cc37829184f2b20cef2be6fa82567367032e7591f02a7c399ff1d96d3
Date: Fri, 28 Nov 2025 17:02:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1764349373
