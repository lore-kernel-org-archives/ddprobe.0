Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 40E6136606E
	for <ddprobe@lists.linux.dev>; Fri, 10 Jul 2026 13:38:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1783690714; cv=none; b=GutZO+4H+9rCyojQJ2Rx32faCTiljM0BFTRk2vW6CJ3DxhefXjeuz4Fafsx/wiX1czcTH8t65uMysUHbL6S3Mt6SZ8B1mW5DbsKyzZj8g/mS794z2i4tf9M3DMc2pwvvmIQVyrqfmriNo1TdXvFt1jXYXghmdYZUa+yWgVXMD1Q=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1783690714; c=relaxed/simple;
	bh=un+F7iuYCS0SUpXSl6XOcfhk+wp8F/yDXipuHM7M2fU=;
	h=To:Subject:From:Message-Id:Date; b=CH6Grr9LsJ0CG90FyYsTPLuYYmjLeqdPRTwyfsX2b0aGjbbai/bRzp+s+lKA2nIpfzpz4Qh03FVaAQDlLtY3QhniILiu3QIiWkSKI81KS/x9SxUPQ93VtaY1LWbLlaWBpz4HvRa1gMH1ukOSLHldTXszZusiD+BiQsytbLJjhKY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=XaiNpZ8r; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="XaiNpZ8r"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CA0ADC2BCC6
	for <ddprobe@lists.linux.dev>; Fri, 10 Jul 2026 13:38:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1783690713;
	bh=un+F7iuYCS0SUpXSl6XOcfhk+wp8F/yDXipuHM7M2fU=;
	h=To:Subject:From:Date:From;
	b=XaiNpZ8rJCz7aBqf2ss1/bjvEO8iDvWSrlzq1Fj/8HtbhZ8PK/zlIBBgE/Z0cPd6e
	 KtSH8aNSxdKKvj3ghBvXLG5s7fX6+Mx4EizPZmz0S/cNLtb5phh6rA8G8SGYNVyKId
	 XUuypofqlSZPH2PIO6XdhQk9ctZaTbgoajIEOg8FQat+gbGnnMW5qrmrJanypKPVwo
	 d6qosVCarO1+tdtJyO8hmIqoV7lhcWLm7cfB+K6+hzghCUmYgXW5VNAeHhPJqt6Y2m
	 AObfeu7ikRJFwp3RnG8hHncdhphlMfPoY74/kThXqfAvOUp76obBjC3zbQXk/sMo6Y
	 qu5l4UiWGRKBA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A8B31C43458
	for <ddprobe@lists.linux.dev>; Fri, 10 Jul 2026 13:38:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178369071368.11086.6858609142125831413.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 675ead7cf7729bb4bc2e13fadfe3806435078c4f61bf25687284107db4e88bd5
Date: Fri, 10 Jul 2026 13:38:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1783690713
