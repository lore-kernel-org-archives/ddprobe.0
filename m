Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4A89B1E1024
	for <ddprobe@lists.linux.dev>; Sat,  3 Oct 2026 09:50:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1791021034; cv=none; b=kXtNbFSXC8monMJL1uCjyybrWYVaz1/8jsNF6526pvG2aNFr4n4mHxmBTCY2kB0zAZRLSv3Izwpeau/CZyip43ykHysTu1C9/hWkPUOE/9YBLFMMz2AXUuyHslfmPvUGb1Bx+9q+HKznJlGIsY6gjY5sIqwDZT5gbwBsxMYUcPw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1791021034; c=relaxed/simple;
	bh=VZoKut1L1HPO8HxYHa0bYaC9AeOtCdDaUYSMq1oME2U=;
	h=To:Subject:From:Message-Id:Date; b=dr7Eupp22bsJ7525X/VIZpmSb7Ff0c2+o10UjjBR7shnPKdNYhqVvOwAP6J0XhU5kUS4RGgdsblaYd5jUfUOURrOxu+Zj0EZiFGTXdCimxGUpfgZJ5/FQsXPGtGtoOA2t9TBjgzxVoTDxUTf1NvUvtrMWtiAdQz48ZZbovT928w=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=SpVc0Zx7; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="SpVc0Zx7"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D0DB3C2BCB9
	for <ddprobe@lists.linux.dev>; Sat,  3 Oct 2026 09:50:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1791021033;
	bh=VZoKut1L1HPO8HxYHa0bYaC9AeOtCdDaUYSMq1oME2U=;
	h=To:Subject:From:Date:From;
	b=SpVc0Zx7WyfvjfCsrmPP2OlikX/RB4Gr09TuAAaelI2Ld4kwQy/2Ft8sV6BK8ngia
	 z9TgPS9DcUOsfkd3LiJLBYEfVIQ3QL4VEUspisbicUD9U046eKQWWAr0ootwNCsZh5
	 /e1ScwhGyU9sTlRH4cs8b4kh4ZAunv33WLdmcaJ5YYs4FQqwZ0eGzi7VTdLA8xDtjI
	 I3SqfcE2cvNOpCI8B/o6mr8GMb10WHj8Ood5gKsY9PSpF0oa0/xsDuqCtgzdtbfddk
	 sA9M84pMGDQDw+vOLYWDCb3NjfdL6Xy/GDUhBt6N0u9nAv7fXWljjGskSSsLFz6XgG
	 Pjul6QsOhWeQA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AF988CA5FE3
	for <ddprobe@lists.linux.dev>; Sat,  3 Oct 2026 09:50:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <179102103368.26114.14000472874317518643.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 802d8f0d874844f24a6b670971c979cf0a9010bd4d2e5e0dbd7e8ab3d6a558d3
Date: Sat, 03 Oct 2026 09:50:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1791021033
