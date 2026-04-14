Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 206B9248F57
	for <ddprobe@lists.linux.dev>; Tue, 14 Apr 2026 06:37:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1776148654; cv=none; b=AQlRC2tjqJ6VA+Cd9QEJvOIyM/bvSX/9hSV9LZYdbUFSwMZ1UmuoVXW7QZuShU/3cMlmzFG5CjE6hvrGzO0qCocTcVxLLTLKXJoU5f3ITJaMWf8IUPb96m2A5T8pR6NItUocftzohmQ7D26C6nEE8bHYy11M8kvIlc97CSReD1c=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1776148654; c=relaxed/simple;
	bh=aoscOhKwMY5WGgoY3EGlZDz1YimXvdUWBtxVlY9OMlk=;
	h=To:Subject:From:Message-Id:Date; b=MuzHusISWgaIU+BTUvOqdJbLAJUzHB9w3CmhzP9EA2qweb9v86gHpi8iFKPb61219N5EkHbwdfabJcShkMRmzOJvthLEvOz8uNpMPR7ui927pj0KB22VmojAKs56EryKsP2ZpsNWWVHLJ1toTDl4Csl3daXZN5Cyu1wr5JsSlZw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=oqpVOZI/; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="oqpVOZI/"
Received: by smtp.kernel.org (Postfix) with ESMTPS id BEF02C2BCB5
	for <ddprobe@lists.linux.dev>; Tue, 14 Apr 2026 06:37:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1776148653;
	bh=aoscOhKwMY5WGgoY3EGlZDz1YimXvdUWBtxVlY9OMlk=;
	h=To:Subject:From:Date:From;
	b=oqpVOZI/8ZdsxINFU07VUptIOvZH0vSbIvZSZOd0ZGnXjKAR3GtUr8kXULJDvBJva
	 ZGY0ZB9jAY3MZ4dFakFv3388rjXood78Qf+l4r//G33OL5axGrN1eSuD6OUB6MORLE
	 WENX9gp8uSQR+PPQf6oPuRudatSnIftn66viOED6zkm/olp3v3cipiQpvd1foTWqrL
	 YSZGRKlqSnMssZRZFWRXNYqdSI53BJ1j6u5JH4oaxPoWtOlyqIuRHXbdCjrm6OdGgo
	 3OHfA/W+3l9sERZHj4sNYyNqCdZqCUjjhDt2OaWYUnYgqrg6+Q0Q+K8a3SdLujWbnC
	 cSNoTjINzXyHA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id ADABDF531EF
	for <ddprobe@lists.linux.dev>; Tue, 14 Apr 2026 06:37:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177614865368.23062.9142844940346869482.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: c6d2251f24d33e06ef789f7d096cc4064f463c050767bd3643cd927806ae646f
Date: Tue, 14 Apr 2026 06:37:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1776148653
