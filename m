Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3E2B633DEF7
	for <ddprobe@lists.linux.dev>; Wed,  2 Sep 2026 20:20:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1788380434; cv=none; b=SO/AQkIASesV7XbGS1dQu+G4sa6Q94FoFdWryk8nhz7kSC88dgvsngiu4oumR2+lmUaKiNPQn0+Szi7SWi6DbMLmNy+7Ixg8pAUme8q8+SgJkVc4DXT9NJT0RB0qAw23kPUeBt5JCYB6/DBEMhy1EA+RzfFEP+4/ornm6E68ZCU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1788380434; c=relaxed/simple;
	bh=ThdEOqGfBgoVfovLk5r3XmCtXUVQda0jiAHPfQ3ao3o=;
	h=To:Subject:From:Message-Id:Date; b=j9HC4d9UAzPQveaYMSG490lAo9W2nYNLZV9/FEXuDiFErl5RP541Tbr50fHY1YpT32eckRyN7IerkpD1RHVMFJve6iTXzQ9r7BazSR7QzjZvMii9RjyYJfjvSzwx7rKwYQ9o0rRqBTVaVtt5oz9WXGVFnR5c0nkObfYfmQ14xwc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=AvqyVDxt; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="AvqyVDxt"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CFEC4C2BCB3
	for <ddprobe@lists.linux.dev>; Wed,  2 Sep 2026 20:20:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1788380433;
	bh=ThdEOqGfBgoVfovLk5r3XmCtXUVQda0jiAHPfQ3ao3o=;
	h=To:Subject:From:Date:From;
	b=AvqyVDxtVUID5mkRSvXW2Yb2VdSf2i/vG6q3uwa9nhJYlZ7/65yF38j4vMkgq3QPj
	 qK51j/gfiEC5oc3HIhWCMdt7PBNDyjzBbW7kUDOtE4bIbnrCStFrbyH/F7sbv4x2Rb
	 QJRMmHR8mgoiiozFGfAjM3U+5qA/GwMZV1SkAU7lkVF3RmFVdQSHm2MD4LQv5Rte78
	 5g4HKYgpTxajML5mqYw9pV1psvgnM4Vc71iJh3LgvhJz5EdnPYeM6T9U/P5Ahy7WvI
	 tBsC0ur0Qk44kuG4CEa8yY0JTi7EOuWL5x7YXMPOJ8TwPqfFJq/XmAtBiA5wY5fi17
	 FQtdCUxf7f8Vw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AB109C624D4
	for <ddprobe@lists.linux.dev>; Wed,  2 Sep 2026 20:20:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178838043369.29236.3835920302986978914.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 0e2d38cff0a20cf53f25de11479060bb8fd1f99f9793bb00c2635cb585174025
Date: Wed, 02 Sep 2026 20:20:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1788380433
