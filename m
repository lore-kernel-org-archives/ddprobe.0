Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1F09D30B51C
	for <ddprobe@lists.linux.dev>; Fri,  5 Sep 2025 17:09:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1757092194; cv=none; b=OFC/6n0y063lrYCREtrgCpPNijBidEMVJ+fmvu39iy3lJ1EmbZaO3Yva4vw9MFckD+NRKFbcdM4HKZXX6FKJmOtHgDVNz9UcJtg0dxANAsWy96woO+bl/k4Va4MkvcYCRjx1xiDVFN9W7njlwdqeYLonFebs0Y15Xf/3sL91v4k=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1757092194; c=relaxed/simple;
	bh=IYeB1Gj+9O3XzYQWBFhOlru88hF/cSI+RFBDZ1jbPV8=;
	h=To:Subject:From:Message-Id:Date; b=aWBSB5GlZXuTlptBU1M7kyzeOI07MipLiSu7JS/Je55DlvHGQuzDOtGUmfiD0L8lsPOOW3UynHebln8EI9WJ4RT3jeQtV+lhss/k9msYKO6BztiULFqXvVV4CB+x/xmfPFrCY4cqXjhB/0DlsWE7VbRsoqtL37WFhpYer+2fOe8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=JnjJzJy3; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="JnjJzJy3"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A7429C4CEF1
	for <ddprobe@lists.linux.dev>; Fri,  5 Sep 2025 17:09:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1757092193;
	bh=IYeB1Gj+9O3XzYQWBFhOlru88hF/cSI+RFBDZ1jbPV8=;
	h=To:Subject:From:Date:From;
	b=JnjJzJy3HmtKBSgH8XdyxDlGQvITctxlnlMJ7O24HLPV0o1HV2VmwgGATSI1j804C
	 ReaWZ0PFoR8S1L9rblY6+GeNmUIP6tBVnIN5dYwRxJCVDQO9nk+NNNHQkaKiD+0k5R
	 kgJeOZAjfXCPZ3qajEEPG2ES9srFUpFXVN9sZJjToVd6wJQXJQhRc+2Pjc360daRqC
	 OfkISkqsnAkpDg7DCRkogwO4G2xqa6ARcH0Zu8T0Kv7LtIAkOOIoBHaIsm+PSo5Uvg
	 NGcu6Fm0BnVv3ehqSqnqxvUZuBQYjahy9mo9xMgQe0Y0FG+4ZbZ6qfIop9Y+VRAW/w
	 L1QXaZBBumbVg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 93937CA1010
	for <ddprobe@lists.linux.dev>; Fri,  5 Sep 2025 17:09:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175709219358.16997.7063464961685139490.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 2400b0aaf6210685dcaf0d6bafd0d7a66e614e46d7a756febdd06e227ec397c8
Date: Fri, 05 Sep 2025 17:09:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1757092193
