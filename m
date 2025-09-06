Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 30162315D36
	for <ddprobe@lists.linux.dev>; Sat,  6 Sep 2025 00:59:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1757120394; cv=none; b=eMrWwR+T+il5FRv1UVUssU4MdjHM8vvd3kmRfzfTl6+YeI5JeIs26GviuAK9XQYw9MRcNsvX5r6eiHqROMuI5iTRgH/N5En5O92XQLFCBp9+26id36WXz21tszOus3FLl1ps9Q6NhlddcC6jqUY5ziliXRoJ1+eIGVBqrSY3GM8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1757120394; c=relaxed/simple;
	bh=VZJZjN4kmchyX1iVNxU+A2Uvv/4c1rAdiHsT6156HKQ=;
	h=To:Subject:From:Message-Id:Date; b=j71VdSEZWQ/btfHVYx/gkTPkcWOxxyNgRftVu121+/D8uOT/OdqlhvUTsJUsLDDldg3ZvUekFSRAWD0bZOhs33P+XiKcDLGCiwb0z8iUb73OVVCtmZt3Pf7zkqTTBJvedyiBpqTS9T1HPP+zuKKnd8iArJD2QaSR+R0+Q7OBqCM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=mAz9rRPq; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="mAz9rRPq"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9F473C4CEF1
	for <ddprobe@lists.linux.dev>; Sat,  6 Sep 2025 00:59:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1757120393;
	bh=VZJZjN4kmchyX1iVNxU+A2Uvv/4c1rAdiHsT6156HKQ=;
	h=To:Subject:From:Date:From;
	b=mAz9rRPq6OrHZKhOEejZkkld7af8jAax1GP2AN/gGEttVSnVNeYmKwtDVDjfrCMXX
	 k9Qx5uA7Gyp5GbXZR6EmjJpilF0MZuK/+XtSp00G1h0fPjMdFrYqL+Spcic9DbobrP
	 Cx8ExaWPc1CWXP6Ls7JjZTH3Zw7LHJX+DpcSguB1kDantBqPQ3e2lPlvzmrD0/8hb3
	 HqNgwik1bbEgkSTLF2YmU8OoHQ5NStncdTpaYnBFvYfXjthKlC8DAMLIYnAD3V9KZE
	 2rD5x/my8V9SpkxvKS2TFKdQSrOHWJFXi/krYuTEepB6jUnKHpsXrTL1QriU2aZGTQ
	 GO/DZfoxU69cA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8E3F3CA1013
	for <ddprobe@lists.linux.dev>; Sat,  6 Sep 2025 00:59:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175712039357.30136.2612896660568270772.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 6474058c74fb5c202efa898ad7c9250733a15a76238cae5d6a2f7c733b642e1a
Date: Sat, 06 Sep 2025 00:59:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1757120393
