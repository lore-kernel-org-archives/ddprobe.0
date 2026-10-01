Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5F9E3374A1E
	for <ddprobe@lists.linux.dev>; Thu,  1 Oct 2026 02:20:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1790821234; cv=none; b=mcJ6VmKp2RSsuflBTZE9TJ79xOgDmaZOOP237beSE7YIUFupic/MBEDPK+rmDJjcMPx45DlMSXIN9Xh1QDY97ypQGpoUHGwkIHolowTQLBp1kOsIBZmvCKhjOiC4Vt62PcEDPDC595E8RaBMiCOEdrtulByzXUfl4sgvQ3vx+1Q=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1790821234; c=relaxed/simple;
	bh=GLuGOtIT6FOoeeIhxXlWTiWCK3mH3vfd3QqU3yycN0w=;
	h=To:Subject:From:Message-Id:Date; b=L7Gz7HWAct2UhQj67e0eeWDgF8dWTiNbGEIlky2JEjdYOsToIagG1sk9TxZfy3mdXgAUYLZFu/s8NSurirkgWSjUUWX9ocryjJU20LQBLC1GDZlylTrXQHVT06fv5jkvkU6vmPbs/CF7Xbz7TRCYtGsmF+WNfwmlcEBqR3Qb8Hc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=CcGLHhu/; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="CcGLHhu/"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D8080C2BCB9
	for <ddprobe@lists.linux.dev>; Thu,  1 Oct 2026 02:20:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1790821233;
	bh=GLuGOtIT6FOoeeIhxXlWTiWCK3mH3vfd3QqU3yycN0w=;
	h=To:Subject:From:Date:From;
	b=CcGLHhu/34MhM6L0xV53r2XQY9Aq+0YnS2x7osoXSnRsxDCGPSHT3kqvKtYfknxBs
	 rWQ8O3mbaw7hpOaaDic/4zRfAW7x9otCHObyVhAr04qoTn29/HGebRdXoKWKDryrJW
	 QOV8s1J6AlcSQnlfqqhR6whvlvGKghYDAbNBpdI/NRivghwVgs60GDMarbzsSkpW35
	 fCJ9gnZGcRxOQWPWWuQf6PhqyDc3g8cXh2QV4lx8rjOSPHXZ7eh09/MI54JQQmEgSt
	 bOC7e1K3IfxxBaPKnZtHXve/JmTADjwgM3a+EtF1CO+sHRti2eexDRHRR1OFcP9iuu
	 +dQRcqoHK3i0w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B0735CA5FC4
	for <ddprobe@lists.linux.dev>; Thu,  1 Oct 2026 02:20:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <179082123368.28227.6166857257342550560.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 4b97665faf279e53103fd745505fba5e58980aa120197bc485bd9840059b8ce8
Date: Thu, 01 Oct 2026 02:20:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1790821233
