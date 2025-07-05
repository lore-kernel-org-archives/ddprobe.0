Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 20F4ED2FF
	for <ddprobe@lists.linux.dev>; Sat,  5 Jul 2025 01:49:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1751680194; cv=none; b=Ggev6X5T5NT820BN6JJDXnGPtBKkS9hZvEnajw3Xc7P9AQMB5oDEdy8aoZoaoCR+yJuwy+SbZj0qAHvTsJZ/uAicduNbVnIhDOHMV+004dPlqzCHu2TlVn1MxiUDZT852ZqHU45AqLA4YRKRooJAudl4THblzuhOE7xEBYX/abE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1751680194; c=relaxed/simple;
	bh=XElshHJG0X9C9XaxsB1Vxe5VsARysgZ67hiWPezkIMk=;
	h=To:Subject:From:Message-Id:Date; b=d0THhqNt3CkFSm3xPZmxiLi9RDTtEAOGHHJe7vZ3YHlVFoeiVo9Nww5SdhL3b+s/2b1CirJmkI/esGR99UMzA6QgHOVm8TNf8N9Cd82H5R88AfbtkVroXEuXXU0KijLESYJ+m+1PJPOTR909jhtNWY5hzug0oA9SJz5T+lgd438=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=El6Cqj8G; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="El6Cqj8G"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A88DAC4CEE3
	for <ddprobe@lists.linux.dev>; Sat,  5 Jul 2025 01:49:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1751680193;
	bh=XElshHJG0X9C9XaxsB1Vxe5VsARysgZ67hiWPezkIMk=;
	h=To:Subject:From:Date:From;
	b=El6Cqj8GaB6V4VWpfdaCQrHsBfHtumJ8rKV/VGSdpvdqglAhL8b53/xj9dHRh44Es
	 C24W06bxsAuspjrEEbS1XO10UVDKd2OVIYfr60l1caDc5Yco3z3K68fWbHDMT3X3BB
	 0mBQH9c1ENsDGB5WV+hnGuY7HfX/48hkeC9H2ZeqXT6tdWuMR3mYM6xbwhFKvfQknT
	 1UfWQT4KfgzLD7lGnYFrESf9P0n/ny4OAkvuVXy5n1sxm6HbERxd92mlmoYF8fXHSP
	 aqWPruFGSTJFWizWObnuYlxOY6yrhHNI8XadbcQTAG7AMTCOYvSUugttNXmnuvAP4i
	 SSyX9pOoFjNhw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 961EFC8303D
	for <ddprobe@lists.linux.dev>; Sat,  5 Jul 2025 01:49:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175168019357.17232.17174832924079616611.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: f0be62c66945f38d975dac45ae55ae62358928d18159633e18798b4a6ce6088c
Date: Sat, 05 Jul 2025 01:49:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1751680193
