Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4FF57384250
	for <ddprobe@lists.linux.dev>; Mon, 20 Jul 2026 23:28:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1784590114; cv=none; b=mLOBLJZzyehVqlQvO5HhvLh3RWxO+KMsK31LDrYzteKfyfBChCvESUi29j0jfWiQyHuYvBQ1qG6L1LWSbSU2KYcloipyHK9T60CEKgWre9tNncytkqcVzgTt3F1Slu6/11jjAoahPiXRE02NgYqJg4w/KRo40C7YLNRzF0ewF9o=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1784590114; c=relaxed/simple;
	bh=2c1g9p/NCWiUir2I5GSM9z3dBXsTohyQkzsC8dp6AwQ=;
	h=To:Subject:From:Message-Id:Date; b=NRu9iCkyAoVKtmPlE4ehvUtl+yL+YmZGPFj8am7I7t1L63RPFp8hH4iQFs+d+9x7xN0oQV4HIv2zXlldusCsAQsAtHywb8WPZaAj5fsqiDrE3OFTSgaDzVIFLnM8UCaraeK05gHqVEoIOzkQSwdOGbCwLPXz02UsKrQGVtr2iv8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=c9kCbaUu; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="c9kCbaUu"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D2300C2BCB8
	for <ddprobe@lists.linux.dev>; Mon, 20 Jul 2026 23:28:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1784590113;
	bh=2c1g9p/NCWiUir2I5GSM9z3dBXsTohyQkzsC8dp6AwQ=;
	h=To:Subject:From:Date:From;
	b=c9kCbaUulHh+XVn1sBZdal6O9PPN2xX7uB3YSCC4W4vcWC5IgB+mnH03dTXcTPsyG
	 Iu7q/bDOMirwgTZq3V6RZYtiu44+1sLe9ibGUeiGeI+nUSIQp+SyeWydRRPbM2SuMw
	 bSNJ5qBBeTxGa+XPuJlLw4B7yMeokwd7X1qu/BNZBq+hGDhYr5K5bgEScfo5XLUJGM
	 Vhmhue4y8n1ulndfGAvmXDwweMAeBpKPoY/3EgsUcfkk20zNDxNTU8UaodSNME4nfn
	 c4ku9MzEodhA/8f5AYk71sXx2PdnyRqS+Z/jOKupgW1U4v90r+/dZJo+XZ3z4QHqgy
	 wCes5ve5l6KmQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id ADF97C44515
	for <ddprobe@lists.linux.dev>; Mon, 20 Jul 2026 23:28:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178459011370.6696.11938783160439049124.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 389c1c7f02775f5f9e32bb49bf77ee6e68ee96049332086441f93466d8013a37
Date: Mon, 20 Jul 2026 23:28:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1784590113
