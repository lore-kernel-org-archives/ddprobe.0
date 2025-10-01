Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 04EAC3D6F
	for <ddprobe@lists.linux.dev>; Wed,  1 Oct 2025 02:39:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1759286394; cv=none; b=bvHla/lxbHMBpRJtV5sB5V/Cnf8+tZZclT7c9NCnOMrmV6il17+J2AArihCe26P1osLCbLgbD3q0Zam3u7QtROLH+LHKJOS1MtMaNBuhOne6YBOcAXVexopK2fFajFwTjZppiwV2T6OnD0IGkK2tzKNn2bAtPjKMoKmhQSteb1Y=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1759286394; c=relaxed/simple;
	bh=jSvd+zRhGGzTp7SkyjfNLQw4H6qG9j9KIO1SxQYBU9Q=;
	h=To:Subject:From:Message-Id:Date; b=W/Oz9Idfj86CIywJFcBIDeql9Tu619RndP3F5Oon20v5dx26XeI+r14ElIhWw1OsoBdpT+F/UYb2CcYBQjNfk3LO9GAOWF814hP4G2cVNjDpNJKoBAdFetHmvCJ/Th0F8qIYY8SzHN9bjhxBljRdPSMkBRDuNpa50OUpKES41LE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=qLHpHoMM; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="qLHpHoMM"
Received: by smtp.kernel.org (Postfix) with ESMTPS id ACD76C113D0
	for <ddprobe@lists.linux.dev>; Wed,  1 Oct 2025 02:39:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1759286393;
	bh=jSvd+zRhGGzTp7SkyjfNLQw4H6qG9j9KIO1SxQYBU9Q=;
	h=To:Subject:From:Date:From;
	b=qLHpHoMM9k4VtA4p1vORO9N1UiunHK5czNhg2xkNW7EfiJ0FspV8hebQxBEk9lMR8
	 jAt9FsGDwuk68N2yALTWWMkA/nels9u2yVThXrbSUwmcF3nCnHqkeUTmSLxKziJfiB
	 yIJvphjftRIntWwuqkgIL4g2SNrk1OuNjdD8R9jjTDuOmeMidEhLwr9AF+fqzJdCb6
	 IKpr6gHKhjEnWCTOs/YfJM+WoyBWM1eAKldQYB7Inuyac54G7PaM7+5xI3Am+2yvbr
	 4QPFUDg1fxeP6KFcSff60TxTAFi4R8A/vg77u1hbFG27i5dbqd6k+NwV6aFIeGS0FQ
	 8iCLF8ouOrQOQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 98CE7CCA470
	for <ddprobe@lists.linux.dev>; Wed,  1 Oct 2025 02:39:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175928639359.16312.1456575666003311280.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: b5a3a29d05b8041ed91cdee965ac441b33d60327ee99d1c05f72510fc836a035
Date: Wed, 01 Oct 2025 02:39:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1759286393
