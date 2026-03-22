Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 295B4EADC
	for <ddprobe@lists.linux.dev>; Sun, 22 Mar 2026 04:04:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1774152294; cv=none; b=m87z3YNvAyM/VNu44bqT345xE5tsptlUwo8TU1sYImQ8FwA5kJh0ORHJjr+3fYntdJ7O3AM+rSEBVod9G2pQEL1COimm3tl0ec8Svi82/rjA46MUvV2iE8/dy+v0Hz9jy2dMADSt3IopJ6COJas4IORPMF3CvH+SYLL8LKuewbg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1774152294; c=relaxed/simple;
	bh=qPMKDwLGCRfjYQ4razDz5bzUse3vU6PX2Y2iplj0W4k=;
	h=To:Subject:From:Message-Id:Date; b=NF4qa3xjq1Ekrny/32mbq/l33nkmtaf2Cmev+MfDoXEjPa9YUSuoebRtu4ktcsVuVpLkRHvKUyiSLowX7RrKccUh5G6wmI+MHtcPk/6ib+30JtY35WNcBxfF+82/oI3lnwRF5mgyuYHDd0U4Mu9U55AzTiauWaIvqFZvscbZmhI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=R31q8wF2; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="R31q8wF2"
Received: by smtp.kernel.org (Postfix) with ESMTPS id ABBD7C19424
	for <ddprobe@lists.linux.dev>; Sun, 22 Mar 2026 04:04:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1774152293;
	bh=qPMKDwLGCRfjYQ4razDz5bzUse3vU6PX2Y2iplj0W4k=;
	h=To:Subject:From:Date:From;
	b=R31q8wF2CwFRrqUA65stARQlg5cMK8swL38MrUax+K4qPFt0dt8aHwPegwwiLWb98
	 N+f2ZOm1QaQocfphM773iEWawDurrkmu2FpRn3Qdh4TNC4GWL56Dtv5Arz72MerNAS
	 syMKpJMEK5CWwMpMONfxV8G2MVL2eXeWFoej3jti7MzAPCNxltVabUDwtK3hmyPvE4
	 jXLxmHA7k21WngfoZtPGYLXwekQ4QYEkDINIQcB/B/Lq5snsvODspF+hmuXJ8m6+rx
	 oAu2J04mq0BH53yKpr9kXqxHHSjw/THMS9WXOSpYkWRejxMLhkAE+blxCAp/3tNdWN
	 8YyGJpiWhLerA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 914E5FC72A6
	for <ddprobe@lists.linux.dev>; Sun, 22 Mar 2026 04:04:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177415229357.11816.4687738701687702970.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 97e3fbd08bcfe2251269ff8aa52ca2a96b549d1dacaa6b90aef6b3f81e7f7a89
Date: Sun, 22 Mar 2026 04:04:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1774152293
