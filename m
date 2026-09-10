Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 72A9C36215E
	for <ddprobe@lists.linux.dev>; Thu, 10 Sep 2026 02:30:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1789007434; cv=none; b=bOiGFu9Fdrcp5anNbYp4vz8LDwqvY0JrF2A2S/KzGv7ckOE5acTVWsSp+oL9DgJ+iMklD12Nh3RZEoMlFLTcfCtLEO+TmeCVPsZduFEKGITuKXEufTQKXF239S25ap0wDTVt00NMGsaitdYolni9kSreHVV7pBjgTCxUCjkXGJo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1789007434; c=relaxed/simple;
	bh=qHX8hFKfHVUSEgNWKmOHx42txolshInFYqRx9DorZwI=;
	h=To:Subject:From:Message-Id:Date; b=MY3TUFSfBjRA/vAvdiZllmb0omtA7L+Vr2lR+IVNA2T4E01ILB9C3t6uJghtZOxvmqAhkQ0RPhDb8H5uimCeudgeh5W5Rv4yCD48NEWVDWKLjsQxqoOSnpNGeZDYqQQpJXa5+7yellI1chImFLvWOTEJdreDv0gZArg+SXeeitc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=C84o6Z5X; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="C84o6Z5X"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CEF55C2BCB9
	for <ddprobe@lists.linux.dev>; Thu, 10 Sep 2026 02:30:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1789007433;
	bh=qHX8hFKfHVUSEgNWKmOHx42txolshInFYqRx9DorZwI=;
	h=To:Subject:From:Date:From;
	b=C84o6Z5X2UGF+J7Vdo50E3uYg/EH7S2xtxrpreS3u1WBzh/ukqOBxeqBoHAOKFgjF
	 WGj4+z/gjqhrqjBuzQrB918HfLVOf6hsC3B99em8RRBIBifdbrhDw9jjlXfEAd2QXI
	 aQENVIm96QyJWR8Fjh7kqMSaRoZ2lYDMl8ZjjRu+zxQifM3h3nPmB3tEMJtoPI7lhM
	 R2F9bzIKnX9RFG5E/EAoebmhswmE6RYh7B2g/La5Bi+lsXFFxXzAK+1eFGcF9IPn+1
	 ms8kN9UnMg7mWTguA2HprTJWNkOzMOIpgMQIkycnhLnhdCcSX/IWT68USjkbEa0hpB
	 0WyP+F0r+i3KA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AA6DEC79FB6
	for <ddprobe@lists.linux.dev>; Thu, 10 Sep 2026 02:30:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178900743369.8064.2736928783140313746.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: c6929423cc55282da17841b85393dd12cd64c85d4a39fdc9210a58dbe87b6741
Date: Thu, 10 Sep 2026 02:30:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1789007433
