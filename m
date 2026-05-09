Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2BE621AF0BB
	for <ddprobe@lists.linux.dev>; Sat,  9 May 2026 02:57:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1778295454; cv=none; b=ACx6fPWnBQEtZibxG4bNRqdcAq56EZQuhO+tXOLP1sSfHkNuU9dYZIlMyAmDfRKtzd3gLMnCMPgrNRJ7oIYsqAEQHlmr2CHw8H5oMJ48Gv6eSSg8NRAL5lc3Enk4S1U1H0CxEE++qrIHkAAs+hc3+8jm3urOZhu8lNzPHkHsOFk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1778295454; c=relaxed/simple;
	bh=FbG63o5/aq+UnZjeP8N2nhL3XgIPUE6nqoY70iYhpxw=;
	h=To:Subject:From:Message-Id:Date; b=UuH9BqjQxyrXkOWlVEoLaNzbcI+tODhZNewP115M7gA7K1kciSe7vIGMEAymUR8LV7G0JtwuwplYpQdUgYJFgpDd4pbypC8QOPn4D5d4csrH+jRxdrlsK4x82xIoK5pzBX5PrAcaMZSQTnOZIwC50X8Iz78c9arOieuPfevDEt0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=WyIsmBRh; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="WyIsmBRh"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C1D5CC2BCB0
	for <ddprobe@lists.linux.dev>; Sat,  9 May 2026 02:57:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1778295453;
	bh=FbG63o5/aq+UnZjeP8N2nhL3XgIPUE6nqoY70iYhpxw=;
	h=To:Subject:From:Date:From;
	b=WyIsmBRh1u8emDgzQWCmTUzmKKGOQTWJexaRzsLDz4qWT/GefGn5P9fCMNsimJQhh
	 1WhDHjEz+brpk9VDtZ1fXTQeMgmR6BFR18MVDnyOeCIBQZRq//HDEZZ+zImrEdjPgQ
	 fIil9fplFF/v44IAzgmwUIRzpON1YhZmGxa6ESXiJJqN06hMYol426h7jbXoBOL+bK
	 C2U2JPcMk70JiFFuq7mRLxeVam+o2Jc5RxCgS5brh8hdiUV+UV8zBYbHG+TivJS6pY
	 WnXFe7q/5f82AWXY+/sxfH7+vdz1dqxhMHM5G/z/4mzvxcX3EklJS8oywwybdEZMSQ
	 4svwZXrKA5iAA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B2145CD3447
	for <ddprobe@lists.linux.dev>; Sat,  9 May 2026 02:57:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177829545369.10286.285555024978489346.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: a3db4901ee5bd93b57726efe6da4d98cd3350d45527969bd344607280d43ed84
Date: Sat, 09 May 2026 02:57:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1778295453
