Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 398503806AC
	for <ddprobe@lists.linux.dev>; Mon, 13 Apr 2026 17:47:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1776102454; cv=none; b=C3t5ugsCRidnvtLGs1bEk9nPYyvZk6YLVqRRiciUA6ni+cx13Tz8gsZrCs2Ca5Io7IqQSjdHnNkWrumGVxduiKLcqmyU/gWqanIvgMWFZNG62fj2w5OCA5u9CJgQf0BPh0oWGjKyeJxicA3SZBzp9gcCbdXxAdgbDeYDrBqI5nc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1776102454; c=relaxed/simple;
	bh=Oru24dtpbgD7fkNBeXm8gEHt18RWBXWfSA1rPAc2RuM=;
	h=To:Subject:From:Message-Id:Date; b=m7sPVKGR/dPUUdN8pe16DdVPD+yHu0XEu60FUzb5IXnbr3qHy69VL+cX8Dr1OpvHcQDs509Z8dHnJcDOif+a7Efwqsc4A+wFnHWAwvixf3ejMN0YnBac/jab8yXnoLB2kBeiF79ZSXYJYh2JhT75UMicKSh5iILDdbanwl5Ds2Y=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=PytBFkww; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="PytBFkww"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C322EC2BCAF
	for <ddprobe@lists.linux.dev>; Mon, 13 Apr 2026 17:47:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1776102453;
	bh=Oru24dtpbgD7fkNBeXm8gEHt18RWBXWfSA1rPAc2RuM=;
	h=To:Subject:From:Date:From;
	b=PytBFkwwYGPI45kBhtAITi4cCSdbpcbRRUVpn/5uGhF9NngvV5HjJ+/TTQ3NINJu9
	 8ZpQ+fn3tuRY9BeDnWhi8ZT/GvxU8tAq91J9rB1bZq41Es5N46r45rFVC0+l/Ahqp2
	 PO/7ICF8uxkptHxoUevbn1WTOAyrxs9+nJ0UUsXvmI4R3RXpP69ARsdkzJ319qBpXf
	 eYKXZCvC4+pbA/7fAumaFaTKuSwAa6U4X93jXAQSr/Cp3uF6xs5Ud+pyNgEyuSG/sw
	 9PbXYUK2YWqfMnvDD37sfX2vTcgvYRQKwW18w8k4TG9cxAdHSqgHpFJ5DktcSRqhYH
	 0wsRRVhGKCxPA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B3306F34C78
	for <ddprobe@lists.linux.dev>; Mon, 13 Apr 2026 17:47:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177610245369.24598.9513395580549893519.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 7e22c20327bc093da158af589146a6a0c1033deebdee3178a6749c658f051b06
Date: Mon, 13 Apr 2026 17:47:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1776102453
