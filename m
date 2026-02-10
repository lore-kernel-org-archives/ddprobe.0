Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id CD7C9331238
	for <ddprobe@lists.linux.dev>; Tue, 10 Feb 2026 21:23:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1770758633; cv=none; b=C1XqYub7OKBvAldlKjXBRN3Rv4s1Kds5byRzVgMdLJQZ7ec0UO70hX+vXYegSvFD6r/NurbOLV20S8aSjcDtmn4JlrFNKe+O1msFFO9B/KJTD64jkQLP6vw5Tr0zttYCifHT7CFiMcHwbWhLXLS183d3QKuOMO4cRcHzo498p98=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1770758633; c=relaxed/simple;
	bh=AGHLuTpBmzzwgnR38VwzdJq3EP+i+svy/3i7ka2tzGg=;
	h=To:Subject:From:Message-Id:Date; b=qKH2dABsLcFB7HUPAty8iBrKvxOpAMe19g9HKv9szlGaPjzxstVFWLAH5a48UUxb4qWaJTp1T4BYnx7QeWm3tZlCkjOQWye7zLskaxF3ryA1bTwWWaKLbJJ8QrVx9t1SHkwWrHnndguL/1ZSi2GbGz9lNUyna3bDaZeZVAqu2vI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Bz16aS1O; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Bz16aS1O"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AFBC4C116C6
	for <ddprobe@lists.linux.dev>; Tue, 10 Feb 2026 21:23:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1770758633;
	bh=AGHLuTpBmzzwgnR38VwzdJq3EP+i+svy/3i7ka2tzGg=;
	h=To:Subject:From:Date:From;
	b=Bz16aS1OxEiHcl7lINGeg4lJm598x/GdcvZkcGLrpH0eSZYpi6veTQrMH1sb5nImZ
	 Pw15uOR+XCUbw0pveY1r7XnXUBaUdkfvHVeJ7Mw8TD9X6jErjmhifwGiQX5lhL4/1H
	 HXZ8mu8TotdljR2xfNDh6SRow0g6uLKkDGNfuJiasWhRTdRbwjiRniaAJa+pFw2jF+
	 +3htJWs+NolFjtQB/xiPWTiP8BfeArs2Up/a5An5GJkSisXcfid1Yr8tiEr5Uwc5Xt
	 MyndfX3fNCLOshPo8UxpVUDnDO+ajlJ9M65F8/ElTggOCyONogdAyqG/dzt8ChtCMh
	 m5+h1q+b5VC6g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9D311EB2700
	for <ddprobe@lists.linux.dev>; Tue, 10 Feb 2026 21:23:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177075863362.32342.2855447623057366685.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: f92fa4b727e116379f9e84cf9500150932d2bb6850c2e38c4132cf02f4de65ae
Date: Tue, 10 Feb 2026 21:23:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1770758633
