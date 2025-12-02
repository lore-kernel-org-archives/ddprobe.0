Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0FFF01D79BE
	for <ddprobe@lists.linux.dev>; Tue,  2 Dec 2025 16:02:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1764691374; cv=none; b=aaTcUDUoWuES+ZbSTETY7jEaF10RhYMCiaUzhjDbxq80K90lqSNrAzMQXEwCvptNCZu0jAohgE6B0eCHIQ2i+oU1Yshb/2CT2BmJHS8a00EBHR2XtLdsRxYInKJdgwlCdHzAP1pikqAhTbZSE2XnBgPXF6d5fNoq//+6FbnvmZM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1764691374; c=relaxed/simple;
	bh=wvOuYlHKtUQNSMAUuQ3qepVkgVlGQg3SqvomOwcHGRM=;
	h=To:Subject:From:Message-Id:Date; b=n1yN/959mgZQvtQl9Z3yg1XSNsMsGwMkyBaQvOSf3QMHe/yqiGOm0RTKahv8SuuYYdyvX9Af5IE8xRP/CT97op22W+OgT8blh5hoqidxQJSs0ZsBml9OLpZEu2nnGr/vIfbriOXUuTb97QjuWxH19EyPC5xteMN8FVV9mmk8N+A=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=SAgAs5O3; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="SAgAs5O3"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A1EC4C116B1
	for <ddprobe@lists.linux.dev>; Tue,  2 Dec 2025 16:02:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1764691373;
	bh=wvOuYlHKtUQNSMAUuQ3qepVkgVlGQg3SqvomOwcHGRM=;
	h=To:Subject:From:Date:From;
	b=SAgAs5O3pJtsIg/tK4X1yEevs6VBbdCR+NMplSgsrDVYfy24ra/7Mz7CLZy70r77I
	 VQgKCKPwjH+M2sTAZtN4ltcY+cGKzMhGhprGX3V/y2Cwt4AhvjZwhfAN5BFi17D2Ss
	 cJ/9VwwgWatPLuFqIThwrIXJteAMy11aMCBbLIxiK5Tu3QTc/YE4FHleMgp/2XrRl9
	 t0GxRFKCiKbGuADcpe3ycU9gCmqvMUepjTyiNJa/SiUG/TwlHzw5nl/SsyfopnurA3
	 KN3UX/f/nYghV4o4Zt7D6eAeGaKPCL/rRr9LKKU1ERZz11IGdJpYekAWl5KWVw0ZY7
	 gnxG6/YmbD2rQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 92511D11701
	for <ddprobe@lists.linux.dev>; Tue,  2 Dec 2025 16:02:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176469137359.13802.15176749298516868396.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 2fc0bcfb72aebdd3f6f668411e92c4f5eb6a6097644d2360d582bf504c022016
Date: Tue, 02 Dec 2025 16:02:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1764691373
