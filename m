Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3375A1DA4E
	for <ddprobe@lists.linux.dev>; Mon, 27 Jan 2025 21:45:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1738014356; cv=none; b=PIOwk/MFzx45YjjsibjzJUuGlvfzfDqKe+A4flpo8oOY//ypb2Qi4wkGOBjpeIlMtsZ7bbuZfDaaKr786AeUo3ijupudwdpMEc36OV4guWhxGi2nwU+61eKmS3JDoHw9Zszx268rEg8udwaLQxSkCQYGHyJldimk7oqx6Ex+cBI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1738014356; c=relaxed/simple;
	bh=/m4odlxZLrgaKvg5C1asP7zsyZ5NYP6os1A/hpNT7ss=;
	h=To:Subject:From:Message-Id:Date; b=LBcyR8/oNWFKG99eOcxSGDGZyOV9stH+vMwB4F1GuvOjPlyslVJGX2UKvITlJ6l8l/ByijAQDHrP/Lo+icrKQjWLwcozyqaNciqJ/QqQL7I7Yug8R9pbHRkju8ibFm52o2/j27zW2NngQbORNgr5Jd9HSHmAeYClT8w9HcgWaR8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=T63QR3h1; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="T63QR3h1"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A82E5C4CED2
	for <ddprobe@lists.linux.dev>; Mon, 27 Jan 2025 21:45:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1738014353;
	bh=/m4odlxZLrgaKvg5C1asP7zsyZ5NYP6os1A/hpNT7ss=;
	h=To:Subject:From:Date:From;
	b=T63QR3h1sxnuxDRd6KSIEDNilR4gKdIEMiF7xKi/SWyfyZgebZsplv4gfdcajmmBs
	 HT+L3mr/WR8rjdVGZUBXig1ffxS8P11k112rHSLa7Sc8Vh0QO7pdXP0m0za6RAWlOP
	 4c9s3vdLLAqv8242KGlmTZxxPZdRaq0GpDoKfx6uORzd1u68hpuXHyASwluvKEpYzV
	 pGum7wehWoSDDMR1mdunREaP/cCNAY+IbSI15ognjhFp9dbcbjXzbLin8aYXiZCRQO
	 QsA8Ld7rFAOWvoFuulnY/m7Sycb7iHnossmPmZuXw+P5sulnKEEWjeiyl84wEpIqbI
	 taLQSWOWckCBg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9083DC02188
	for <ddprobe@lists.linux.dev>; Mon, 27 Jan 2025 21:45:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173801435358.21577.11083877756368440620.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: f90d39bed4856daa3927fc35098ef3b61323d1fc06b76e64148ce7dbd490ecce
Date: Mon, 27 Jan 2025 21:45:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1738014353
