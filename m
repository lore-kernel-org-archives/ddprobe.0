Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 297892DEA78
	for <ddprobe@lists.linux.dev>; Mon, 13 Oct 2025 06:29:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1760336994; cv=none; b=YWKJNZCaVj0u57UE5+IOFqd6LdGYM6RwRNpRwIR8CHguKNkY+OwPZN71MFh+pStluF2OzwOCR34ZXqozQv6g6D+1FxYCSjl/kXKuXLtLdOsrn4MwbAEmqqJrxbxecM18Zd1GEPEtiWFAO9DkbHWwwg5jozAaVfPBBo9+ChyjajU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1760336994; c=relaxed/simple;
	bh=MqQu9N8rXYRuRi1l8FmPABv+crjZ68ZxZy6HpI+MHEY=;
	h=To:Subject:From:Message-Id:Date; b=joyd+ubWfKaJrAJKoNAPcHffjriO0QH3inqRP2zzdJ4vkNi7pceDI09wu/9q3rYDrci8OyLokcWtLBgm7usm49VtJfFfHx86Izyir5hUUyaW6wADGWpBeR79icyp7XqpUaB4Ye6MVedRoGCKu5/weOInQlfUFXjlDYK+VpFZUJU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=kWIinqzy; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="kWIinqzy"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A3EFAC4CEFE
	for <ddprobe@lists.linux.dev>; Mon, 13 Oct 2025 06:29:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1760336993;
	bh=MqQu9N8rXYRuRi1l8FmPABv+crjZ68ZxZy6HpI+MHEY=;
	h=To:Subject:From:Date:From;
	b=kWIinqzySgsU8brIoVg15j7BO9HQHQjMHqP4/j5BAzId63GcNYb/FIiK+Nk9zcHSN
	 WxNfeK/psUTG8mJdlVYULNRH6qFvSL8kZ+2kuNWIvodHTePpBMReI02mfiGuBc58s4
	 fIUXhiBAk41IBI6YHKJj0vbJGzkAWrLDQjcFkKijJuxsvhuAU60yO5dg2hQI5RddGN
	 eXIM2qjZNJwh4KJdmICBROP8LllpjUpcr2fha6kv67TwUxh2dZkvnwQrU36fMcDjMr
	 zqQesUzPa2USH2I3wQbclT661QWyWjCjTMl6NUZZx3XinJFQ/fzUMx0jugm9zOi6tp
	 qYICqX/bvL+0g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 92241CCA476
	for <ddprobe@lists.linux.dev>; Mon, 13 Oct 2025 06:29:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176033699357.8547.14242342543940760455.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 092b613d03a7d44d4c6ea2a3b5e8d0756c173379b14b3c93a4ba60df869f4bf8
Date: Mon, 13 Oct 2025 06:29:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1760336993
