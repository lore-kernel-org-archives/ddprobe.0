Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 41490B666
	for <ddprobe@lists.linux.dev>; Sat, 12 Apr 2025 00:19:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1744417194; cv=none; b=nvW88oCj91QF5KygHD3JbcK+uCALYOCE3ZkkqK4LJ4MWQXdedv36B6ynK9VhKP/ZHLrAenfB/i4k2AarNOuBItAlDltQcJyWzuM2wI8g2VL89xSukHh+FhUEENE8ayhRxXWERXetuPYtEMgmBsZuX2qGRi1lHZot3fjA6OBNsEI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1744417194; c=relaxed/simple;
	bh=BY5rwmX4zkQMqztR8Tyv7dbzKEqGwk/bxiwlzwkB030=;
	h=To:Subject:From:Message-Id:Date; b=qW6dKyvq0GEM2zHj8JwNF85U/Ijm7sG2Dwbb6TjKh0RyySuOUH71DGGcJ7mFWiA729louCb5/0jshFgHgxyysOBM3I58iYpgg1mZZ/FZGHkoESYZ7H4OZJE0J8k3xzTAGpW2XFLeDvG+UEO1xUu8IXbtkZTLdKYUS1DwCGd5BF8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=diV/+QZh; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="diV/+QZh"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A74B9C4CEE2
	for <ddprobe@lists.linux.dev>; Sat, 12 Apr 2025 00:19:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1744417193;
	bh=BY5rwmX4zkQMqztR8Tyv7dbzKEqGwk/bxiwlzwkB030=;
	h=To:Subject:From:Date:From;
	b=diV/+QZhilrWvEf9dkOjDRhqtVMVIEWFsBfwISX+5wdbknnmsUdHAwuqEVkKyZaRW
	 EwhTaBwUAjJhGwhhGMCo4xxGR/zIaTBLqxkczJuc0iy5dvv4bQCcCV5IF/+EGE/FD4
	 ZKQavP33gshmdVESH3IhS5gHHjJyQsf/H8LkDjIPuJHbhTxphxs2cUMyRLTcy9W9US
	 t/jUhfvrOJC82GWkFQrRrtyjU9pmltv+lrJaBSPSobbvoIdxttsZ6c+UnrWyqVGlQb
	 cZfk4d+gjsQrubGdxzEvBeyzJLXy3UZukgqSEa8p9ETqCwLjk0fmxNdiakCZ7U4njj
	 Tefg7OGGHlkHA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 92C08C369A2
	for <ddprobe@lists.linux.dev>; Sat, 12 Apr 2025 00:19:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174441719359.25666.13479268186669278054.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 794b0a6a691bcaba600169c23e9ee3d9f214263c6871fb0ea63a272bc3f89f80
Date: Sat, 12 Apr 2025 00:19:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1744417193
