Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 22EE717A2E8
	for <ddprobe@lists.linux.dev>; Mon, 20 Apr 2026 05:47:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1776664054; cv=none; b=l6ag1c8cSb3wj8fFm0Mka970qbaxLRiPvmMd/gob2+4cNUDPT4YVvSKRe95C59giN26kC6lH5bXIb9h9QUXMBWwBWcdwkj2ilqMYSgrSyMkfStVmbjnh4u8bie8Yao9X1HO6Vij62L2CvFZYbsVzpbkdW4hqyXsvy1eop30ogOc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1776664054; c=relaxed/simple;
	bh=qFVHbw1DH2/apT1X1QQ1p1owhDWDFKOR6+Be4QJ88ZA=;
	h=To:Subject:From:Message-Id:Date; b=N02dXeLMLNvH7s86ihN/2A5lOsdVy/ED6xZJfwL4QbtwW2wy2mq3AGYz6NvyLWOvLnNry2C89864IvyTJGj9DaDxuzK/iT2KGUA5svMkGOitS0nRdEimcFM2L5/hK4XdgY4ev6ZhQybL0jCEbAnONRGhUqVnqWzSPDM40TvcDbg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=sfgOUV8r; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="sfgOUV8r"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C23A2C19425
	for <ddprobe@lists.linux.dev>; Mon, 20 Apr 2026 05:47:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1776664053;
	bh=qFVHbw1DH2/apT1X1QQ1p1owhDWDFKOR6+Be4QJ88ZA=;
	h=To:Subject:From:Date:From;
	b=sfgOUV8rczDDrW2OKfxbFx4yPmF4FYruguEX5uQersSVmJC3U6WyrTL7q/OliPCcV
	 pvH8BSsm9lqh1k9qCMT9ItgIIUW64HHjKVpufsAd6vosJYPjQcJsYNrDJP01NLB44Q
	 Uzo8kkj6wCcVhEwah8QSN04PIlEfeQVFrkVSbXPHikFOXakAhHWig9/sxms287X07P
	 gHnCg1pqkJQoG1KKZzl3VdOIEt1EK//9fsufRzjFRIfydvrEb0PmcYwF9NEpPkfXGC
	 tHZdtVzqiGhYEngwpsztmxAlWe+en724eOAx4m7Q5nsPcr0SLsRrQUd1eSRJCgrnoO
	 HBZ6cxrNRLZ/A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AF4D1F99C9B
	for <ddprobe@lists.linux.dev>; Mon, 20 Apr 2026 05:47:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177666405368.20697.12901601737678881319.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 503517c7230284b002a03e2d4f397550731bb289c1a7a7e9b9e66fe41096b9b8
Date: Mon, 20 Apr 2026 05:47:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1776664053
