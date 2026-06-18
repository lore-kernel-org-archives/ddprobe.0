Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 275A63451B0
	for <ddprobe@lists.linux.dev>; Thu, 18 Jun 2026 03:26:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1781753194; cv=none; b=cWTMBmP8Wzf5T7C7Z+1B9kSm48wPzlo+CnTn4Qo/8ZuVHT3Izh3sqH1ZFbk5lsNqcWhzoxJAvIP0Dm9XU8Z0mdW7cXzr2/epDpT/VX3UVyHyys0TSvb/9L9ETvnRxLLTwJM42qeme5kikiFWMlBgV3okgRJJhTGiCtQl7XlTCeM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1781753194; c=relaxed/simple;
	bh=f5T8FnCZLZMiV3KAyd8Cej2jM+krb0dZtSL31RqjAC8=;
	h=To:Subject:From:Message-Id:Date; b=ab+60cSZ5R1nvuu3SSMCkzCBMq3f5vNqbnX4Gq7bxohooaxpJwby3YJMneyhP4K5eAHaz//kqP1ApNT8x9jhMkGaNAmU0B2VUvFD5/bAaAA35KNg3r6G7tKVfDwTBc5e5XbEt9sKUk6iiYE9U9v+rpwbbehqf6cnYhinmV7Yi20=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=e/He/PJl; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="e/He/PJl"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CC3A9C2BCC7
	for <ddprobe@lists.linux.dev>; Thu, 18 Jun 2026 03:26:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1781753193;
	bh=f5T8FnCZLZMiV3KAyd8Cej2jM+krb0dZtSL31RqjAC8=;
	h=To:Subject:From:Date:From;
	b=e/He/PJlDxNEwe8H321MdWo0mHkoXlQj+iDnIcN4peUZVCspD8qFMeWtLGj+9sgtC
	 4VdClfU0wQZnkAYvFpgWUjTm4/ek6MkobbSrLhyouABvNZF/NTDVMhev6sgtdmEepe
	 xVngDoxPnWt2F8A5duvk4ruQ9TerUo27Zv5hGg60WTEEkjikzFC7sSZJAMDYP96BMZ
	 /oyF0Bah8V6tdpOiOWYrCcP+v1ykZ/NDLiHPOppnj7LPOtCXNiz5VJ+dkltzT9f7LB
	 jIXz3ZqwiyzXhhJLWRp5myldwrg/+mHMty3nNl38ij/jtvUkD/dRDU4mpth7OBcYlo
	 rLGix1+fQTc+A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AFCC0CD98ED
	for <ddprobe@lists.linux.dev>; Thu, 18 Jun 2026 03:26:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178175319370.1442.3602737307386453644.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 4fc8b20970c5fa96f807e7d0f1b92921d7601f69041e0bd9ac388850e39add96
Date: Thu, 18 Jun 2026 03:26:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1781753193
