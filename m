Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6BE2939E9DE
	for <ddprobe@lists.linux.dev>; Fri, 31 Jul 2026 07:20:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1785482434; cv=none; b=QE8rmXB8e6uaY+pHWQ+kb61P+4LYpOf/JVDiNDsmAevgA/DnmRVPA0yPR/X/h3pkN5mfBG4vyHaKmNoBZPccVpGZNjiYlAj9S9qo0dZKL0IDqRsOF6VrCJsBbAbvXKDAPBO+mWWbdEQrWP6U5s5UZE/SEASM1UK0hmy5drUBbsU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1785482434; c=relaxed/simple;
	bh=lOB7yUwhny5AVfpuGwUcdHcjzFM/+WxMhB2b/NPl3zI=;
	h=To:Subject:From:Message-Id:Date; b=Q3Y/XOiYQMVEuckT6+tRcaBI8kg+S/mR86U2Q/3dOEMm8nXIuTSI3bgj1DFckxIeaDWDMt16V8r7JR32kXx9b1uc+Y7s9Jj15Di+Wvggikn3TktIs+dpgzWjR65AvGs0tL8UauI4onxsdL2sd494fc3oaeO7I3pPcNJcfS2yg7c=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=UKYnLXYV; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="UKYnLXYV"
Received: by smtp.kernel.org (Postfix) with ESMTPS id DA17FC2BCF4
	for <ddprobe@lists.linux.dev>; Fri, 31 Jul 2026 07:20:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1785482433;
	bh=lOB7yUwhny5AVfpuGwUcdHcjzFM/+WxMhB2b/NPl3zI=;
	h=To:Subject:From:Date:From;
	b=UKYnLXYVdn4JTjbKGKerC13V+8qZ3Tkcz6BeKnw7CE5HYCHX24SbX31A7nampmGOQ
	 ipaQngHHK4VGW3g5jvtbr+3yluRPOTXr2z+8u35+dJGmb488rjS3IqR3Yeyg/XYGlh
	 Ii3KhPM2WJoT31FJUrVpHOGyIYmlIxmx1BRIJhhm6nfNH3eJUrELBZrKb/8ErTQ36n
	 GVFEF+lVfq78z5pLlprnHKKChMTGmXXaXZyxamMHi7+485lAlc6tRRd9u185GK0XFs
	 GNkjySfCDIRjMeCupDIW0fGACxF43uTcb1cgZczDjH5AMCOEk/IlmH7PPFUurKQTGs
	 fpc1UgXEbmong==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B611BC55167
	for <ddprobe@lists.linux.dev>; Fri, 31 Jul 2026 07:20:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178548243373.18664.17183078216309543430.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 9b841686885c11b80e60b059e50e59164e6b461b99258e5ef05b105c40549bb5
Date: Fri, 31 Jul 2026 07:20:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1785482433
