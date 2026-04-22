Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1405826ED25
	for <ddprobe@lists.linux.dev>; Wed, 22 Apr 2026 04:27:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1776832054; cv=none; b=Ll2CcNyPICydK8FQrDDONXFTUT5AQQNclVi6NKsSzygchSXUTL47JejCP0a9ou1BcfhHZtB+SA1gnxZnB4VHdkX5qFoHnAdE5pKBNlb4L8MyYfpD8vVXJPV4UHubYZM/HdTk/8YPItMd6DigI9U4qQ34ipHtq5h84etqPn7Cao4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1776832054; c=relaxed/simple;
	bh=jW4LCCSng6RK9aQBCUCDaJ7bFVXG+ngErFhNNvU+2nA=;
	h=To:Subject:From:Message-Id:Date; b=IkGEYUsWOFkEvtmOW1NGkbCwwsaRfB9kz5kDUDcLx/UWiLAFFpH9Udjf6lENPk4Dv06mHk1ql6I6T7vaYdQEQzxzqu2n//eVtf6iVRWz9mUPwuSHD6BT+n4vrJf7VV6FX9ZIrmczHUJd6TkwuhtRQHBbcEBiRYB7UZracjIPa68=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=acvKEDig; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="acvKEDig"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B7E28C19425
	for <ddprobe@lists.linux.dev>; Wed, 22 Apr 2026 04:27:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1776832053;
	bh=jW4LCCSng6RK9aQBCUCDaJ7bFVXG+ngErFhNNvU+2nA=;
	h=To:Subject:From:Date:From;
	b=acvKEDigqeTTCGb1ZpeDTYmx14gEBbbe990kaxjB27XRD7/x4YsRgPgkq22FSiCU5
	 pKkAMy9WGgGyva6GoOL3PWje8XkzkfxomPnY2TIymRvKvEGluLOxItQjESgixPqybT
	 vrmla16BinBaXaAJ3sPYXTTMiEbArSgLjv1fGQqlQEjNdxkhqz3qvfoXtg4ZmqdacD
	 9YaQuN9gfCZWxDok7gH8VpeQ1fYJynGQZV1CNqj+PTcMTvbuj7n6/K8LrYhnJC5B6y
	 zeu/kmd+2YZfO57QzHfYD0sD/RhkAbp6tULj7X59WTzE80uwFV9LHwZHJwZiUA9hg9
	 uRthCGyD8sh8g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A9D5AF94CC8
	for <ddprobe@lists.linux.dev>; Wed, 22 Apr 2026 04:27:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177683205368.14089.11706322927916063713.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: c6feb4719f96ee099784fabe8bc08918fb43102dd027051c06396012ddc42a44
Date: Wed, 22 Apr 2026 04:27:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1776832053
