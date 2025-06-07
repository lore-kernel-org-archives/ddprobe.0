Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1B90226AEC
	for <ddprobe@lists.linux.dev>; Sat,  7 Jun 2025 13:49:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1749304194; cv=none; b=kr0Vgm+1PZ23DIjtd6Nptq3LictWXnteWXYUSlaT/Nc73LwynnyHAUKGlLT3utzNSpksXM93sERVbIRvG1rRN84I6RzmyS0hTcD6O8uBB6gt53x37z442JxU9OfuALAjY58ErooGQ+pzLVft7ZdrbC6I9brRwm+IrLKUpxWzGLc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1749304194; c=relaxed/simple;
	bh=d1mdZEljKtkqEmIu354oaXlmZq062mRw0LzahLBZVsM=;
	h=To:Subject:From:Message-Id:Date; b=MApts1jRpBadgoa6ZPnis9N5MD1Ctkou8il3uS7a7zg5+msnBZKKKMCK/xPO2idFPkEmMHCJDGv4IMQgBXgcfLadbIBLs6qlM1Y+hM7OdX3ePizPczsHBwuA7geYP/KA+1+daULFkXmAbkE20tsa0iPbAYv1DZ4HEH1D56WjWIE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=U0o4l3VU; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="U0o4l3VU"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A6782C4CEE4
	for <ddprobe@lists.linux.dev>; Sat,  7 Jun 2025 13:49:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1749304193;
	bh=d1mdZEljKtkqEmIu354oaXlmZq062mRw0LzahLBZVsM=;
	h=To:Subject:From:Date:From;
	b=U0o4l3VUunIDMOh29yyecZOsUuW0gXVtQiP+vl11SDNCou67CVWWnpudryvqgGNKT
	 o+RWOxDcQcm4BmntDFv3/WebspMivZMopE5tCFswMasyuC9UtcCNUfxSQNR4SRS4iu
	 JK8zjvTRGdBh2nOjqWy/zzquLlqtsiJU5mSytBpGoryM8h/meRH1Xxlj0YtbBqwr8T
	 eyUbI/FtpYYNPCiubZH3T99VC0skmWGDriprTTzX6Q4s/+uyFXhwN1ifAYZQOLDXjt
	 ccTq1Uc+6EMs/JN3Yy21UOrGTl0YmoHW80wDidTE8f4YV5qtyWOhfYN6ZAs2ZftCmW
	 XKUAgy88YS7tQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9228BC5B543
	for <ddprobe@lists.linux.dev>; Sat,  7 Jun 2025 13:49:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174930419357.28300.4291952919544019913.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 678f817eef9a7e5b08b900f52d2b5eb8547e3067806bb5d57b886708b9cf564a
Date: Sat, 07 Jun 2025 13:49:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1749304193
