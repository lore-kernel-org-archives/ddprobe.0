Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 265FF233D7D
	for <ddprobe@lists.linux.dev>; Sat,  9 Nov 2024 10:55:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1731149754; cv=none; b=GXfMJXwrwV8Lg10cUexYBerayJo7W4paNRSJMyw2/zXZyoocE7cdrL2jpE3609BR3rvSZCs9XECD678/pwByliACl8dsGQy5HmzP5zg8KcGX1XZqE1PB49OsSOy2jl5LwYfKRNpS5VZhilzofpqx6ssNjoncy5YaEMIQMDvUbi8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1731149754; c=relaxed/simple;
	bh=MVVVoKkEO52peCk9Kuw8i6JpILv/ttrENV45yQvwO50=;
	h=To:Subject:From:Message-Id:Date; b=g9PRM3/UTZer4+zxvEyj9vzQCopTah0hXrYadjm2r7WcE2FCRHT6eRT68GgBlyHJb+tau88HkM6crFOC3taYM57QAVySoinjZztEW+1/Bc2f+xTgW/h3O8jCba10uOnADE8OeePLEr9LAIqAQktLDpnNg9N0xvsQjUrL3N/cZRI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=GJ8KiDma; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="GJ8KiDma"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B2AE1C4CECE
	for <ddprobe@lists.linux.dev>; Sat,  9 Nov 2024 10:55:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1731149753;
	bh=MVVVoKkEO52peCk9Kuw8i6JpILv/ttrENV45yQvwO50=;
	h=To:Subject:From:Date:From;
	b=GJ8KiDmamHIBbh83NxeTitN1iNErNQePeLwg/UtrBlqiujDH1zrAUDCOmXs2KWCnz
	 4L0S+NfsJ416pRf7NwxUYVG+pStY1+seonY/nssjiCja8Nz4kak+CScp6YvUlCzmC5
	 5S197X+ecKIqRYT6S7Mv4Fhs8CNy+llPRLChebWNT5gbi879OHSd9WamJ5ZZQy84t1
	 m5Nxrdcvx24n31JP8EDVRts1huRteIdnT1KKCdpoJVv9pPLLS/DYVHh882Xjd1GuMW
	 j0xgZqW5YtCp3JEx4pn6d6PgSIZOghALvsi9ad0JRZtBSAquJDHSCyvcSDBTx1zSyC
	 rLc5DM4YD8/uA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 98E3CD5E362
	for <ddprobe@lists.linux.dev>; Sat,  9 Nov 2024 10:55:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173114975359.3717.7851428824863856572.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: aca39d1fa99eef89c69daf6974b31cfc51b9fa3e10d45ba389f037995002ec63
Date: Sat, 09 Nov 2024 10:55:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1731149753
