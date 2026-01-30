Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 01D6731282D
	for <ddprobe@lists.linux.dev>; Fri, 30 Jan 2026 14:23:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1769783034; cv=none; b=DLHC86cdhl4Mu9krUVaw6V9xvaglVL92amFa42Mt8o+ggL0lRmz5s1hCajGsY+LcoQD6HMKCDeCJSmewH/dwCEGtfUK5WqlxI9UYH1t+IN7UBF+JFP5XQJFV/U+hDH2kqH6wKNmwkmcTfBgUINlbFp4EDTNPkpesTPNX/6NNnIs=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1769783034; c=relaxed/simple;
	bh=2pL5VKBlIQW5cE+tizYlaykwKMC2+zP/8qKHY64E3AY=;
	h=To:Subject:From:Message-Id:Date; b=iSHAyk/YIkftvCwoLNV8NmDpt8fugPAc13aw44u/m4TkW4IR+LKdzsPgdsU+K9OLAZm5yi9BAjT7IBEh/hBeDOpjjU61ZBsFE9ue5AyBILV1lpb2xUgAr2xxYz1K7UaUe74CTv6+l0zd9jTmH6FgcT/OPv/7wmWVgcRExatTh2g=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=QwUkVif7; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="QwUkVif7"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9F4FEC4CEF7
	for <ddprobe@lists.linux.dev>; Fri, 30 Jan 2026 14:23:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1769783033;
	bh=2pL5VKBlIQW5cE+tizYlaykwKMC2+zP/8qKHY64E3AY=;
	h=To:Subject:From:Date:From;
	b=QwUkVif7jLFL6hhp/XhmdUEHODBrCK8b+HUcr97Qxl+JtshRVyRNsMBvbu7eQCBmC
	 o5XS1MY0TTnosGXWiNxasQoVfJQBsuX1OM13V4SSUa7wCeRFzD7P+x2LuRGytUoVQo
	 NdTzJg9oulM/2fgPWypEBlmF3l8tDY4pmC+ABfi6C8MM52qggdhbDuia4rW7Y8T0Xt
	 glM74kEZzOMSsOgHbE3QK7MjhDoSAxKhpVv+9lFq+T6d+DKF9ZhBIVlQ+SuzssUP69
	 eWBpxqWS/PTD7VYN0a9Jd4kVhDud4+exwyGHuQEv2KA2pE6FvtRj4aWy5HkK8P6LwP
	 YUsrICM57QQFQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8FCBFE6BF13
	for <ddprobe@lists.linux.dev>; Fri, 30 Jan 2026 14:23:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176978303358.16668.17809732136326995694.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 143474e5516e5d16245dd2e9f79675b1dc2dc20cdfb61aaa581b959fbf22a4d5
Date: Fri, 30 Jan 2026 14:23:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1769783033
