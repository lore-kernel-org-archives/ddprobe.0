Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2DCB2224256
	for <ddprobe@lists.linux.dev>; Tue,  5 Aug 2025 07:29:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1754378994; cv=none; b=XePJ10itzrRE/9m4lV42MBBhShFVlNZio0eDslea/SmVD5fgwO+Irj7HZ8h6lUggzxQIHlSgT/YjNWEMyXKbo1pd70yCjN11dFLtn78y6IHaddckJ7kjh1/9PRwqpcsE+AOzgN2HsE853s/ZVyn8zB1tccZijEIHcU/yhGIckhc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1754378994; c=relaxed/simple;
	bh=EiP5bgFSKwRspsp5s+iWdUUv+sag8U/eODJMYEBI6eo=;
	h=To:Subject:From:Message-Id:Date; b=J/05yA8CdwdtK5per0jIR1QfZVaIojzcYwZbbusiZLTR94yNIKytsc6JDNPADMrEm4G265Q0V79oLsu7HHS6uq4J55FZb9VPMXuMhF6Wc9ViiHHuOXEVO+4hQP1GDRJCg2ICDCKzyxAulO4dSzzg6mqSsS4bVMZnAFkGKIonVKY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=GVmGrChs; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="GVmGrChs"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B0458C4CEF4
	for <ddprobe@lists.linux.dev>; Tue,  5 Aug 2025 07:29:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1754378993;
	bh=EiP5bgFSKwRspsp5s+iWdUUv+sag8U/eODJMYEBI6eo=;
	h=To:Subject:From:Date:From;
	b=GVmGrChsi4HBgpVYmLN09N//RLMHX/44JLO7phZWguMNvUxPIMdKg91+6WBboNiOV
	 kvgDFvGtKC6ovet+8Sb5efwNacCRyTMBxgF2MnJ9+B2oVQCf+wePyl1dWvwEK8U7Tf
	 JpsEJBLUzAAYvTHDn0EWo3vnS0v0cJO9CUGlDtOuRKwABWEI28UjNdi7KMEPJomliI
	 QlctCU/bmBdgTRB2qPKkCc8tAW1MO6gMlJc7S1QV7L/TgBwm6m542Kcvzkz4S+IjOE
	 ZK821/YLj042GpUbqRmHs/zPFHEJ7RdDprEpJcmfo3FBvL20k6SPt+MEbWIP6z4D89
	 hqQo20ahcSb8A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 92CBCC87FD1
	for <ddprobe@lists.linux.dev>; Tue,  5 Aug 2025 07:29:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175437899358.8612.14815668042742877344.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: eff4900a00ac1d3af69c31989c9c4359d0f5a035b57e966528a55806d7d03398
Date: Tue, 05 Aug 2025 07:29:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1754378993
