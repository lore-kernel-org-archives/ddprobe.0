Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2859D38F929
	for <ddprobe@lists.linux.dev>; Mon, 18 May 2026 20:30:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1779136234; cv=none; b=R8sXwYfXRIpRguo3ca3LnWSMP9C33epNx15M15LhwzHAIF87URWnfZu1Ku9USakkj0GGnsJ/3oP8/OwZBXKiv51k0lJODmsIiuo6Uu++L3LlfV2BMOV20kQfQzUzd3iwBCgUn0tV4PV6QQnqG+tgTGLHZlRvb604kcan6/OjRis=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1779136234; c=relaxed/simple;
	bh=y5e1t+rytOaNzwpNqtxS4g6Dm87F232wOMFQXDhWv78=;
	h=To:Subject:From:Message-Id:Date; b=JiOLsAUOm0ZNfupF1tXCmRxlEW5nFEakohAee/XBQ1/x5AT6x3kAImXoI+/CYX2MbOTmi0VBUcGLRvvc6qQgYRFW2hFSG0KdPCCL1sWMKWYtmK+KWKZsfqRpapCn6U/gqW8xRnutqEtKaIgLtcWOvFcfvMZI6JdHzcEBn1B6/9E=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=hXxMHvwC; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="hXxMHvwC"
Received: by smtp.kernel.org (Postfix) with ESMTPS id BE1CBC2BCB7
	for <ddprobe@lists.linux.dev>; Mon, 18 May 2026 20:30:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1779136233;
	bh=y5e1t+rytOaNzwpNqtxS4g6Dm87F232wOMFQXDhWv78=;
	h=To:Subject:From:Date:From;
	b=hXxMHvwCw8E9O5/W0hAT2uxD8VZWbtUQZ1epbYJAdwxt4/KecmM9ebZdPP9TVfnR1
	 xd+DG3Q3KCogqLEBxWcjDNmDG8qSUaHZDv7oQdL5lHbmM4jW0oD2+QXjITQ3XUWlgz
	 Ja+y266TdyZtFFo1Qz5wSWl/HRd/uhI68J6imAcQEV9Bjz2sPOqY1Tbr7GY9Dj3lVs
	 seexxeGB10YcKUCQPkYmFFUTlCCSufg6m4IYEE6DK14SNb31IODe3hpbz41sBlyqhw
	 DiWCRa2+wZFNF46ykKpDoK1TKi6qDVC3q4wYC4bSYns3UMvICAAugB45SYulvrQ1M2
	 4TVvVSbHhDVkg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id ADE37CD343F
	for <ddprobe@lists.linux.dev>; Mon, 18 May 2026 20:30:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177913623370.2643.16138948667796898420.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: f3899bd665b1649b77bc7a366b21cc9677ca4059d93e3a45c74ff4fe275b2b5d
Date: Mon, 18 May 2026 20:30:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1779136233
