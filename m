Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0A40E150995
	for <ddprobe@lists.linux.dev>; Tue, 20 Feb 2024 20:58:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1708462697; cv=none; b=ji7Hq/nXzIooG53Puxw8jxDUEKoX6XO/zskgQ3a/wTUSkByV5gb8IR0us9in08OUGecL9ScqC/74PxvgyZghNv559/9FpYFJQyH/qZFjO3wv2lqVWsp3xKWMGtv8JTT+B+DJlaTHAZHjC8Yle0ojWNbH+5KGRXXlMTJR9zXujR8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1708462697; c=relaxed/simple;
	bh=TAtJDJ2spRLNa3kDBFz2VxUuRS6WHfgLwe0Eq1HflK4=;
	h=To:Subject:From:Message-Id:Date; b=SWbiwtIF/rnibQ7E06DsWMEs2JFDcAEOlkhS7syqsh9kZ6Ya7MvvoGxszaJwLWJo+s5UhFOeOcPUGnedsdbBB3vAMXbF6qUke7bXDxOvbfRkVgGDyYR8EdHNV9paHeA1LD6cDxo4rA60hxmcuuJTrk278kTrzQm3Sn79id01WVI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=RspHE09q; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="RspHE09q"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 81CCAC433F1
	for <ddprobe@lists.linux.dev>; Tue, 20 Feb 2024 20:58:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1708462696;
	bh=TAtJDJ2spRLNa3kDBFz2VxUuRS6WHfgLwe0Eq1HflK4=;
	h=To:Subject:From:Date:From;
	b=RspHE09qAt4zjRz1LWb/O2/IPphJGy1lmzFaRIG1NIhF/GuexXBDx1ZKRihfCozzf
	 nq0Im0zJGlmYwSIXT9JstpHeo+1ADgOXDpBf8AzYlljaqluvH1+yZyqsGj1zh75Bvl
	 OmjdmDrD5W3u0jz3Mo/rzcUQMtGV3EULn2ErBCGmyV5wByDNDfw3ywZljctXXZ2Xew
	 SC/9YBFgasR/E8F1MD2PtcyVG2e480ySy5AQYUOpIaRbRzFjGW7ArOxe9EhPJNmpw/
	 AV6wbKVMiI3G6jlknr2F2V1mDNg85XZb5n0Oo2UjcAS3UhaEmwgDIuhm2MfLopvaTz
	 Z0tJCAmmM7/Cw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 67C1FC48BC4
	for <ddprobe@lists.linux.dev>; Tue, 20 Feb 2024 20:58:16 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <170846269641.24766.183854086983361115.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: e4a258fce4bdd407fe89984c459d0567f1aaf6757a80237c147d6080d4a646f1
Date: Tue, 20 Feb 2024 20:58:16 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1708462696
