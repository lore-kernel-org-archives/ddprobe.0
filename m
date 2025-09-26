Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 283E417996
	for <ddprobe@lists.linux.dev>; Fri, 26 Sep 2025 02:49:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1758854994; cv=none; b=jxqEwMGK2WEtn8if5LIAvXYBc6nr/8tHLVV+6VkLOo1GnKwDl7rqNtYU73fko3TcIII0ca1CESwsARpJimqdN9P1fWwv+qDtC8eTH5gxTm8uT5c1VOaLkItjTeuddo+ki3TZfHC90mpx5Sf2RK5ussTy87UYrQ1cYMAnVxEZbNI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1758854994; c=relaxed/simple;
	bh=LInpTZPrtl1f/fLGXXJVzBGoxqH1cJjSonKnSDHkXao=;
	h=To:Subject:From:Message-Id:Date; b=SbJxd7Y9A4Tv/5pZGazODzYN05cM4Bmn+6KytLA+WD9M0yYLeu3DqmdjSUGa9N1Nf0wN0zDmIFWE2lhn+q/ImPnn54NdVjh039tHeCMP4gexQwzKNjBZvfHcTDNE91k9+3Yyjwql7agJpvpMGWO31CZ19VEpFLM3bKqYneLZORo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=sHH292iy; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="sHH292iy"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A06DAC4CEF4
	for <ddprobe@lists.linux.dev>; Fri, 26 Sep 2025 02:49:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1758854993;
	bh=LInpTZPrtl1f/fLGXXJVzBGoxqH1cJjSonKnSDHkXao=;
	h=To:Subject:From:Date:From;
	b=sHH292iyYOg2cqTuJUmMYwwdSaF7aHRcreXOnc1Jr6OMwh83YvLYgiZYRtfHt8KvX
	 KPDrAzapI0XhiW53rRctXW+fhVlIdZ4TI/+pMaag3YPAmOuPmThXn42LJixd5ntABg
	 IWo5J6sY7UutcmQnkDdt+PTe/6DGrZgGmwqYX0Az9VsjH8UBFPSSTTPMiJxmEoINBM
	 nXrfNZLsa75U7ka5eBqjoOfJntgoVI0Ly5Oj5e+vJstl92+Bcsc5Mzqa+F9PAYgL/t
	 JcCu+vOgYWzm8J8choBhKfKVW1sNNrWmnSLuVWzNihoy0vI1EdxoYJBi1/IR9XZhN1
	 JWxPsEnxunSWg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9267DCAC5BB
	for <ddprobe@lists.linux.dev>; Fri, 26 Sep 2025 02:49:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175885499358.15951.6169237452404543890.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: c2a6832a54f0cca09eca6dfbaf1800dd35ce51ea64cf0364e89075ed069a7b19
Date: Fri, 26 Sep 2025 02:49:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1758854993
