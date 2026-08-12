Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 31491455175
	for <ddprobe@lists.linux.dev>; Wed, 12 Aug 2026 14:20:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1786544434; cv=none; b=N70WDpJlIpYZzJmg1qXhsotpHOOF+GBKlJBUlHJ0SzMyxPnb7rM8153GFFfXxbZsndoryPxn+a6MAVUn6iTqw9p1DLxyKTF6+YNGSjkOfQu9mWGF5oclNsJROIO94wdOe2NiNuONks2ly0fEFWgj58t53tKBYzSFika9UGsLX3c=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1786544434; c=relaxed/simple;
	bh=qDT70VmML1h153Sivqa07PK+c/X7d16upmvtGuBsHp8=;
	h=To:Subject:From:Message-Id:Date; b=GsVWMOkbYkg/6UD6OhoJsLNy/OThrDr5yDRe9OpOqPhd/aQ6dzfURlrUUSfJDGXBpVMfC2PFafsOnYCfATXfpUAqMnlwtPYc0IDswOJG3mm5PDJQGFV6poBx+ZjxDoGcgOOBY1U3HX1IdmZtCE9o0cI8BVbePIuAQBlhrBPtSNc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=BiF4LsdC; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="BiF4LsdC"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D07A9C2BCB9
	for <ddprobe@lists.linux.dev>; Wed, 12 Aug 2026 14:20:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1786544433;
	bh=qDT70VmML1h153Sivqa07PK+c/X7d16upmvtGuBsHp8=;
	h=To:Subject:From:Date:From;
	b=BiF4LsdCLV3pwaHhE9rZJ46VTfXuCL/83wB35sA8FrgkioowQMinURh25PXeSjguj
	 +JQlDtuAeBkz4xiaqvJBD8MZZY6RSRUhJTupXVwfstKWfpRmece0mJSUM35h5JDihI
	 YP4BxLbaxNF3lBKl7ersy3LUuBlhgqiHy17XImJ9t7sNGAycYuQ2A9q/eF/5OIByF+
	 GnSvhxffu3rQqr+6/LJGkEOzOfNeOaNMCGhO/phR/cGGaZpdok5UIWn2rmIvZDXvgF
	 Kd0xhZc0kQoj9d/A1f0OEA1SSpZQtROjzx9W4cqIruE7E7RctYjjqF1lkkFt3iIbwu
	 l758iUzBpvihw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id ADE90C5CFCF
	for <ddprobe@lists.linux.dev>; Wed, 12 Aug 2026 14:20:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178654443369.22468.16863532528298938460.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 74e103dfcd5c3076339f73a2eb264abb3c339543dc80d6a149410fc5a1d3861c
Date: Wed, 12 Aug 2026 14:20:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1786544433
