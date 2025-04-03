Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 451FC198E75
	for <ddprobe@lists.linux.dev>; Thu,  3 Apr 2025 06:09:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1743660594; cv=none; b=CjbLvth6b3VfS6E7pqw9mc7OrUuxb4NG5aWrIxeEVwqgHkK88sNicQyHNtVdd/iaK3ZTt2fgGgSp+3SPIK8xDmwfcyhyQUVvvjTnRwvQ/roqu6VM9voVwYW/wFp+i+iJ/DO9AFEwWABmcMATzPQcSDNIHKRJqlJY+mnOISKfLhU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1743660594; c=relaxed/simple;
	bh=Qz93fYcfF/4PN1kOX41L70liGPqdLzWGuocmFx3b0DQ=;
	h=To:Subject:From:Message-Id:Date; b=daVuXFje8pJVc7Cn5R76z0QlYvnwhiSLcE+yhyTwKiSO+PLXpPEZZu9pNxcn7vpZPJ2gJX49kXRDSygYh/5KmUYTcOUkUDskt4+5jdllYq49DTYN0TnbUWq6bz1Lj4URx80I6ZNprvPsJmmhN7eJl+H3Y6/69zXJ0r/YmGPo7FY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=PdG9K6O5; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="PdG9K6O5"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AFBFEC4CEE3
	for <ddprobe@lists.linux.dev>; Thu,  3 Apr 2025 06:09:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1743660593;
	bh=Qz93fYcfF/4PN1kOX41L70liGPqdLzWGuocmFx3b0DQ=;
	h=To:Subject:From:Date:From;
	b=PdG9K6O5WDJbxFRcz6Rd/RMlbdoAjZy/QrlGhbvG9dBc38+TcH4SPOKlFMzyuSzMN
	 0KvcsRm3VoM1tHq49JtVkKl5yNpzDqMwDGpCti94HD8pzicGB4xx0UXWcLNM8Z3sDE
	 VYLKACVjz5O1Ion/tr8hUKoSIIdhuk0mTNYQxapLSdZSZb+bsPRtsbqa9j/A0gN+wu
	 SzZf1bvxEBQ2rVMfyEK1pu2ZjR9nq1VWB1HnZzbOy8sEpbWrywlCLL1g8mFipa5T40
	 yyjQC2FCB7JQrePhCKRw2phPhK4tK4I0M3HO8/S0Ds1N1hqZ4m2mZye6SNz6Tr8JKU
	 5fb8KLCkc4HDw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9FB94C3600C
	for <ddprobe@lists.linux.dev>; Thu,  3 Apr 2025 06:09:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174366059361.7276.15852664487998272086.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: b1d462bb20bab8941a9b13b1995ad156f3dab65705d76be0033cf051ebb96f3d
Date: Thu, 03 Apr 2025 06:09:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1743660593
