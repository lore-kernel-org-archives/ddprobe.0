Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1409070810
	for <ddprobe@lists.linux.dev>; Mon, 22 Sep 2025 00:59:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1758502795; cv=none; b=ETCS3gf2B6RKd/HMHVOpcCo1avmwsJThk9Ga/SUXBuOSQZPap6mwEqkMbq+rBstwXi9BXENJm36J87/bMIJDAZav7SUl7+WKCgk9BPJXKcC9spEnpELEtj+WiTKpfxxNDb5I4Izc8ltWd2EVeloPdPutIHOq0b3Q4BKMNXXGg94=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1758502795; c=relaxed/simple;
	bh=4uPQugCEoXF7LIu/wbZrfw9OqrhsE19/wHUpzSS07Jo=;
	h=To:Subject:From:Message-Id:Date; b=cCFwskYKd3kh6gVIdBtDX7vTsEQ/nGN8Iezo0vnRnxgeddJWFLEZH/TnM5wSGDqlt6cW3TYr3ER2G5IoYB028/qpJ+Ffpw/a3sFYlP/Kx8qGovMWcar0qw4LI8TLgNUQDzrtp4vcg+ZDLqIyWEECTgAknaj/0zsMbz/3w6BThfo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=HQ0gVwNF; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="HQ0gVwNF"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A0FB9C4CEE7
	for <ddprobe@lists.linux.dev>; Mon, 22 Sep 2025 00:59:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1758502793;
	bh=4uPQugCEoXF7LIu/wbZrfw9OqrhsE19/wHUpzSS07Jo=;
	h=To:Subject:From:Date:From;
	b=HQ0gVwNFTGaJ/+6Tx8Ks8sDHRe3dbFXqe2/3JgRyhsse+zjlcNTJL+Kg+LWI3OXnh
	 vbBqeUkMya9EDplMY65Drg+EGxWule6jITmY+GZCa/n4g6JTVZ5puV+Iv5Sh/4Rc7p
	 nFfYg08Yds8hiyCEiM+8Hsf8wiqhSvvIxHyV+Pyb+bqvnsDhfTkygJujbX3ZZn8jc4
	 YxhaRbNIlpGb16WMJdvtxbKzYeMm3DjJfsaIyLhUGytt2ipE7ivgHISYAwr7C1qQzg
	 jjQQaAN63T2sDc65J5IArKSMPyuaQ3rFelhy91BysW9sTKkgliO/54lgp84ToMsYRW
	 8a0HfcSakqg5Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8E76ACAC59A
	for <ddprobe@lists.linux.dev>; Mon, 22 Sep 2025 00:59:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175850279357.6078.8829231242770349621.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 85e09a2760e81a9c3351ad39917f4134e536a1e255ae8f52d51010125afbfd8e
Date: Mon, 22 Sep 2025 00:59:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1758502793
