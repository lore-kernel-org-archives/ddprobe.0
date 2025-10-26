Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1554D18BC3D
	for <ddprobe@lists.linux.dev>; Sun, 26 Oct 2025 22:59:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1761519594; cv=none; b=gj844+JHf34imSPxCIdsr/B5zCRUNAmUl3QUsRe5muI6ffQ6L4FLMkSeyrG6gHnBKV9aLJcjTgOUVaRLrl/KyMMaDEEXSDu/8YXqXIS8AdEsDituoCNtSbuLNHKRRN1DSDN2Ldnp6da4PgEsubn4+WBJOs836IPn1P+6LrlH9I4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1761519594; c=relaxed/simple;
	bh=x2uhvyV3RKyihkJ+96vGO3DYNi/T9XYs6bTz8KQxYno=;
	h=To:Subject:From:Message-Id:Date; b=Qtr/+PhLAYF+c2DBMCbXn0X5HgMHeUBZS5mkP8SRIDlL7o2eoH2uh3lHjrIcWUT4v2tUIyEkyZFL4y0z//VcgntSOjpL94pNxlPPWnV+hDmQYndECJxSdz3oTKceFtq8+UCzOQBPZZjyItlmaUG3url2a+mo5t8L0R+eDWSC8w0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=XTMEsoMj; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="XTMEsoMj"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A6081C4CEE7
	for <ddprobe@lists.linux.dev>; Sun, 26 Oct 2025 22:59:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1761519593;
	bh=x2uhvyV3RKyihkJ+96vGO3DYNi/T9XYs6bTz8KQxYno=;
	h=To:Subject:From:Date:From;
	b=XTMEsoMjZMhhDTFazYZABZzXrnFsL0Ki0xurjLahWxhGzR48dJdmGpX6P7qcKgnws
	 t6NIXukiDJspvjT4nTYmphQ3/R49LuXgjnLpPrFKZHe8rxHM3/nqJYOHY+l+GCWPVF
	 V2BjNbWOut6JvRc3HvBN39W7CNdWrfPp4UVaerSudkNGmMs6DmAxU/hk64zC5Af00T
	 PDbpKHo7h93DC5br1quLUP13AhP8Y8DLpBzmLmMZbbR7wmawqif6a0RsIW68KVNgr2
	 K3A59tiabidlU7XgL3dJH6ydhaUlp54/rZ7ptwSfP14m1lyPOnEiZjiQSYJXrGcdMy
	 kER+7XliXo+Ag==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 93B27CCF9E9
	for <ddprobe@lists.linux.dev>; Sun, 26 Oct 2025 22:59:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176151959357.4107.12000993346510651065.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: f8c69fa0b315219c266d0610ee253df03efad80c73bf94fd95533438ee98edd6
Date: Sun, 26 Oct 2025 22:59:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1761519593
