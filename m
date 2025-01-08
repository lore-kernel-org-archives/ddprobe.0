Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 264A91946C7
	for <ddprobe@lists.linux.dev>; Wed,  8 Jan 2025 12:45:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1736340354; cv=none; b=CBSuLMOaTdRn6/hox4lGieDdOtKjLuLGBmnndS29dD9wun4h6ru3RAciw+lT3J1TzptPfIFUgL9cCYvkKMJJ78D6HtyZuDrUV3te+m1p+wsCkZMVBy3BPDNqraAvL0jPwhGIFPB+ikZB9zFdDKC+LJRy9NbhK+kOh+JyCeNLF6A=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1736340354; c=relaxed/simple;
	bh=bdRE07As/nzJJ7/XI3qewOvgbkCHj/TiExk85cgpZxA=;
	h=To:Subject:From:Message-Id:Date; b=XA2JAIyZjx0dbrQZEid7qC1wnsybnz5umObTkfCkBsaVnx6GrgI82i4UB7K/UBgJwPyaZtzz4BJzITMzpWdvB3Eh583ZtSOdGd7I6zXRkxv+3UWZ9FATwrT9WUQXO6Q4RRtSKspu8usJmGv1cPBuwXFFpb3D1wz5HEs/RPaXYXU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=WE0akaLC; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="WE0akaLC"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B0CA4C4CEDD
	for <ddprobe@lists.linux.dev>; Wed,  8 Jan 2025 12:45:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1736340353;
	bh=bdRE07As/nzJJ7/XI3qewOvgbkCHj/TiExk85cgpZxA=;
	h=To:Subject:From:Date:From;
	b=WE0akaLCTIC8hNgimFzdNPmvxfjDfogMfVUT0F6xBjFlT/K1KkwAVMLd4fb82zrip
	 0lFciA8aG411q881hHvXjoIY3QKOcTUwjQZXKpZseu01DGclmwtj3cBhD4JWdjbU5W
	 E+DkQVMESzLI+ZLEwkZihEVRmODMVGYscBfVm/nAg+JmjOY1WXzQD5cYTzbPLc1kTW
	 rE28yTElLboQooFX27dHAq11i0bWgorUAdNMs8mzQKbVy3BwmK1S/Eoffvaoq9cumc
	 gM1vpbw2yFStGEIbpkkHcRr2B/VTX0tySjhC6UsJou09gLRoBTue9Ko3T3//ibjJ2x
	 quDYf8d8A1BUA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9C1A9E77199
	for <ddprobe@lists.linux.dev>; Wed,  8 Jan 2025 12:45:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173634035362.32010.17938890736999739093.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 968f8c4b90478fa0d6b0743cae2ae9883fc889cd82dab9bbdb3b63b9da9e628f
Date: Wed, 08 Jan 2025 12:45:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1736340353
