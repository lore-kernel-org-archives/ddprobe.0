Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3B8B4256C91
	for <ddprobe@lists.linux.dev>; Fri, 10 Oct 2025 20:59:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1760129994; cv=none; b=uPm56BMtTd5Safday39aiENSs/1ZACqPNKirr/iINndWacyrY/J3KBFEW7/JNC95FMNCY4ZFgV+v2doSTlgImrGDtHXxhUAaPgIXx/WeprM05ygIAZyzIab+SuAebPIU6nLasns8hC6KOSfZCuydAMYrlkLtM/xU9Jdd4y1lGCY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1760129994; c=relaxed/simple;
	bh=+3vCKz6f097YZKk9hejaCma2AeKYQ+QwtW91UZU0j4o=;
	h=To:Subject:From:Message-Id:Date; b=sOHOe4LsvOYZv/WLF9N6Nb9alVeZ/XaYehZPE7vjJ8pixC2vdjt/sTMIR8ptyT92wGmhANc1n9osKxuht3AkS249PbyxrONZ0iPl5/XbSjwyKoPEcikrKSYjLjjIEQwdBdPD6caUo9aRisO3kmAfA7WYxf9aHBmgEdDTaoZkck4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Qq+LROij; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Qq+LROij"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A52D4C4CEF1
	for <ddprobe@lists.linux.dev>; Fri, 10 Oct 2025 20:59:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1760129993;
	bh=+3vCKz6f097YZKk9hejaCma2AeKYQ+QwtW91UZU0j4o=;
	h=To:Subject:From:Date:From;
	b=Qq+LROijOyMDb08hsrLYxcBA7qjL1wuyoAX9cba+BK+lX12+rSuIr8q9feXsRudap
	 /xUCArIqyIz/POBQqs9o9c3l/mrbt3y7P+jOyDl0pQgpFpOnZ1GBBjsf/6c5AwSaBm
	 obJY53o3mzy596N85Z5BVH4Wel9vxOALu/IQ2+mPdA27rxWK9lkfqYhwvcfNUh2lw7
	 wcWv+ogGVE83/xdShy8NIyz00LwUClvNcHn5xA5kpu+eCsf+Tsiqv/I9sx8HW74lJk
	 YCeRvv2WaPZ5Ef25+MbTNCGtCu7Sc2h+ZwPTOg882OwQQFzd0ovnK3ca3iJm1wy7Oh
	 zUkz9sEFJyZlA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 92C02CCD185
	for <ddprobe@lists.linux.dev>; Fri, 10 Oct 2025 20:59:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176012999358.24837.4293080858184535012.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 1e72733bfc31df137497eec2563d4768090ecc064ab4a9c77e2a3bb4b544bfad
Date: Fri, 10 Oct 2025 20:59:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1760129993
