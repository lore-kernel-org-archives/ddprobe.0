Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 40A5BEEAA
	for <ddprobe@lists.linux.dev>; Wed, 19 Feb 2025 20:18:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1739996334; cv=none; b=MH3zayPPGMzXbMQBx1DeYAoDH53OegbMW2yGTExOKEy+5NT3IfOZEFnr+Q/6J5QezmDuQi/44ig/Mq5jPrsH+Ft3K9jWkmLjwp8cmQblB1XC5/5aWCzZsh7U/Io+545g7lDTcpabaIY3S2nVKfKJISaUJT8CEgUAxe8Y4ZW/sew=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1739996334; c=relaxed/simple;
	bh=4DNVNwtact5y1YTch2tnXUQP6Phi0KAbDxInR9/jKBQ=;
	h=To:Subject:From:Message-Id:Date; b=eMAfFAXWlB2LLBvk50UlWAWXrzpuU+pygTMhW2oqR99rJGQ9wVgHnLZM/sWjT5oNXPuyF21mqy0TZD4jQZJtnd/UWexVcdfci/2X2ckxQuWS/JN5IUgzagem1AeXIjAjAtueaRhTqrNKKaEcy1D98dUCV4VhW31h5pW9gyMtuC8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=afHWNzzF; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="afHWNzzF"
Received: by smtp.kernel.org (Postfix) with ESMTPS id BA160C4CED1
	for <ddprobe@lists.linux.dev>; Wed, 19 Feb 2025 20:18:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1739996333;
	bh=4DNVNwtact5y1YTch2tnXUQP6Phi0KAbDxInR9/jKBQ=;
	h=To:Subject:From:Date:From;
	b=afHWNzzFgHT10qs/771PsHrTcXVPU38bsadtIj7Vf3A4uipPtJEyAqJ4b/d7aR1jj
	 fwBADV5w+qW10FT/JuwpW/tMBVvw/UBx1M5fcxu/9+SvD8QqCNyucrqTwn3AKEiwzp
	 il+rPQZ1LTFxYdwA/3wmXCBV899977xfouRC9+EW2ReSDYjtE7Y6Y6TJUZQaXqdAda
	 NM5cdqDVeCOTwt7k09b/+FqI7+WUutKmuc4SpI4qTtFXJAbtc06Fb/MwbBXxMX4NNQ
	 gdZ/9Bk/BFRJ26DaEyX4q1cWLPRQBm8gK2DEY8bdVWxm5NLMhANqT4pgU11DF/8U4J
	 4PzfGlQvsQGvw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A18FCC021AA
	for <ddprobe@lists.linux.dev>; Wed, 19 Feb 2025 20:18:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173999633365.8355.8248270648949550609.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: baa2313ac948808d89e158ddef497069f4128003bb598abe97c622c4363393e8
Date: Wed, 19 Feb 2025 20:18:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1739996333
