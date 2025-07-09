Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2ABC0198E9B
	for <ddprobe@lists.linux.dev>; Wed,  9 Jul 2025 01:59:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1752026394; cv=none; b=Dn5nubefNADM04bhNYKMDs71dxNkBGTzlaUafSgKnT5o/AVLBeKanI4mjVtPGniVbuyKBPuYTsIvULCSOJcq8E3hx1HYxkt7ENZLeYaOH8NWonuIb14HiVbHKNMxb4sCuY4BgW6oFtPt/Ng001BlDjT18MIJdMkp0kOsVncgXeg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1752026394; c=relaxed/simple;
	bh=qb19Ez+ptHe37h9dBIVVS1LYIZ5nRX2UzEYz322weJI=;
	h=To:Subject:From:Message-Id:Date; b=rh0AIQGEnNPDJ4ObAmW90gwk1L7PdG9SY0lZAV59NFcanWBcwlnR2jvaP3RgiCYnj+WlPzh8jBGLNghfWlbBMga0Jo/MFQzsXelBBJ1nqaaY9VDPlbm53lHaz+gjia3MeUnz8DNIUbIOxtUktqcNEhsOoOTmH/PtsIteCtFdYqU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Jk5E7fPq; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Jk5E7fPq"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A6A1EC4CEED
	for <ddprobe@lists.linux.dev>; Wed,  9 Jul 2025 01:59:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1752026393;
	bh=qb19Ez+ptHe37h9dBIVVS1LYIZ5nRX2UzEYz322weJI=;
	h=To:Subject:From:Date:From;
	b=Jk5E7fPqoFwILJ6ud5KYMbfuOqwiX3+d56OZFJJpNSCAl7vAV9HyEQWxM5wZ20OL3
	 opM/0/631julApUkqfpCb0feFIT6T5+Ey6eYr30C6tHwCMFlbHp5Nn7G3ZlevkRsM5
	 SsFMoyuRP92qWRjPIkodrAkKAC9yQqRmjFebuNZngwSz38IxVIAebDRk2fmLlTcZJ3
	 r0pPGhlxaeENIivP82I1Hjon5iYGij4LCoS7MKFej6EMDOGymx5HcoH+r23vp1qVC4
	 OGa9TJgIS7HN73ZcyMAlnmWujndaXs1/Yx8H6/2bclWAgdnHlBrdHQEPR2pd2NlvsN
	 FfYM5kQwqcncQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 94050C83F09
	for <ddprobe@lists.linux.dev>; Wed,  9 Jul 2025 01:59:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175202639358.17389.9394943434702006965.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 2235baacbc6a31c158d0a186feda0f2894f48f275e06e63bdb7bbc3650448c32
Date: Wed, 09 Jul 2025 01:59:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1752026393
