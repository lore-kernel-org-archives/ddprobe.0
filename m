Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0279A281341
	for <ddprobe@lists.linux.dev>; Sat, 17 Jan 2026 12:03:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1768651434; cv=none; b=sEpvZANHiIiSLBjuy5BkFp9FOMFjj1QOE+Y/pctBjoOSXSrjBCE/TimJAhkEBLK5RVJl7D4CgSe0bwBEEGhXx5K8AJrk5gxzR4I/N3N35hOCiJI1H6m3BqATIuDzrOoUf729sBAIle/aBdgPV4HrPDsLnmu69dgUk9NAgl3Y1jI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1768651434; c=relaxed/simple;
	bh=xFJTxZDuisIs9EaqlNTVxVCLQ2tNaO52kg+YQJZQwkY=;
	h=To:Subject:From:Message-Id:Date; b=UjX3OvOtAfLcYf+zm2lM/eu2/l8y+IT+ShhtHOLbdu3qeeyQ5JUNpQ+FqC34fCk2sCTZ67FTYqODKCyHadQwdz/eRR20izsZ3zs8S97qJZcReRUQKZnirWtSb5dOM50b0xmHTotDnCM92RRBavTnQSeG1AXyjEgeUhO6lJYa04I=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=eAU5dggk; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="eAU5dggk"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AC1D2C4CEF7
	for <ddprobe@lists.linux.dev>; Sat, 17 Jan 2026 12:03:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1768651433;
	bh=xFJTxZDuisIs9EaqlNTVxVCLQ2tNaO52kg+YQJZQwkY=;
	h=To:Subject:From:Date:From;
	b=eAU5dggk2FpVDVNyBmGBnB5mOq5h69izgxcm6iMxdOxvHAbzqZ5Zz+JK2tfdFLTCD
	 UiADBX5duytZYeP32bdLmPPkb06rkT3ehbBKEMjchSK4gkXOiAjhOxe2VEQtC0xOrr
	 2T69UhRNVLvujPCBPMRcDMbyRB92jObuLlBVrTOJgygm1MDiH7w7aP2eLWdZzvUZK7
	 ocV4ngHIOOfmbww5mjNxf4yDHg5x3gPgJvZiIi0s+UNf+GhVfIGwENZd09OrpJ6zWs
	 HNelJ3zwH2A/x4dcw0QOKlAAD8LF27Q2UUJ4PdQsajBl+MtKgNCaqOi7+91t63o1oO
	 rxuROjuwXDCpw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9452BC98322
	for <ddprobe@lists.linux.dev>; Sat, 17 Jan 2026 12:03:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176865143358.17559.14639605618384312629.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 7daee64fcf527aa52c23f7981d670b46628f06dd6660b3b841cd208754e8a142
Date: Sat, 17 Jan 2026 12:03:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1768651433
