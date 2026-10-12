Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 349A13438A0
	for <ddprobe@lists.linux.dev>; Mon, 12 Oct 2026 11:20:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1791804034; cv=none; b=ZxEO5Dr8SaXBG0tMjtxZuumFlY30LB8LU0lMI+ij3vioMWS8kMeozcaCNNQVlHI7MHTUtxOP+cPZRryyP4j+vPdTW9NDdkl0ZDyR7jBIz7lIyRwE82WCJuPEMjMP/CgZ/bAd85NnJkj01IWvWp03R/wNKCpZ/smW48toMM4TEb0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1791804034; c=relaxed/simple;
	bh=oklWnGHj/23a5Vgy4v8+506s7nbstuIefihqVYShrMs=;
	h=To:Subject:From:Message-Id:Date; b=EDjpEORSGmILJLTMF5Hx266rHz9mpoucUTwNDFzzn1RVEYo+vG1rqDaBTZ4CUiL1DWdoN6eMiu8MoOwYCUnxAxn4EQ515HT2rSrDgRq1J5daFHpUHo+z3cJ0bWKnc0yBmW4Vb82Y5ledNsymb1XaC1WGcrpLx7VVeDXEZt4x/aE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=gv9aC8bn; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="gv9aC8bn"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CC0B8C2BCC7
	for <ddprobe@lists.linux.dev>; Mon, 12 Oct 2026 11:20:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1791804033;
	bh=oklWnGHj/23a5Vgy4v8+506s7nbstuIefihqVYShrMs=;
	h=To:Subject:From:Date:From;
	b=gv9aC8bnozXDile89fxOlPxdrssxZcWYI1XUeM1BGQON6AzUSCKFfnCjmU4VNyc9E
	 Hb1m0WdR3RTII4HDj9VIQITkJteFEh22552GwkX8hvXTJJdNQDJp9Y123W9Q036X5t
	 vR/uN4Rb1bowdnU58wyfgIHZcAiqDbCo+0n2CxwtH+2Ij8Xj3Te6LV0eMXEKn0z85z
	 DxEkMvfrV4neoNSEwDY3ntvSBp/gSuL8sOAkUKrAdcW1HEp7XVv7H7fhZ65YsKIbOK
	 xMVKfT/L7vjKFnxgF4kKMEyeezp8gZ7vJ+dKcIe7vq2CioEjPFqUySlypz9etqAvQS
	 ZehMRjx/DfF1A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AA5CACA9ED0
	for <ddprobe@lists.linux.dev>; Mon, 12 Oct 2026 11:20:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <179180403368.25577.1789597195199543834.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 46f035b40e9baab14deb8406b7b5436af48b2f346d7835e6ffc9a6f147dcbfae
Date: Mon, 12 Oct 2026 11:20:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1791804033
