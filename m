Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3066A197A7D
	for <ddprobe@lists.linux.dev>; Mon, 19 Jan 2026 04:23:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1768796634; cv=none; b=Oe4NuazdoKVurZvFYvvgl05F0+MdGZA+jw7fJDJz5sriN6Y6KU1BQZDDuk+Eskfz6jMgpciv4HCeXds9Pry+rdojzViJEVPyZ/ihvyKSkDykmYaUt9mm33dALMFLPm8kTrOygaxKRfYbcBDvmJJw6hUJ61X9hqOfQPNJpqK0nu8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1768796634; c=relaxed/simple;
	bh=sHjQ0MzaJUxkZKT6zdbMc0moed4Sc2QRHk2YaFfnaY0=;
	h=To:Subject:From:Message-Id:Date; b=u4Dprq/sPm1VPfHlXQrD8D5K6ISay2fdUErh45LoVRXFAK5silXBZete25ZMbNu9UamNtMjnTTeju1z7yBjewai1qdTBFyld57zS0ptXmrwjVs4j7pCElNfNKcFBYGosgLBECRaEyAoUWoPkrnRRnbOFmIrdFBXWjkdv44Hgk+Y=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=CX7CjO1G; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="CX7CjO1G"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C1BA1C116C6
	for <ddprobe@lists.linux.dev>; Mon, 19 Jan 2026 04:23:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1768796633;
	bh=sHjQ0MzaJUxkZKT6zdbMc0moed4Sc2QRHk2YaFfnaY0=;
	h=To:Subject:From:Date:From;
	b=CX7CjO1GaCCp3CO+ouHoUPMPAPDRhgDiy8c/U2ft2EEKxZRbBiannfA0FcBHY699Q
	 8X1/Ws7TjDOO0SdvxOfwlDNjsW0MIPwNAaoiXsfzhCzmTr5ioWZO64tYmYyCiW468f
	 T/Fwmfg+gTPBOBgN8t66s4f4vooGtd3e+bJ6VT+LmL9fmQIwl6aAtS7ZG7T01x30Sp
	 Qb7uoG3V61lrji4aHTKURJkqujTiox3NuFIEO6L8VFx4SePBEyiNhIgyDYr79tM+m2
	 NdnUNgj0xIiitGTvYdDKi+yC0pl2wv+Y8Pn0THNU9tqLtIUNEfXKYjB6VD5A8I02eE
	 Q2stzpIclNSfg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AB849D4A5EB
	for <ddprobe@lists.linux.dev>; Mon, 19 Jan 2026 04:23:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176879663365.9278.5430740355165476525.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: ee18b8a5f854ecb819f6359c80f3058abb65b421589e71e5cefdb72e7a5d313c
Date: Mon, 19 Jan 2026 04:23:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1768796633
