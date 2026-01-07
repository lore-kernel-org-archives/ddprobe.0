Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1DC6B32A3EB
	for <ddprobe@lists.linux.dev>; Wed,  7 Jan 2026 10:43:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1767782634; cv=none; b=CU/9Yzlk9czzFDZgLZvCgtmkcqfhxHCATFTEuV1+kNPSYLvshCQjsi9F899mHpPw0j3SuwQcVLLR1OHZkdn7RJky9p6NAW2HpqQQpqw4mniN/tVTuT+xz3yvimwyKr1mPbiXTt3cynYeUqbPEuO9GPYbeLWq/NFgStGyywv2rC0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1767782634; c=relaxed/simple;
	bh=8qTdEH6Ao1u7Nu+Bew+pSKqsllt8Ld4EKYx+jHBvADQ=;
	h=To:Subject:From:Message-Id:Date; b=rjaP6Hb2MWaX/V2RWV3rWuXy2NW3XIhliWO0ygxXwKlRdOXEgKQIK1u1I+ZB+IMg34Llh1Vy99dPo9EO34gtARDj47ZgQXsw4j+1EMf3JY4nIodXIUl3910QRus+Ek4qRJzps3RHCdP/c8ahoBvmP2esyjXyRwD0FEcyudvN/xw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=WGQfHHzq; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="WGQfHHzq"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9CA89C4CEF7
	for <ddprobe@lists.linux.dev>; Wed,  7 Jan 2026 10:43:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1767782633;
	bh=8qTdEH6Ao1u7Nu+Bew+pSKqsllt8Ld4EKYx+jHBvADQ=;
	h=To:Subject:From:Date:From;
	b=WGQfHHzqAa3ivqHkl2jKIRFVclhZsFHS+wHdRYzBPGWbCxWO9tyyE2TXB7mAvr50M
	 eTOtY5TguwlZsQ8zrjbaYtbKstOxAHQZWv/drS7YyNF44yyzZ5KWb8Z3k7GCIdi/X0
	 4KiooIiCJoOhsQni1S4VCq3OFgKXW8M3D99wY9H9YS6SaWkzHJPZXcksCzsDjI+y5n
	 3TneRl4pTfq30MP4auNtTsSdjRuS7N/iZNu1GZ+gVCn85A91dfgCkZF4wl7mS2T82h
	 cmdjz9vB2gQxt3bOndwEHmql/DdUv8l/Wg+NlQ+oO2T2bZzOihDFY8Cy+SE0zmpM2n
	 ygMMwm7OLOUyA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8EA2ECD5852
	for <ddprobe@lists.linux.dev>; Wed,  7 Jan 2026 10:43:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176778263357.5405.6847037675216649372.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 5401fa414002ffbbc3f73ea8c7e7916519fa11580748cfe586a232a194480978
Date: Wed, 07 Jan 2026 10:43:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1767782633
