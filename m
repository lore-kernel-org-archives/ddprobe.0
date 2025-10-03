Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id CC1FC21254D
	for <ddprobe@lists.linux.dev>; Fri,  3 Oct 2025 06:59:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1759474793; cv=none; b=Yl/lWeABY+o4tkegyP+BxTVD8yhOI6JCJoAzox7BIHCTKl1ObvgR3wTiZTChmV0yq9QdosdYPFAdBxsD/wCuBTJBXawCYL5Av63kLf1D0MJK/03civBiYT9tdIOBW6keM0muEPRTYpeekGu+oLc3zDjbs5CHCxNruKQfEsj9ZiA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1759474793; c=relaxed/simple;
	bh=Tx0/3ZOw1cayOv7RPQuGRs04ruZZorFiVOfOyg5EQ2Y=;
	h=To:Subject:From:Message-Id:Date; b=X2shBkYDvZj7F8sC9Pm6q2jHiu/l0IdNhm+KG65OsjH+WraDnez/FGBWPJAsSiMAevZ84jTKTs8TDVQj8KrpGd3khpnMxTp0qhFNWb2MwCj8OXqbeEWXJy5ePoS1O7qnZGNRX3hLIfJUXRf6DgQqRYNIwFBqlGRjJ1BQMK9OkVA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=spqSVuHt; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="spqSVuHt"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A3C2EC4CEF5
	for <ddprobe@lists.linux.dev>; Fri,  3 Oct 2025 06:59:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1759474793;
	bh=Tx0/3ZOw1cayOv7RPQuGRs04ruZZorFiVOfOyg5EQ2Y=;
	h=To:Subject:From:Date:From;
	b=spqSVuHtZ2IvHwWPMm7sHjvOtJmhTecAq8I3NCudZWthX+jqTQolOHdvfZIpRPaBC
	 px8Jb4WWRo+Doofxw1HcJGMHLDef/UcsO1NltXXjoNaSXcJGYv0EjwCfzWwkvD5KW7
	 fnsi4kigfPr/JDVY1WSyH98PrGLs/sCK+0uKSkDp+2t0tfKYle4IUf08eu8dG/oLVs
	 ExEMhhOYaZ+PqO2ZSEKSjPi3xO7BrETKRkjGcmxxhIMCWcecTDN6Z1AOM36Tijh2Ga
	 CfM6XjnmSyUNHDccltlwhgD02Z0yne5Y3G5zhBhNQqoK6dENVOy67QlYCxfZBwcwM5
	 GYZ3DzqU5167w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 90792CAC5B0
	for <ddprobe@lists.linux.dev>; Fri,  3 Oct 2025 06:59:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175947479358.21414.14162315963581169952.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: ae42f4bb5f9787d3bd5ad27018bdf8c36faabbe8fd87722271498b2cda770a6b
Date: Fri, 03 Oct 2025 06:59:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1759474793
