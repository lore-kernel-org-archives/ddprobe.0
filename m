Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 25CF814A0B5
	for <ddprobe@lists.linux.dev>; Fri, 22 Aug 2025 01:29:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1755826194; cv=none; b=m1D7q/VAC4avesfrBxNARhNcrGy0RTnUJ4r3/zn/EUjJxQW/dzTUVEERtk1wNy4wOIHFjJH6V+ZCjsw0sJEWiFH//6ZOavaya6gq3THH4a1f3g7wQQ7NUmq8fUgzKorODlI9GTgiXMLjI0/bA/M1DZZouISPl7GOZ8LYh4zDygo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1755826194; c=relaxed/simple;
	bh=GQ6pMIk4YvOuFi49BYrLdCn+ZaUZcVnnhK9AR84ODTc=;
	h=To:Subject:From:Message-Id:Date; b=CgzSMSdIfuQD5SnZ8gW0KNHTmmwxrMnxiFu8xKQqJJOYHG8mh/1OgcSf9moYL9LrkV5bOQG0uZb/ezpTZMCbnihcsBpRuydoXkvU6L4TwZJ8y3nxXRBUeZAbqcZXwqSpx9Azx31fZXM7Wxi+K0tpSPBKaHQekoghVM1MFpeVBDs=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=kjRqVx6Y; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="kjRqVx6Y"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A1181C4CEEB
	for <ddprobe@lists.linux.dev>; Fri, 22 Aug 2025 01:29:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1755826193;
	bh=GQ6pMIk4YvOuFi49BYrLdCn+ZaUZcVnnhK9AR84ODTc=;
	h=To:Subject:From:Date:From;
	b=kjRqVx6YBPVlZ3zSAUffEKtWI4A8Al6V7F0UnsyQ/DBob4QcBHCSykaLJvs4BD72+
	 F5ts5mtjkBZotmKgByNioIhV1xlBuEjUgKXAQJNZBdnwxjpDKzAbqaAHSZHwXkTu7m
	 bnzD+VfAB++FWhH2C0RFiGxzmBg0y/+aAVu3wivr8azxfWimuGamCT3F54TkTcNRvr
	 RJWEv4Fqm0SLjC4vhFfbfis1X8YUZjJZnBWpPVZgKJMRqwAKCAeetoHEB3kCXMnogB
	 q2SwvyhYx41w4vE4lyA+PwuyqdDiglT2j+xjPL+uhFgquX37O2rf+vurXKC4ehdQXD
	 OFoFDcSc57oiw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8E8F3CA0EEB
	for <ddprobe@lists.linux.dev>; Fri, 22 Aug 2025 01:29:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175582619357.4630.1270900409331418993.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: b1f649bc0ed4764ea76a875993944a4dd010748afd0d38f4b845d7be49d8c6fb
Date: Fri, 22 Aug 2025 01:29:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1755826193
