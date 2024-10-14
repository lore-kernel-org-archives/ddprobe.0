Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2DD483E47B
	for <ddprobe@lists.linux.dev>; Mon, 14 Oct 2024 06:15:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1728886554; cv=none; b=dU+2Dv1tJS/nMx9qMGWOm5YxzmSWTGIQzqqYUNqphuuwRABpsnUs2vIR1iT/E9i+qpL4BzGyOcY35QKmGfr9QamnYeU2WN62IRpTrnc53CxILHVEjgO9qgdCutEKXDhfkepsH7smxaCQ/B6mUt33iaQyGePdHej4XGpzVB/v+v8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1728886554; c=relaxed/simple;
	bh=Jb6vQqhMSPZy0zvJJgRgjuOgVT7/Id6+9EgW16mXLlo=;
	h=To:Subject:From:Message-Id:Date; b=RTEBFOoYW7evvRH5gPFV9w6SZwtAH935Q4p0ki7TwqqF6xeZHjvVE6kAUfmxDq+ThYetjPVRcIB7KDFt05/qP3PCU5e6pq3aZZFuoa7y7flwvMvUTmb8scNLbhUJmGFE2Gn6LNCr3hvN6gKAEApUV6jUY4nNNc6fiWzj5HE3SEQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=jGugbvZZ; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="jGugbvZZ"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A69D3C4CECE
	for <ddprobe@lists.linux.dev>; Mon, 14 Oct 2024 06:15:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1728886553;
	bh=Jb6vQqhMSPZy0zvJJgRgjuOgVT7/Id6+9EgW16mXLlo=;
	h=To:Subject:From:Date:From;
	b=jGugbvZZAaTKlOsdx1X7WM7dRsgnhXSBminnN2s1F373lKybl7ly4Jw1ujVxO3cAR
	 YKhAxui7x+zoG01Nu7Krxp+FIEd460PpFHOOTLe0vH66z1nBLWeFcXX5CLKRPbqpWC
	 R3KUhy/WVDerpZp+Q5kM7fdSpwZ7hzEU8+wugGEH/H9mMtsP0LVnIiXRxKnf3j2cb1
	 Q/e2B4RHtFluAUoKDOsKeWgyVqShS03RkxS/7fFhGu8XovrXoyMcyRy4eSsLQG6wxk
	 mzylsGz2DlOeQNJJ90upk1ALb6aS1Eq1N/dmJ3/78joPvL7SiUO15C8X9Zg47n22Kx
	 GXv+M9d+CNHfg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9070ECF259D
	for <ddprobe@lists.linux.dev>; Mon, 14 Oct 2024 06:15:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172888655358.30076.13084443951522318449.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 55511b275be11498817eec62267d2d9c7fc360651d3ff0eed584e67a837c6952
Date: Mon, 14 Oct 2024 06:15:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1728886553
