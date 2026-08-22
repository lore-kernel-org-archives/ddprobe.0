Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5E7E249363C
	for <ddprobe@lists.linux.dev>; Sat, 22 Aug 2026 05:50:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1787377834; cv=none; b=XVxJawMd7x2tV1FC6ZWrLDOnzbVWHBtjxXPE56VNsDA/9mvOQfm6dZLChqBn/kxSUsCXwSr9C/O3WdWzb3hN+6YWBHgBXSlnxdhZgTscqaT/L7ZnNhfvg30gDzja5GWnvIOfCbws/l9KNH9udX/RcrrWOGGHOOeM/Al98xw5nZc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1787377834; c=relaxed/simple;
	bh=vq74cZ3fThbjjj+En7cmC0H9yRLmQLMyC8YFhvKPcLE=;
	h=To:Subject:From:Message-Id:Date; b=eo/xCoPLCTQk3xpvNI5BXxUm3dsNrq+CZh3QjFX9o8DwyiPu10KYyZi3MFZ1eabGXdbDKw+fm2aOBPLvRwYZRMi/e/7G6z/+0c4mfcDQ9H1Q8aIb4wQ5o3vdDPipoy3i8lfNmXyycWiWjZ2nPW+rguva60H7KG6sB51DtgANe1g=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=jelJLDVU; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="jelJLDVU"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D6966C2BCB8
	for <ddprobe@lists.linux.dev>; Sat, 22 Aug 2026 05:50:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1787377833;
	bh=vq74cZ3fThbjjj+En7cmC0H9yRLmQLMyC8YFhvKPcLE=;
	h=To:Subject:From:Date:From;
	b=jelJLDVU88nDDNUm9BhAxMWRblrdIuYZuxtktCiq0+rFChVnHdtxxphmQM1nK/ISr
	 mN+1aWq78jbGMfAK8bYviBK28x8N2gA8UoE/KouAbvNJjji9LvS9lHAAlee+upsimw
	 XteJvybmC8X+72rVl7hT4mcHtt5leH1VMn4oInqvy32+pM7Ig2lsPtgfkHO+/QlJuS
	 ErfyGOm9MOj7QLpQV0ea84M+joQHLZqyxUv7ETfmMX8p0IjeATb0Atfw/b9pCiOjHr
	 3ImxxwCdqiqPwNDBLX+tofjiWCB06P6q0crs9f83Z8Yavvn/EeqKtwg4RqrkMV4aqV
	 hlEotcHx1qhJw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B00E1C5B572
	for <ddprobe@lists.linux.dev>; Sat, 22 Aug 2026 05:50:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178737783369.23935.9056354432551934013.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 1f7d2f4852fdb7ae3050703510ccb5f2e03ce28418f3a0c374f7f0cf2924e766
Date: Sat, 22 Aug 2026 05:50:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1787377833
