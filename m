Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1ACA027603F
	for <ddprobe@lists.linux.dev>; Mon,  6 Apr 2026 17:55:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1775498134; cv=none; b=Ji/RPx3xPnA8PpFiJOAm1j3jYJ2tdzte61dCZyUHD3i1mUIxIoLx0idSwNb9v3xqQAOnC6adYc74IX1i0/m3OFNddek1citOwh+OSh5RENausEUdPhTbfRi6B8ouylcfeyMxfoYAhsUnJQx+Yft4ptXiN2oswi6N6XYjllXXYms=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1775498134; c=relaxed/simple;
	bh=ePP/7UOBQBMWVIGUXznS9ZgE1Lr8MlQHjVYY4sKDODY=;
	h=To:Subject:From:Message-Id:Date; b=ES78ijsm32V9zI5QBeGdpYwEvktTdy/4XTmYzeJmW9NzTmLi6mMcgXEMxmSnZ1rsf9snn48dpllr7bTyIwCXmZO7spQBjP8Rq9Sx2IBPJwVLlIH71BObiViaLsz2Wjnho7hCzWhtuWgsHkAm9aZd09Flv9AguxGaRRH3bbXpKfw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=LRDxE4OQ; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="LRDxE4OQ"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C28D5C4CEF7
	for <ddprobe@lists.linux.dev>; Mon,  6 Apr 2026 17:55:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1775498133;
	bh=ePP/7UOBQBMWVIGUXznS9ZgE1Lr8MlQHjVYY4sKDODY=;
	h=To:Subject:From:Date:From;
	b=LRDxE4OQhWQWJJRhvgPOQFEDMVhD2lM7RgufOyd7MHPxLhRSk8Uxpo5KNYdjlW3T0
	 JPh30Q7VzNrBU0iOKmgQTe6DID06W8A01iG12OOsEVUlfdifRb307m6jxAImIAB352
	 8MS7JeHaTkxh+o8zHxQkwV8k+VI0qWF3tLXjUXbA5h3OguYVOhmRas7n2yvPjrZtxL
	 Sf9gXIqiu9vXOKPwraGbHSkSOdj+YOa6+rvL3VkIiP9knVajsufCOZYz/dAVM4CsxC
	 pWc4E4KU/iaDYBTwqcjV02FeJmBOJohYU7gYleC8m/HwokJamCz3WA/8ed/G9iO2qA
	 +kpR1YRkwYC5g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B17C0F46C62
	for <ddprobe@lists.linux.dev>; Mon,  6 Apr 2026 17:55:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177549813371.3951.15256195699169786455.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 778b3efc3df068242c34e4298e9a9bcff117eb7035184d3a5370659bdb8f04f4
Date: Mon, 06 Apr 2026 17:55:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1775498133
