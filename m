Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4213B225403
	for <ddprobe@lists.linux.dev>; Sat,  4 Jul 2026 02:58:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1783133914; cv=none; b=glj57Y7J/10th6edCCXweWISx+m53XC2Ab465GJiiNA1PsX/xlh6FFqo6vDVrORoDfwro41CzXP+Okppg3ist0myREXXLCnGkLjGSzN1ore6xyurlh+FdZ9YGtlD31NdMAJXTwiicWmbPE9j8zoC+yEw8dog+br/JuqgkDtSgRk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1783133914; c=relaxed/simple;
	bh=UyCL4Jpu6ziwBO6RgKSTrIEcNNHAamaSDi+SD2Gxua4=;
	h=To:Subject:From:Message-Id:Date; b=aaYGRr7kVb4DlK3cihMb30/HDoDeWLLCO+ImUd/OTZwTwNZFB76MIxpMk3CVQBV7aaDaBL8n5vD1NguqTzMEEkpzgD4KqUN8yb5NW2HGjPrvBCksJtzRVd75L7gMc0+QAnY8CvU9/vJdwUjGFx+Vi2pFCxWSXyvcq5oGAJoxYp0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=exxvMAjd; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="exxvMAjd"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CEE79C2BCB9
	for <ddprobe@lists.linux.dev>; Sat,  4 Jul 2026 02:58:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1783133913;
	bh=UyCL4Jpu6ziwBO6RgKSTrIEcNNHAamaSDi+SD2Gxua4=;
	h=To:Subject:From:Date:From;
	b=exxvMAjdv5LVfqggfBISJm/3S1Y10xAtKFuwNrLkulsYllrifewU47QqLS6Q1bRCZ
	 ZRl6qwraQ3OBnfW+dFol/2DP8tm/gTyx85gDppm+E9MaP3RRats9ARvqMZp1hXvJsB
	 afRbTT11iN9DLLy9/u9uJdKuoRNwLcwKY7IEpIuWOGzvBW9qoHgJogyTzUj1nHRf5M
	 UwwGeBIt3UF+3sVpLJtUY2T7Rw1oWFe6ovo8s/vvZ+12gBf3menOrjCR1p6g0M3zU/
	 FLaMMIF4Y3UFYThgarVkZGr6ly2CrmVRFm76ClYAXjoqs66KNYb4UqxlKElTyt+ml/
	 nsnE+Mk1OIsfw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AC08AC43458
	for <ddprobe@lists.linux.dev>; Sat,  4 Jul 2026 02:58:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178313391368.1873.597819744586615880.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 613fe814bd5f51cf1b97e71442a866027303db06c4ab50c23c1250bdb22893db
Date: Sat, 04 Jul 2026 02:58:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1783133913
