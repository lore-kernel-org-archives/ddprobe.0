Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 50B2C17BB27
	for <ddprobe@lists.linux.dev>; Tue, 14 May 2024 14:42:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1715697743; cv=none; b=afq80PbL0sdYTaIoVHkcAktIRQEPTP+8avkUo6c9TM0L9IUXKC/dMonmLHkGYR06A71mAOJ+1AF8dy5IlGuu4gaQ6ktvgz9OSOQZtKPMjfBO8ov2cfFHh7/7QU/ceD85iOK+Wt6t63qvtprBhonOhJlRqmITcpD71I2ZNhOYSP8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1715697743; c=relaxed/simple;
	bh=R1Hg6so1SWL7MUOWjprzo+u4o6Vrd+K6CZSgb86aDpw=;
	h=To:Subject:From:Message-Id:Date; b=tMkkx9ApORKqt5EXB3sqKDNysN0Gl3pG88Z7ga+lrdwdwdK730T6Mx1ozU3BR3DpJVo4BHkf2dVEf8XV8/5KWbCawtEANtJbYXxw2JPAwzBovVC5kc3k94bCPIOscasLiYDEzHfEDca6cTH8mzEDnPXB2w1uH49TEdaZb8Hh/9A=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Z0TKGFOf; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Z0TKGFOf"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D57ADC2BD10
	for <ddprobe@lists.linux.dev>; Tue, 14 May 2024 14:42:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1715697742;
	bh=R1Hg6so1SWL7MUOWjprzo+u4o6Vrd+K6CZSgb86aDpw=;
	h=To:Subject:From:Date:From;
	b=Z0TKGFOfS5XM0wlRBca0MGDBA4AS0O83HqGlWfKRnX7U7DqFBrCDywxhT6e70lwzh
	 3S12mDyXp6BJoSexRTJa5bWp9z4uuI6/4luNi3Xcldp9ao1K25l1PpV6534M3DY9rN
	 n30MhLyPovG9//p1ZuS8bMU93b2+NhhIpVYL3vo9fg9c/KGzrSxdRMyFkdtbKpn+Rz
	 myJPQcfKpBf+rSuaU3ScnQhEhioc//OmZzlzsmsaAOfunN2dtHZ6AnTFZd8sF0r3AQ
	 h8oIG5dsA84XXH2FXc7vFOLhJRef+AIssSTNALPJjeZzfcUbEDWtF8ld4CUVG7CsiU
	 qxkZO0o6VKjRA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C8597C25B75
	for <ddprobe@lists.linux.dev>; Tue, 14 May 2024 14:42:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171569774280.4377.8337488497108419851.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 81e42aa2cf5402f6985a0f51e28ff53eaa87e6e09a73542b10e022ee04f49511
Date: Tue, 14 May 2024 14:42:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1715697742
