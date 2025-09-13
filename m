Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1D4501D5146
	for <ddprobe@lists.linux.dev>; Sat, 13 Sep 2025 18:29:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1757788194; cv=none; b=IhFH5tT7hsDvj/VcdUKSObi3z7Unwlh8B8ecjBbBbGVTTO0GAuu8jjaBOA9g/t/8i7GSCKnmmXUg6LZIAF4GimIc2srbNuDWviu4LD3d3xiNFZyOLMGIafc2XfQU4rOiHYTDmucn4Kmj1whI7QH9R7H0XpdZCl39Q+/cPH8G6T0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1757788194; c=relaxed/simple;
	bh=HRr5g1Fj8P8q8HcqNO/SaoWllJoP6XHZ7ySHOuqVHPM=;
	h=To:Subject:From:Message-Id:Date; b=hgWLD2LPb+61/ATOEX8lzr/1kuLGUYH3PxBchtSs2ln9ZR5TB0RCBSsCl6GyfdmTqXe7WtvZly24rUnPak7TZIqHh6Fn2ciQbAB7j4CgMClzZAJlJJ2OOuzHq6ac5OmS0KXRbVskCVRrpKshgJZ6kXd7L03HqbzMpjr1MM4rpyQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=JDLg6svH; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="JDLg6svH"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A818EC4CEEB
	for <ddprobe@lists.linux.dev>; Sat, 13 Sep 2025 18:29:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1757788193;
	bh=HRr5g1Fj8P8q8HcqNO/SaoWllJoP6XHZ7ySHOuqVHPM=;
	h=To:Subject:From:Date:From;
	b=JDLg6svH93bqSwm1l6Hnd2oMHD4SmDsq4GnpRB+ofE+fX44L3G0vD/Url5roVaeVX
	 ufqZvzNz+JFDj0FUomJ8uHBJPOA7iO3/X+8sk1kr8Wfxtf4AXhy9VdHh+lUS4/k/Nz
	 7NfprUiIiyBhRgyip1naQ9N/pb/5WK1876TVelTUr7m4NYnDYZAhotxQ6xnuG5FhFz
	 87yGkgD7vlNZdiPTAhpkgLoyOeLBIL/rnkREcbS2iBqB8oILOpVPvyToS5l16RbW2/
	 G4dS3IAvUIjPiQK4OuQWadDH4e1T/diozrg53wPhm8qiCNF/nL5UTbk4XcQHscYoMG
	 aml/TiXih3W9w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 951EDCAC58E
	for <ddprobe@lists.linux.dev>; Sat, 13 Sep 2025 18:29:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175778819357.14219.2511466835913140030.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: ab200fe28d217b4f42e9f3c96126b5e527cc6729e33d920850c01cab711ef090
Date: Sat, 13 Sep 2025 18:29:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1757788193
