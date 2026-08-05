Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4EC4B3D3339
	for <ddprobe@lists.linux.dev>; Wed,  5 Aug 2026 19:20:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1785957634; cv=none; b=pOv3+uj7C/tblcQHWaQ83c63fHEGyGsnpBpmTWvIu1nMLI9kQsQadpVOJzZFlrAorpSKnGg0NpC3o2dM0Sl01SMCtyJVdDGCRnLAle/d56vTIQoNtx0dKczx0IFrbPNaarG+or/8R1QZGT344OU5P3uLmmnhLEFCuBZVi0t4ZmY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1785957634; c=relaxed/simple;
	bh=r0kVNH5MOVJLTADpYXBZTHGSFkVLeswmGZS/svVYbt0=;
	h=To:Subject:From:Message-Id:Date; b=Ul/DkWF8AnWas44axtLJEM/jwB725r+GPqBNGfS5DTrovyx7EN4rGn2g4Ic7OraXecWR2z4rI4OlUmplZss/oGqpf6bYVdpWoeVfG5q0ObizqECak8LbQ0cL0AecIxI8ztBeZ7yj/jDU6gVAEB4+vbV9wtjv0Zq4oL0IxijcZ1c=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=i5sAEsRE; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="i5sAEsRE"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D50E6C19425
	for <ddprobe@lists.linux.dev>; Wed,  5 Aug 2026 19:20:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1785957633;
	bh=r0kVNH5MOVJLTADpYXBZTHGSFkVLeswmGZS/svVYbt0=;
	h=To:Subject:From:Date:From;
	b=i5sAEsREPBCM8U+3eqJHNwelm3tbvysaV9WeO33xWKWvdEuGjS/0pLlHAdMrqFuZZ
	 eRstk/Bo6LJN46NAM6JZJg1yo+xZLpeWh9v7P37nzlkyXoIsQhdneS+2pdwIRR5OaA
	 ebrt1ROj3qrwJArDw2Nxc8U5CeqmX3Z/GN9MNvD/TiBc7zjbk8WD2TE2ycz2QfXFkY
	 gsu2Gf9F6M+lwNef2Y6BhingCO/cefas0Eo34SfipEot5MXIwi9myCp4dVcbq/yPM1
	 f48xwgR4YkFwBowBIk76f2O7sMcMjZO7fhRwKvl8Iz+uRWo6EYan+IRh41ZfPAudnA
	 zO3om7aolNa9Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B25FEC55ABA
	for <ddprobe@lists.linux.dev>; Wed,  5 Aug 2026 19:20:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178595763369.26385.8014349704850248899.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 767820c569c0722d9d37e82b56fd79c06bb1991740d7696a9327ea434838dc32
Date: Wed, 05 Aug 2026 19:20:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1785957633
