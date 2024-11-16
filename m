Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 39911161
	for <ddprobe@lists.linux.dev>; Sat, 16 Nov 2024 13:25:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1731763554; cv=none; b=Z9ENySkUC0/3UvJSUFF3uoEHXE/+ZJtcgiecgZE9rIGEkGqftolaGTa+URJjDHHm5ABnRjLhUmj3BLOVr7pEacz+xKMFTvykph8UKPRa15RH3GHi0yYUHXJ1qk/vNPGDScnb1acCxiRlrlMq7+diidqtlULwr4HA0RRTRN/WaBk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1731763554; c=relaxed/simple;
	bh=adeNC1IgjWQ8QKjD49anEP5AG7F9i4PaBe+NnvuDLHU=;
	h=To:Subject:From:Message-Id:Date; b=Bw0OAA6NQUNTCCUQLk78OYHm4UIDrZjBt7Tk0w3Uon8LHZHKUB8ePz5iL7bh//ZMS9BPIeX2lCzOlfWveiBag2bAiaxXonA61i7MELKscN0GM0qQK47AfQPGvmNe+8/wRN6cuGKpqfvNXcu6Ak93yF9JZjPbkkLjJtmIm3RQdVQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=D4mZgAiN; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="D4mZgAiN"
Received: by smtp.kernel.org (Postfix) with ESMTPS id ADFDCC4CEC3
	for <ddprobe@lists.linux.dev>; Sat, 16 Nov 2024 13:25:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1731763553;
	bh=adeNC1IgjWQ8QKjD49anEP5AG7F9i4PaBe+NnvuDLHU=;
	h=To:Subject:From:Date:From;
	b=D4mZgAiNrTPPHUHe2Kp/HanjCDXVSWjeOC5bPsDwnkNcPRNMJ9lYN8Uw/lsvksf6C
	 VHj8dP+CntSMPKq9dinvSbvMAX7QhlIyrSO+wz21ZFr0NeE3vCD6JhOzF0dpAJPJV9
	 zdyhQon3ECqop3lDNSK6e1joixTXDT4xSpE36J2datHILqIaW5CMdW/Aod2fCA2CaE
	 2CY+uZMOmYbpABfG8wD2LW3fPRauYTSVBrURdBeOJkjTbUloZVXkCFW+7wK8OJ2Feb
	 8iEFwNM64CIa1swUJ3FVh3xgmwXiAEWQGm21M96lB0ID+hc0xuiElffqnyd/aq3dIK
	 fuRtBtqtYnHGg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 93E42D68BC9
	for <ddprobe@lists.linux.dev>; Sat, 16 Nov 2024 13:25:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173176355359.2536.3746404788110570938.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 94b627389c64ff9f483a47094f34f7b861661a801ac0121f2406443b6a6fbdd3
Date: Sat, 16 Nov 2024 13:25:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1731763553
