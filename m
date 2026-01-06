Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id B6B7B2D8777
	for <ddprobe@lists.linux.dev>; Tue,  6 Jan 2026 20:23:54 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1767731034; cv=none; b=TUdAViuCkb+6e32tPkvk7yRaF6PAOG1thMK5OEkw9KUhD2wWqO7mJCIcGEl0zBjzB9TRhGCtP8838Ofwrr/8Ledd7aUMoMe6bFUjV89le1OThgqw2esRNgc/Cy5xXEedM2xX/BB7Zowr96UAyHMxSvAx5YQdC9LgDaNLtOWOmVE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1767731034; c=relaxed/simple;
	bh=8E51WERnDhTZo+ZXTHdozd9q0JgS1PFVC27Ym3qNj4o=;
	h=To:Subject:From:Message-Id:Date; b=IeOIsQjQ/cSTPK4tb4B8de5hTfDuOV5GIHpU6RVCVEQbZAsgxnMUj96JtID7rY7crm4K40YutaUWkU7aqYOZDZN09rJM7bCQp8J+GL5nH99KNubVqHBmguLNEyGxvYyYN2stabvCgFb7CzHbMwzQz+pc/YrgaPI7H+sMyEQ8HAI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=r5BMpxx4; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="r5BMpxx4"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9DB12C116C6
	for <ddprobe@lists.linux.dev>; Tue,  6 Jan 2026 20:23:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1767731033;
	bh=8E51WERnDhTZo+ZXTHdozd9q0JgS1PFVC27Ym3qNj4o=;
	h=To:Subject:From:Date:From;
	b=r5BMpxx4Wc9AcfHIJkEt5K26ektO2YlKRV0SLbzlDk+KWZH69Lx26Qqp6FfnB+NpH
	 AuOv6Trv5ToYYzX1o1NSvN/HtclpteqCroya34ztpyZWGiZdKehXfoXJkEYl0bqUXK
	 1KSL2AQRUzUAcnwAl06FfZY3eX8eH9sCEoaxciAAo3LBiKDgKEjz19L6rsgaUzquf9
	 clAwjZGPmuHvumunm1UvWFUkQ9FU6h8zxuiseCl1OGo8ymBAOGPk+dCPsziiolPILh
	 UdBcM6Ef16OLot+oqS1sh5a/j20UKQ+6m/LWD1XywlrtruXUjaXlELfS0WWlmvZMw5
	 eIK6aZhbXdIWw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8FCE9CEFD03
	for <ddprobe@lists.linux.dev>; Tue,  6 Jan 2026 20:23:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176773103358.2694.14021946067790494766.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 8cef00336bb02a7f6ce75b38ef9a860b2fa508940b65b60fb70264e202a9007f
Date: Tue, 06 Jan 2026 20:23:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1767731033
