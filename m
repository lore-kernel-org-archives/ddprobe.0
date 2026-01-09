Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1A5D2500972
	for <ddprobe@lists.linux.dev>; Fri,  9 Jan 2026 04:33:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1767933234; cv=none; b=Pn0T9TYapuoeFXmr8jpgFQM3MELmwRxaGlGLkJ+iTW5rNoR5iM4TqjY8ZTM1Q0I1kJCtUXh2s9jPZF4hZ5gslMHPWdeDsuiK5AgS3d3Pt7gupbP17SJ7wB5Ba2sbZByOd9nJ2TPrH7L9CWzLg0qqlEvx5GJ6VMY+1milkLb8+JY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1767933234; c=relaxed/simple;
	bh=XXq2DefcBIEvgglKcAMXj09PripFI02nb7vgxwCTCsE=;
	h=To:Subject:From:Message-Id:Date; b=Ns/DzPru8TRNPfBqtrAhF95qOcAG5LEriYNgggf6lM3p9IcWiOtepdc9QK4OmKCbp63GzPH9vdprSen1J4q8VwVk2Jl897Rz6c56hjhjhTpfuidGiex1yds20HjA4P1SlYU/GkrNMPJprFYV+lPMUY6KTk1c6QkDyk5nrLIbJL8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=XvGDfcer; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="XvGDfcer"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A2018C4CEF1
	for <ddprobe@lists.linux.dev>; Fri,  9 Jan 2026 04:33:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1767933233;
	bh=XXq2DefcBIEvgglKcAMXj09PripFI02nb7vgxwCTCsE=;
	h=To:Subject:From:Date:From;
	b=XvGDfcer2uxAo1YPcUjclX/NIB8uJ6o5wkeePzLOIqZAaxfcH0sG54nDlaFhSYNjc
	 WzH2/ioDq1K4ssmek76P9gh9jcHvvrZX2k1tDPeHbvFj4jiXWOOpMGVnCnikErVX/9
	 BJ2MFniIOqkbvZJurL1+HMaxrzbHFEy3+k3f1vgFIaTA0MjrZrk/fxGGUESshR22uk
	 6GP9Jp6DZ5b0MMrE/BeTowana2PhHERT8QuOiQZtSiNynMrXgfU3ifripsutXLjSVV
	 Anews5YevBa04+MJG2TePPLVy7lc6pucKaanOFeMdRrlDqFVxe4/84ezF3iTy6H/H0
	 yqJ6fDLvg/S9w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8FA16D232C5
	for <ddprobe@lists.linux.dev>; Fri,  9 Jan 2026 04:33:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176793323358.4148.4809992277742213840.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 7726c512d2c0b4b123e5e0f6a5280738f4b19b3c4dd7d1d616076900572eb923
Date: Fri, 09 Jan 2026 04:33:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1767933233
