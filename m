Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 77AC617B50F
	for <ddprobe@lists.linux.dev>; Sun, 30 Aug 2026 10:30:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1788085834; cv=none; b=PWPxqUFXN8HcJJ8LDKNaRCbQExSDcAN1WGmC6dhiV8w6L/ifDGpPxQHS/oOmY/Q5UESYZelRcira5uTR0OnA+0bvIj96rWHYaz/63o6j+pjKTSD4FMMN6+A5RSRqUQ6e7+iz5yvP8nf1dg8PUFa1DbHOp7YOzfncP8PSicr0dmU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1788085834; c=relaxed/simple;
	bh=2gOqAyG2Sudb68y0YRJCW/FJNUgVAbNJtnEj4EGvySs=;
	h=To:Subject:From:Message-Id:Date; b=uTwHFUlZ7USZpsLKTaO6R/Ho/4Xn/ygrcEQjHYzbRyDJ3S6khZpLk3qAlFPOczbvQCz5k2qZ5Oswex3G50F9n3lebVO1Dq6NjWH7byMG3Kcw4DYIWG1wEFC7biz1dU83ZDyIP2zC6hbi8t1TsaSBaYQREkp74js1+Hvj3wKzYjU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=bZ+5eS16; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="bZ+5eS16"
Received: by smtp.kernel.org (Postfix) with ESMTPS id E2859C2BCC7
	for <ddprobe@lists.linux.dev>; Sun, 30 Aug 2026 10:30:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1788085833;
	bh=2gOqAyG2Sudb68y0YRJCW/FJNUgVAbNJtnEj4EGvySs=;
	h=To:Subject:From:Date:From;
	b=bZ+5eS16blqjciE3Nth9DoJpGqsu+N4tDgYZTmHNKsFksh99nDu/Vf8aqZxBHY1+d
	 oV7nLyhmp2VmbO2fD2Eu8VgMlyZePvKLGScQWt5MXGIR68RpANd4nqEESpOOLc1QAL
	 4YDuKSt7D+wK3b/uNXjxI93YfFWb/bd5SVYkKNpFJvmiJHqbvaPPxeJyv3HsyquPcj
	 LJ+Je1ChmPlu35GjqvupTuteUn0yrvoqfObVtlutj01BhOfV4epAVuXZm1uFGuieXj
	 SrnY3cY18TfOKbxrUvTm5GsRfgNkJ8HF+JX5dwJjA/QN7Kq0al7OBVRD1tLs7Ja4i9
	 84DBumu8RdbPQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AFF73C61DD9
	for <ddprobe@lists.linux.dev>; Sun, 30 Aug 2026 10:30:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178808583369.11759.17055362720575172142.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 88fede5cbaeca419bcd179eb017b2bf611eeb3c502cf01b55efd53ad5467b03b
Date: Sun, 30 Aug 2026 10:30:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1788085833
