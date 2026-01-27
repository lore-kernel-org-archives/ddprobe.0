Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1F38029B78F
	for <ddprobe@lists.linux.dev>; Tue, 27 Jan 2026 08:13:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1769501634; cv=none; b=TOmwRXrOhu8vrbT/oE+TYlMhJ/vcJuWb6omYDeJXIUBmDw8gpnnIMuaklcInyMQ7XaUcjawhCDSPeBJ8e6UVZiBd761XSCR9YHDzkfITlvV+OGrOWVZUfddQz6FPGKLxHB8r9aPWl8zR+z0djFxB83azbM97wWfD1tRqa/sAb0o=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1769501634; c=relaxed/simple;
	bh=8M09k5qbdJ/IQ9e2PnDYYNV+mXXs3tQhE4C8kUvTf74=;
	h=To:Subject:From:Message-Id:Date; b=FPa2CWRCrYfFEJUoq6BD+/nqNw0ZmxuBGd8mQRDjfJakJu/wqdtmtp096SrYMXQmn1TYjgXzUVLlgRPRjvzTBYZ5uS+xwSE9hLZUPo8BrOo6Lxjn1IdFDFX8xlbWIEcjpimpA17fqFfKkERiIrsAC5sUZSt7JOObaRd9DOql1iQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=U5mal3i6; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="U5mal3i6"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A8444C116C6
	for <ddprobe@lists.linux.dev>; Tue, 27 Jan 2026 08:13:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1769501633;
	bh=8M09k5qbdJ/IQ9e2PnDYYNV+mXXs3tQhE4C8kUvTf74=;
	h=To:Subject:From:Date:From;
	b=U5mal3i60/+WgIEF57S/FpJtfbbUEnWF8NZrgMBMz0qsV2CdmiIxg46pW1iu+wbgp
	 r8RoptQGVN1sX4N/kmxNTcEjZ5jm3gz1cMM2rJhe4Qb3+58mpPH/BRNkSleESyHLJx
	 6TwImuOJpeX1UKiHPBl7HbYql51b3cKntqwCJvMr3n6wNLjZNeOhMvvn9w2XslMRO/
	 v4IHLRYNT9QoNnB/cvkfgB+zTZnteFQCTJ3m3xGlo59Vxb9J41QbeRubRSLPM5pgcR
	 /eAGnOEpiAvlmLYRD5ppTmZLB1zruiEVlCSFkew7kRoGC+oJjKreJ+wJj9M7Q75s8i
	 z2aOpgy6IFDmQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 909FCD2595F
	for <ddprobe@lists.linux.dev>; Tue, 27 Jan 2026 08:13:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176950163358.6071.12544832257905908163.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 8e10f5cab26b47bbc5bedaf0573d716659b4ce8c8016ee39b28968fd64196cfc
Date: Tue, 27 Jan 2026 08:13:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1769501633
