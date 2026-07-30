Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 630ED3B1031
	for <ddprobe@lists.linux.dev>; Thu, 30 Jul 2026 08:20:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1785399634; cv=none; b=ieDD42je6Tz6ZrQUpSrMuYSdVWmU277CxQQDMzHWuvHO0RkOTu8sDZSlJNdJmoVTXWw3hJ3i7zGoEO+M8yYj72q0PQK6SJ+U4D6DCcWIq+Y6c+Usca6kRlevNcjydZYCb1UOySvSPqled0K6OZ4DPCdfsAtyPiwi5wBOwDY6SLM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1785399634; c=relaxed/simple;
	bh=KCgYEI0LdR37XPp6ZaVcmkdJZFMMQyCDoKhZZnhEwUA=;
	h=To:Subject:From:Message-Id:Date; b=EsIf3xUs9p+UeLDGselTV1U8I0MqX5h2Q/mDWqoeKeYhBu94MItOSS600sSL9KRgd+sYiqALtC3H5Fwg8l/96KdO1udxWc0iRGO2RJ1NP0f7rWMCGoh8XJBqZrF4UR1A+zzdU/JnUh/+J6bIugRUmvvwQRSAoD61zONipRM/YcE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=GNgWDF8f; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="GNgWDF8f"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C9E51C2BCB3
	for <ddprobe@lists.linux.dev>; Thu, 30 Jul 2026 08:20:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1785399633;
	bh=KCgYEI0LdR37XPp6ZaVcmkdJZFMMQyCDoKhZZnhEwUA=;
	h=To:Subject:From:Date:From;
	b=GNgWDF8f8qzvPhFCJIqMup1k5FkSx2t3hJxCeHdIhR9nrefdN18UwDALHMllXJOSd
	 y5Pd6tTLk1RzcQ7Lc8Cuuz7cEl+tiE/K2VAOBF9veEaGs8rNlAaXRcXanwmqx/cwqU
	 X673TE/WcPdXjAFpgDqAflhM6Una04PiLGu9n2PSBH08GxgkAMrfv13FH8HKlMQKmg
	 BTVZ2nXc1+pyko69rWuJGpjfGx4gpSnuxxB8eds4YoVsYJhyIcnSCo1lybMAKg93cA
	 6QVnnPoxpG0zJKMpzGblkAntWfb/nwAxcHdxvOezVTfXPHLdoGytwDd2oMSUgok9Ve
	 u+oxDWN1DGmzQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A8621C54FDF
	for <ddprobe@lists.linux.dev>; Thu, 30 Jul 2026 08:20:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178539963368.29036.3052794460144348120.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 00900cc59f0a8b0b35c31ad43e19b5c5ec9ceb8511b03f1be15fd215bddc36fb
Date: Thu, 30 Jul 2026 08:20:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1785399633
