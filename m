Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 84D511F3FF8
	for <ddprobe@lists.linux.dev>; Mon, 25 Aug 2025 01:09:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1756084195; cv=none; b=neVzmrCQzDTrN+voz84+fnklOkD0Q/lwkWC9FggaPNAXFDGIoDzvVn7L4s5M8DOI/2l/s/AKz10t1HcISuW1UnicS+XJTVU3S19pag9YArT+WL0Akfq4SRTQ5+PUSoiO3XWlaWZf9NWesiPUmSz0/Mz6u8sHzZUTmQx6xmkarpg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1756084195; c=relaxed/simple;
	bh=5bhRDWjU7zEDtABJx+cZLJtEo16dtg9sTXERKvACCxs=;
	h=To:Subject:From:Message-Id:Date; b=qFjwl/BRmMkHb8cw2urEmZV3jXtCTh2p/Zn+xOYN074PLnzyRh7M0y4iH8aUVb3PTyU2ODrM2+lsg9T8+gsRW51yrOP94iOuIzE65ddzqFihidrJsxlIrQDYxlE4bQXW/wTzaBhojG++RkHolvrbPFAu2kv8UkWzbUbjNArKWYc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=eQEPd8By; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="eQEPd8By"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9FAE2C4CEEB
	for <ddprobe@lists.linux.dev>; Mon, 25 Aug 2025 01:09:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1756084193;
	bh=5bhRDWjU7zEDtABJx+cZLJtEo16dtg9sTXERKvACCxs=;
	h=To:Subject:From:Date:From;
	b=eQEPd8By351kz0h/6c4L+/hDvrfrRmiEdaEf1TDhw2HySI4TzeS6lskJ6b7YLuKo7
	 TpE3Q1op4YHVQj3OAhQdf9A7kR0A07Q7dBhUQOZrl53qvPtaJFlLqzeea1TBnVaj1r
	 laj8kv/B6wf+iOMQtsrmi3QesTm9fXOq0X0pwhcZDCK4fkknHrVMKtDp0Zzi2kV6UD
	 gEUotI6pLE9kq+2zt6SJH5veu86xqTUWTdG/1VdcRBQ80I+xSLTQBG6onRRcksTcKr
	 UHo2b7tV2FHIvlCQAsOKnjuvCOe2yuWeFlhjPGb+gpOYJunDLfhwwIYJuV9mdusrwe
	 bioqm5m1S4HIA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8E9DFCA0EFF
	for <ddprobe@lists.linux.dev>; Mon, 25 Aug 2025 01:09:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175608419357.17317.8106603464826011496.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 274195ecc432aba7e91607fe5e0ae8f4b1ecebd8753d0050c9d1548501a07b29
Date: Mon, 25 Aug 2025 01:09:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1756084193
