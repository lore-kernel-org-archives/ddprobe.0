Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 26275315777
	for <ddprobe@lists.linux.dev>; Wed, 22 Oct 2025 10:19:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1761128394; cv=none; b=rzY1atb+z7wz35kcqpaRjirN6QFjsPZENmOC8RUbswTowHSGyKbFtphawW//55IiilbXJ9MbmWODW2JXs4ukIGGaSmUgqt3BwcB1Dr5mcOOudGzr4HqXtzo7ZcHHAG7k20U4og4yjL5LuiSGR2OFaGiK/Q8TElOHtt9GnxVvr8g=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1761128394; c=relaxed/simple;
	bh=6rFhjdNg7ZV0TsynRPNJ9OlMJ0mKQDbEmcn6R2I3n/4=;
	h=To:Subject:From:Message-Id:Date; b=sRfhwkkRz3H/LIjVzNOBedI0/313WL3PpUC7aaqZOD9Ti/UyDL/j05MQbcfRLp/ftl+U1zeG8zyTDmdXus4Kz9zzEVIrbUijSJAoEH0AuMYUg4IbdinUI/xQu9oDFiG/Hnm3w9dnGivLz0VDaKQsdU0kAdJctuUzqi59w+q2HjA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=UwrqRpMV; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="UwrqRpMV"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A444EC4CEE7
	for <ddprobe@lists.linux.dev>; Wed, 22 Oct 2025 10:19:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1761128393;
	bh=6rFhjdNg7ZV0TsynRPNJ9OlMJ0mKQDbEmcn6R2I3n/4=;
	h=To:Subject:From:Date:From;
	b=UwrqRpMVebIvYjEvsdkAcFJruApDUhJVf1pK6B/I/0wwGkOpLSbhpApYYXKpzwVAu
	 EbAPohjfpcvyoDZakXBsPpNpb3qpqqIODqRc6T4KHFlhU9RR/w9noC8VlG/LiY1rfn
	 LgbJUKXettg/TUczRP6Jng6biKgmT+e1zmVkK5geAUgTgEQFEUfdURKH6odGdPgFe8
	 PIrxe7UOehP6Asi1YGhomu+PqmNBZStjiF2wFmc/+1TTGIOu0p1/cD1JFdpz+PIWJu
	 6kxIQ/SHWkKjPiUF3U8JqmUCxobT7Iejj7RSKJQIqF4Der4wqTR19Je6YUyLFoDsPB
	 g9OrmUzb7SA8Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 905BCCCD195
	for <ddprobe@lists.linux.dev>; Wed, 22 Oct 2025 10:19:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176112839358.26249.18392321838586219794.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: e09a002ffaf5059173924544de3a82dfb6c1ac7d81a6853ae58c140c786420f6
Date: Wed, 22 Oct 2025 10:19:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1761128393
