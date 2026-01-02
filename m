Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 29DCA2F49F6
	for <ddprobe@lists.linux.dev>; Fri,  2 Jan 2026 12:43:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1767357834; cv=none; b=EbYfsoFb8Rn1EGrhd4307AVM4Wd3blsMILq0GNk7683mbDzQ9TcYmxkEEOaR9a/yoiqc5/OdaJMoQoYQs1+U5ZqRVHDmcb7RvdE/dv0umCELVlUIxI4dSSiHL02sRp8jE8pcMjOfO0sNVT3YviV+3yYXOiXqHFKGa5MpQ+d/RS4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1767357834; c=relaxed/simple;
	bh=0uQo6dSEhaJ/kDNVtUp/gOBS0DIuNtueLR5xd5gHK9E=;
	h=To:Subject:From:Message-Id:Date; b=PvUO94t/GyAgYsaA/1KRcqTyDoPTWj6/4iUb1gY1Q4RfJptPB2WgkF9HcrmsbMbpQ6HDQkmL3zRVLOOf/57T8YXZn4r2zqmaaBYsjiVOsx8+b4hBmSLwG0i9I6V7luvJrEqZFj237CoKom7Ve04SG8nbt5zI4naUstGcj7mUwcs=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=f3xDqkWK; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="f3xDqkWK"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A4EBAC116C6
	for <ddprobe@lists.linux.dev>; Fri,  2 Jan 2026 12:43:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1767357833;
	bh=0uQo6dSEhaJ/kDNVtUp/gOBS0DIuNtueLR5xd5gHK9E=;
	h=To:Subject:From:Date:From;
	b=f3xDqkWKA1O7scO0gzrA7FkHld1ZZKgJdDZFGS3cqxNiOyPlL9bMXmDXQs4/jp6CH
	 078FnwY01Sz9jsl2HRm48v6eUPxU/Wtt9t/YinlXPYHwJSfOb+r/voVDcW9dRMmdXb
	 Y00YDY//JO/9zpBUxL2ivc2papMuinxpacQ0Wi2zRqBIPPGjRiBAYlW7Vfi8x369Be
	 VY0mr3uNb7d0KfJGLTOpsvemQ+hEVrfEyipQVccWHyxDRDRoSXxAH+rhao9KtpclWS
	 OEf+UIxKXCueIxQxinMs7pZrm1+rAs9zweBuMlDUvnmu63LCfYVrjKA9aHrHtNke2b
	 uOkBYSq2xR7bg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 95354FA3742
	for <ddprobe@lists.linux.dev>; Fri,  2 Jan 2026 12:43:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176735783358.13456.15686800054878995161.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 3dc0d7d0c25d6005293b2aac1800da34f8f4c971a8917915f39cc41a52026ec0
Date: Fri, 02 Jan 2026 12:43:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1767357833
