Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6CF3C61FE8
	for <ddprobe@lists.linux.dev>; Fri,  5 Jul 2024 05:25:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1720157123; cv=none; b=VCqP4D0xW2/M6qE8OZZz40V3VTAIZK10PqAB8yXurzbmQxu3x+UTjArmYtV8jvi09eb+UHPPDgyEgxlKurhfYeo/0jAfKUeOyDcEk5IqUFT0T26H9kaSF340DSUF0+enyaUo9of9MERz6lBSEL0d4pi/foe+iLp8q1EllJ+8q8k=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1720157123; c=relaxed/simple;
	bh=YBzhS8NyqMRW2XE+Wb366GoZ2vUVXYKR3Bfy2GvkWDM=;
	h=To:Subject:From:Message-Id:Date; b=MglXaXAfBSe6xByv8/8v3LXBbQeNmvs9ObRAGXV+l+w5G7DzHoHfTLc1+8HUSL5v/FE8aMnvFoh/UiVomNEeAIHcPkdMFrTkMaGDrKfA+QPyQBFNLlU4VuhKHR7Y1g7v+805zQhJ10KLCrGNyu0xmap+ajRwfiit059P5Upv8eo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=tU8kbCZr; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="tU8kbCZr"
Received: by smtp.kernel.org (Postfix) with ESMTPS id DC823C116B1
	for <ddprobe@lists.linux.dev>; Fri,  5 Jul 2024 05:25:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1720157122;
	bh=YBzhS8NyqMRW2XE+Wb366GoZ2vUVXYKR3Bfy2GvkWDM=;
	h=To:Subject:From:Date:From;
	b=tU8kbCZrjT5wf1E3J96NGNAmEphnZM0CaJk/nKeQ03ZQb9rIXhLHlF+sJOp6N/f+J
	 ds5O14Fd6Q05Zh1mfwOYboMzaqaVyI4N9veDCgzBWTpcjuDm7+laQHka/NIT3OEOeC
	 h3pUtyLXF0a/cYY8wfu7aNueKRrHyYf15dH6OBMFkGCV23vpEJpR2ocOYBlVTvoJad
	 mTLwaDSCk8BiDnamMrixn8q8mayogpKy9p7epllxYWxJ7Sie7dXkJxElqRT+MtOpgo
	 tujHM8yBM88ybDXomljLRzkBRmpuOCJJCC+Q6Am9zntXxb/DOOsx4KUb6X2CHUz/6t
	 /PY6WmT8AuqWg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C54CBC30658
	for <ddprobe@lists.linux.dev>; Fri,  5 Jul 2024 05:25:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172015712276.26722.5005062751221665861.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 468a1fd49a72059b036b6b601d8407a0d271193f20bb4a43572e18d7ba25800d
Date: Fri, 05 Jul 2024 05:25:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1720157122
