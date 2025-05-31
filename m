Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3BFA9290F
	for <ddprobe@lists.linux.dev>; Sat, 31 May 2025 17:09:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1748711394; cv=none; b=VEIlQz6fQBewI/YLmrDMVq2zlC11wsIbuwgUVWFpTxMKffJmd/KuXH5DjFQfS5nuUYaNR8NUxS2T/eoWg9WX1SLMEbPb97DoqMI+EmRFHKYddeCeZOhIArtYKbfiVyaazCeBW72csBpo7kt312sjRt83NRsMu7b6tv3gw9SP1ZE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1748711394; c=relaxed/simple;
	bh=a2SQbOCOHCmFKSCScefl6puOHOUgenO0kYSf4YC03Ck=;
	h=To:Subject:From:Message-Id:Date; b=uprTGQrQ366vIcxnQqTB91qyp+NrrZPmyV6c7WI5tIxY52lxLutR0TelxYtIEyJFQtKrFA1VpRpQwRrzBy47wcdmSnkUjKoCn4BUqEm47Ey6a2TfAqW0YbKTLi64lCFfUaO6JzQK8L2rB+Z+rjxhGrhdOI43/FJZG8FY0UsaPIo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ZO6/QvMC; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ZO6/QvMC"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AA62EC4CEE3
	for <ddprobe@lists.linux.dev>; Sat, 31 May 2025 17:09:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1748711393;
	bh=a2SQbOCOHCmFKSCScefl6puOHOUgenO0kYSf4YC03Ck=;
	h=To:Subject:From:Date:From;
	b=ZO6/QvMCauap4OJdJhwvDwzrZ73PI1McP4Yvy42b2+uUkP4oHyv53RDrJ95FBF8bd
	 LxbBs+OpNuD1mj+PlXcgwICIYfpD14DDMLZSeGOH8DvSFw1pdy7LItpgHgnXmrh3i+
	 te7r2w8MBJ3c7o1IH05efHWmUFfNUcFRsFWgc6wcYeaqPKZr+O+pJf7IMN6Q70xbqD
	 RT4tojWeo2HUBwwlWpHJTJQ+rbwMYM80EsX79DpALjhWyOX3WRUURBqD/FVAMeTBgD
	 zAcxlRtAvOMzD9RPBLVTHGuveGOx1ISBjfzQmVyvsehqTVoOloolgTfFaWWCBaTeIa
	 YPGueP7Gpgjmg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 97005C5AE59
	for <ddprobe@lists.linux.dev>; Sat, 31 May 2025 17:09:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174871139357.29132.4943196551335452121.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 88f0964d736d0aff14662213ba62041c0a73f0cafc8326417ba9a334cb808742
Date: Sat, 31 May 2025 17:09:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1748711393
