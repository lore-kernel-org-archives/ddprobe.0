Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3A3A41CEAA3
	for <ddprobe@lists.linux.dev>; Thu, 27 Nov 2025 09:22:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1764235374; cv=none; b=EFxPYsaNljl/Sju9OF1zFFJJlamCMvNeHz39eldSC3Xv1kHnf0/ITPJrfcNI06DxxO+nPBZ81WjA0r70yn0LwIzBWQyPXlE1gjAnN7lmh9PdYRBEmwEZOWBpU2+cgY9/+2pm5ZC3YAgSuuDGeqjHF2FH3PdJCXvCFNZqBbdcMto=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1764235374; c=relaxed/simple;
	bh=cJHC+XVkw65L+/6hg/S37GM+saMSaF1cPe1Jft9GQww=;
	h=To:Subject:From:Message-Id:Date; b=HBNH47VAvrmyGC4WUJQPm8Q0j9AuKY6H14drxKLDnCaeHihMo3s+CFyr9aB9f3gsDZiaZ1LdnZnYGxcMMwVyMaakSpcQt0G8By/MNtpT3uBDV2ccQ0VuuKA+Mn/EN8BzOgieDOSNbTBY8VA8u4k1pt65B3UeLDvsLDfoNkoENo8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Lb83LhXy; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Lb83LhXy"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C01ABC4CEF8
	for <ddprobe@lists.linux.dev>; Thu, 27 Nov 2025 09:22:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1764235373;
	bh=cJHC+XVkw65L+/6hg/S37GM+saMSaF1cPe1Jft9GQww=;
	h=To:Subject:From:Date:From;
	b=Lb83LhXy5XY6MRBGKHfupPPytRhDMGhVj8angc421TMy3UU5V0TNS61whYzHHVSNs
	 XC7G2JPJN4jdpbxGnA+djdlFgG3evP0RwuWJAbg5dqwyEC3WcCVJt99vfa1PihqC4/
	 SAZ6ygaYFvZtUb5jP2OZ0/dxhS8elhNe/q892aNw+sKAgyYy8s+B/uRxJkQTAfGkzZ
	 WLbED1fBPSSydaNnvpHInXZYiJtXKH98HLsWnGsELRWOYkN5xZA8d59+Zo9Mm1SX8c
	 6jmN2M6cQCZHXM++fcjKjmBsl/soV4N9nCe2pfK2CU4zKsy4AkmWnaFEfvyoRwOYrn
	 3uzrUi7bhsZxg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A199CCFD2F6
	for <ddprobe@lists.linux.dev>; Thu, 27 Nov 2025 09:22:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176423537364.30455.606123814964634387.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 26026de8dfa996b522e6c53f7dec7ac4983dd1f285227a7d4a3c62d70b581df7
Date: Thu, 27 Nov 2025 09:22:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1764235373
