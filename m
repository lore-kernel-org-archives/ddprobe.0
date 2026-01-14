Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4ED341DEFE9
	for <ddprobe@lists.linux.dev>; Wed, 14 Jan 2026 23:03:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1768431834; cv=none; b=NjGmaj0vPSfShUInshEtdGFQNR1pubvZ9WLOiwDm5GmkqHSwuFVPG+70UtLCtL7AAOStCfrhH6cf80IMiTyXQ88jeydZonn1AAsie4BpGcmKUgGowyNEzZ5Lom4e6f88CVjUB2696oPmlGh4G76Ofi5YWxOU++9xitPdItLmD+Y=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1768431834; c=relaxed/simple;
	bh=z4noKbtciP81kWrfCGadP3jDes+6v3Fug1/OE+LhUUA=;
	h=To:Subject:From:Message-Id:Date; b=T+LEqmALI7/FY8Yy0rQZvLuELWVYOELOr2IpRN/CcHqgCERO6pyG2yAEXIKVLyMfKAOMLwR+1zIu9zdwnA9gOcR0rH4hJrbozWqAscCJF01nZGgt65GOOvE2yAZkuEEyDCW8yP6etjq60nSIBpR/6tDhevysxmW5JRmYJ5tumKI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=H39yCXdH; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="H39yCXdH"
Received: by smtp.kernel.org (Postfix) with ESMTPS id ADED1C4CEF7
	for <ddprobe@lists.linux.dev>; Wed, 14 Jan 2026 23:03:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1768431833;
	bh=z4noKbtciP81kWrfCGadP3jDes+6v3Fug1/OE+LhUUA=;
	h=To:Subject:From:Date:From;
	b=H39yCXdHpSgxYGb8bFZKg7coUgIpd2Ms/jVGuuMpBnJtsj2U2fGligfLhKrXliHQL
	 CNwG8JTkmxMHEt7HUCZ+FUX1EavvnNf86xjPORAZsk7Vg+PsusY8F4d9R9iGvZwVx9
	 VoB7Fb210cEQ04XoZbRBwrjGi2hL4gKjFQqS4kR/QCctK0THz+5AXPy780glaBH2Gx
	 8enwkxFj5TRGCvRtMBvk/ULnzSK6E9OGEaK6cglkUPSKpgPvWWVavn9tK1otR9VD3c
	 hzJe9+oyAE/mkrHbKxxuM8QSX31U00gyLqDTvs7dF2uoh2qsvdPzV32PerkMFwUEoo
	 SI9GpD3aThSUA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9BFBCD3CC84
	for <ddprobe@lists.linux.dev>; Wed, 14 Jan 2026 23:03:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176843183361.20164.16048563825700514456.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 0f292945eb1f15c67cee6652ec8d2219d35b3e8dee8eca145302f246ee81bea2
Date: Wed, 14 Jan 2026 23:03:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1768431833
