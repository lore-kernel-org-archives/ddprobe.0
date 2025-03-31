Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3EEFD155725
	for <ddprobe@lists.linux.dev>; Mon, 31 Mar 2025 17:29:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1743442194; cv=none; b=Uh8quqdRUb9hQwOodne1IexTNyRCDxaagXKeIK7fyGucFW2kBwgeJZD6na+GH+hrMBLcsFa4OT7scn64W+QI6Rnc3b1SG2KbEG3jxwnS6TwqGrt/PfTNmcuFhnQTowCRvcdpNFvDxdwPba+SJan9LufevwO3+vXylCWz658mGBE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1743442194; c=relaxed/simple;
	bh=g6JLyiuO8YCUdhl2YPLKSK+XySrJvQU04eCdJrOQU6U=;
	h=To:Subject:From:Message-Id:Date; b=q78d/qGmtHzzPr5pNDeWq4lrL5IPKyCCBbYyJJ3Ci0eSmAAYG1NHfoabSN+u1FRQahBkbRuYaMPlfNXvF43VScVrGTxVuPyOyQPf5Gr0nYfXkZvejeO6OQycVy9LEshGksC4S9xvEGoBwjjps5+SyG/mj9kJeDYlhG1tX3I369g=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=S//HyIwR; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="S//HyIwR"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B0DB8C4CEE3
	for <ddprobe@lists.linux.dev>; Mon, 31 Mar 2025 17:29:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1743442193;
	bh=g6JLyiuO8YCUdhl2YPLKSK+XySrJvQU04eCdJrOQU6U=;
	h=To:Subject:From:Date:From;
	b=S//HyIwR1SLAXNUXNAXwcTil1mWusZhbMb4cVL1aXsnRKEMlfuWtwbwX/sWohad6G
	 5yGjAusjYX+mS8db8PorjsDpG1NOSazbhHjUajcu8HSG/hbejLcFZ1oQy15Tz0LpoS
	 00NPMpvMoGPr91vL12h/D4Cp9TE9c4zwu5YaPFnACBfoq3FKKxhAZ//rgQQqhzAVJq
	 8IvpcZBL1zu8hQ6EAGSsYI4kI9A4TF8Tg5hyygFXKrunpK8imq91AQkqLdCX3b95g1
	 ANEe/3op5Nv9HBRh+2bQSJ6V36d2hvK2Cw2pFHhqP7B4nXOLVV4EUq5Nh+gCp+VCJS
	 8N/iPyvIFb04A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9600EC3600B
	for <ddprobe@lists.linux.dev>; Mon, 31 Mar 2025 17:29:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174344219360.31554.8871354459367583668.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: e3d812e1235f96a955aa70a205334d03cff68b2cf69e27dfe5d8aa9e116baf82
Date: Mon, 31 Mar 2025 17:29:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1743442193
