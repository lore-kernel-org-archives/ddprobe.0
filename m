Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 448D833DB
	for <ddprobe@lists.linux.dev>; Mon,  6 Jan 2025 00:35:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1736123754; cv=none; b=eF56ARj276RdNXB9OKxHAvC3jS8CeuiNMtKRO17UNspfbHKUZuYierxU2c4TKkXsGvtbsb15uyDJnajwxd8ORwx8mQg03/Ij4njMPfKM42iQ5v+FTaDUdCpYotY9xzMums7tOT3hOvShTvTyOxLK0/rU+Uhbm1d8Z512at6Nk4M=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1736123754; c=relaxed/simple;
	bh=Lk8cRFUPMqfzJQyTp5AfXYRh78I/4femie/WQp07f5Y=;
	h=To:Subject:From:Message-Id:Date; b=cy8boFP8PkBQyZhoR9k9CosdVom+YiOeZgniSrpUkStp81NE1plM4PsuanaLJpJkQDHp84lnxVactaY0FUlfiE1N7qloLo6TYLonF8N547BWlVF0MJg7I5ckaGrcqrc6XJhUTv5xtB+R44QMjrdQ2DCic5sVx2S4L2pqTc875HM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Aaqa+HbZ; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Aaqa+HbZ"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B60C0C4CEDE
	for <ddprobe@lists.linux.dev>; Mon,  6 Jan 2025 00:35:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1736123753;
	bh=Lk8cRFUPMqfzJQyTp5AfXYRh78I/4femie/WQp07f5Y=;
	h=To:Subject:From:Date:From;
	b=Aaqa+HbZCzfSdjrdEMBLDyAAnC37uqgdlsJxJuYYSj95POJk4d7ei+D6vgRJbav/n
	 wYZGy/mRZaLTn//mXA/b5pB0PulRY+8YExWqwerzZkc+wqg7QBw47whHJWe6ttA+Qt
	 SY14D3rADwlI8EENOmZ5GUThGTInAep+mKyM65IePXV58gvZjAwYWMOR2GCwBuHjZC
	 ciQfl2EP1JmPhDOt/bttdjlis3neJ0L4t4LiJN5C4OalCQZOB5eIvpJ/Z8QuwHUlo+
	 9aefdJ+heuNvgK3/D0FTAhbB+sYorxyzpGltlN7jAT5rmiuKHPitfkj37W1Ed38I/M
	 OklkwOIcb9UWA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A149AE77197
	for <ddprobe@lists.linux.dev>; Mon,  6 Jan 2025 00:35:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173612375362.2939.146497136209036249.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 0ead8014421806e450f85fd0380ff3039c6344615c8eccdd5324197db67c8329
Date: Mon, 06 Jan 2025 00:35:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1736123753
