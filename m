Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 39C392AD37
	for <ddprobe@lists.linux.dev>; Sun, 26 Apr 2026 22:57:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1777244254; cv=none; b=GwGcnd5yUu+HJMxM2AdhLcjlJfZtZJlwc/0iFBtXvJJovixlHYC39SNm2aIBOzl751a2PkX6vEOyJVCmMMvOcRIFU18VhwiHmaOV+cTd0yE2AJiQCDdgdmuYgOklED3gKiUpVPqc3KyA/T/tkCRPV4K2mZ9ZSud31pgycNuqI2Q=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1777244254; c=relaxed/simple;
	bh=4rDTWpcCNIK/LO2vHuPTwbPRAgoznVe+7hYMRGto+L8=;
	h=To:Subject:From:Message-Id:Date; b=k6mCedMcJLljlYlfgtukIQzc6jvd+e9b/eDstErPsoOsaLSorsjpcoSp4Ndmi7mVH335ZxZRumaegQMRQ8g64Dz5dAZdejdLFk/FIlcPdG7OOdlq7et9nuQ7bBXUNuSFLM5+M4vznMLDSVlX3mLNEOeU1XVO1O6F4yfGA4gr5fY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=HIA0wbFy; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="HIA0wbFy"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C0B12C2BCAF
	for <ddprobe@lists.linux.dev>; Sun, 26 Apr 2026 22:57:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1777244253;
	bh=4rDTWpcCNIK/LO2vHuPTwbPRAgoznVe+7hYMRGto+L8=;
	h=To:Subject:From:Date:From;
	b=HIA0wbFyYfk3QUXQL2IL/itMwVNVWog9ryuMWRqfu1xU2Nra7XK22jtYMJQhrirwJ
	 l/dJpR2FzUg/m1mm7a0VFRe5lJDwJe/jHDtw/wC+nsC0SP2Wz9iRIJ0zTPU5T/G42Z
	 qKhfAWNhnv520LpOq5ZNoxKFOiCK1uPLDwASiTVKw1Hs3+ZMX5tJ5EJXUMVOEyMa61
	 E8svv+7DfGzXv3aQi4PyBmwHweqnTKd6THy86VS8liIkhWIOMOGHjFANSGv4NvYLUc
	 JHzHKX+HBrAYcCDd9sAwOZRGnjcYc8CLGvMsrygPiVvW/po8fQvLVbEumtYX+MhQHv
	 SE1ddgqaGbe6w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AC052FF885D
	for <ddprobe@lists.linux.dev>; Sun, 26 Apr 2026 22:57:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177724425368.22929.18408054199519529947.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 0605140a449e105504a181292c9a0eeee95e985449c819c7a23902426d4ec139
Date: Sun, 26 Apr 2026 22:57:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1777244253
