Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 244B5274B44
	for <ddprobe@lists.linux.dev>; Fri, 12 Sep 2025 04:09:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1757650194; cv=none; b=Gta588CSlkESVU39xJf018AejlmGOrLcCRFmiWjzh6gc0kVkKbPRGNiWWDdbuwiNkRIfPjhGiOUvhqkkjSUXEvxGssDmO3jTbVpEBFfr4KD92dSPhiB3TfNGHJUoKuJUlfXt90DQLhSGbwWpxmeZ+fo2G6F5w+P/XNu8PEKWNM8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1757650194; c=relaxed/simple;
	bh=x9snjYlCPQL0BIme4k/iSyZZyq9s9cW+2ugTUbkdcxU=;
	h=To:Subject:From:Message-Id:Date; b=jHXJcSl1NuLnZPvi/EzvzOSCddyicOohUlSaAgAmdvZ+OgwPlILZW1E9lapc06KwEN60nmxQxg0R2PHtQni5gtQpXw3Q/I6v7OlladdyH+db9VNgw+50GqpscUrG3fBe0/yKrzhOtFDwtKSA1C+7CyWGWYHAKnDKQIIn3jiqDn0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=XBYhZWPL; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="XBYhZWPL"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9D51FC4CEF4
	for <ddprobe@lists.linux.dev>; Fri, 12 Sep 2025 04:09:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1757650193;
	bh=x9snjYlCPQL0BIme4k/iSyZZyq9s9cW+2ugTUbkdcxU=;
	h=To:Subject:From:Date:From;
	b=XBYhZWPL0WJNK4/ED0lzBVpru54WvM1CNmeBugau/WCdmkuY12yyDn/fy+WaUsIRo
	 B3xGfY1wPMZpnlQUR4dV7kMFCcxcLU0vmCa0SZL/4vw/ekh8dDakpN0wEYpBdE/Zft
	 3X3oI5Ias4IZP3hG8Wis78tCaE3CNzSa3Cw8A4zTKaaZNEqnGTeH6JDROvoqNGGM1W
	 xVub4TErfm9vrVndVlGWB2txxIVFnwTFVS6oF27s6rb4RzDRxSxAD/8sJkxfjhfhy8
	 mvd+ocrQwWc3Xtd85Agl0iWmgc/xonr5UCFQwvAzsfn5M5x54NuqJL7VVDOkCGdc/9
	 mZVMOAIjkI3nA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8F8DACAC582
	for <ddprobe@lists.linux.dev>; Fri, 12 Sep 2025 04:09:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175765019357.19916.8147833071526687294.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 88c52e9ba8718b8d528d56269365d3d112a945c32d0f42f58700a465e9050c2d
Date: Fri, 12 Sep 2025 04:09:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1757650193
