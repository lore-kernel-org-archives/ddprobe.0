Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id B9A091C6FEC
	for <ddprobe@lists.linux.dev>; Tue, 13 Jan 2026 16:43:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1768322633; cv=none; b=pgKmRI+ZNdDHtXYeVoBPyUoVajNdDBv2SuDtyRoel4qyHjZMTTVelx1Pry+bNSqDowCyONKMsp5aXXKMYlbfGVBLpV6AWaj5OgoYgIW/wAyK3FN5MqdR8nFWvvQZ8eX8Zeo9tOYBIk0vyqTE7TtrHyB2UNMMjkoXnPj5wyPcSqg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1768322633; c=relaxed/simple;
	bh=wOzqdACWkz1T97zArrDrBvTc8FHv4/Ffr9pTUYKO11w=;
	h=To:Subject:From:Message-Id:Date; b=DPvvcm4Ntpfken2RbwyP+SfPy9W+kwifoo8JCEj9UdmUnoFCf4KuVqN/flIEzcHwIkOfBEdezA3OMe3YXX87PzPwByCHsz4MS3t1/rbAy9pYpcQDCvgJMG3/sidmNS83FE7CEx+IPZfGTO+8OvReODVPeaIW6yHVgz6WuLH6M+A=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=mx0gNTYG; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="mx0gNTYG"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9EECBC19423
	for <ddprobe@lists.linux.dev>; Tue, 13 Jan 2026 16:43:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1768322633;
	bh=wOzqdACWkz1T97zArrDrBvTc8FHv4/Ffr9pTUYKO11w=;
	h=To:Subject:From:Date:From;
	b=mx0gNTYGDcpudLnKulPD/PhkRDYFq2TwafhsrESDqrTDfVpBztljqFzYTapaRh5L/
	 MyxM4VYZuzehbm0TBbaIWSGw425KkYSkAqNU7Tp03iMmuhHr7Qrj9LruvZNkDbU+ES
	 T2gmcPzTvbQMWgwsIncInh9Uy8VSLa6pvBqAzxAPVYt7f51nTZkRD9gdo5LD9v3Qd4
	 4QGvPzlgoe5fqjDoHJK/SLmj709JRpVVTtcLa24RalAg2VApF3ek0wGeNgMM0tKCRx
	 xuPlv0z2LPkIU6PSSLGQr1nsG4NujTSYO3LH1xdq2O8TZdE1gBZBIhMLSytHCMm/wK
	 vLgrhLIUW3wvQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8E714D2F344
	for <ddprobe@lists.linux.dev>; Tue, 13 Jan 2026 16:43:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176832263357.26063.11331919224944101150.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: b614aec3983cf1284dbe35e675245614c64e826e1c26b5477f924b808169adb1
Date: Tue, 13 Jan 2026 16:43:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1768322633
