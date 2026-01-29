Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1F852125A9
	for <ddprobe@lists.linux.dev>; Thu, 29 Jan 2026 06:03:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1769666634; cv=none; b=F424qEqmAgkKD4sCgpI1c5rtDHa8vQyE1bgAlp5me6KbgKYF/GhIul06c1GSPPRE3IIOR7nBNWhFHO0j/S/HJf39HVnLUWNfplGYoXt3/TXyyioekafFwh3BfFa2lL/VKnx4rA33uCF7wOzak/5kkNqRxzfSxHpKv/OBe9XTo8M=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1769666634; c=relaxed/simple;
	bh=KOQrVkAKd20IRmc9qycKlAH9zCnuFLUBvrax2EedX5g=;
	h=To:Subject:From:Message-Id:Date; b=IGgjwBx1Lgdh7I+pBPDZCmqT/tmrFdCv8IKdm/4w4Bbk2fe+1SP8h9IpGMSgo0Pjnyv/Yo9+CNPZWnojSJGNgpXHDlj7n0JS/AJu+5X3sRkbp6X4HA+78p2POosymX+kGFzARjCPQfW6MxD+etNlGu0Kseq++KijEusPSZcAqGE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=uGCm0Roh; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="uGCm0Roh"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B583DC19421
	for <ddprobe@lists.linux.dev>; Thu, 29 Jan 2026 06:03:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1769666633;
	bh=KOQrVkAKd20IRmc9qycKlAH9zCnuFLUBvrax2EedX5g=;
	h=To:Subject:From:Date:From;
	b=uGCm0Rohqb6vLUMcg5UlKelm/dy2/Y6PwI/KUHz9bpnzgiZZpxe3bEbXTuqLAc60E
	 5TLTLhr1302uMzE9yehOT8474EeL6vP52So/lcqlYu8yEmTKYmVafVETVgqoRBjFaU
	 pqNrvPBNoDdGZOxcWDXyTrgR42gmBA1IU8U6XU3FmF+KHwR4oKv7PTL8NvsIomH7t7
	 KP12bz7ai+h+Vv8w7NlJ5Z+gp4M3yF9ghjNkJP1zo2yqKMENz/0cTJDMPf2QH6OfZc
	 pI8V6jThGnP2tDvNp0ZeImQIizzeQCmo1UTMZjpLIgjP2MZ1aHD8UEDnxaDGkJa4nl
	 yc/Y/RhDcpyuw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A23F1D3F09D
	for <ddprobe@lists.linux.dev>; Thu, 29 Jan 2026 06:03:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176966663362.18739.4886975903409973681.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: fa95af41eca40064b9593a4ccd947acb0b83ccb7e3234a9dfa8d202946c9a6d6
Date: Thu, 29 Jan 2026 06:03:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1769666633
