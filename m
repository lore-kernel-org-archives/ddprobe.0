Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3F1E12820C6
	for <ddprobe@lists.linux.dev>; Tue, 22 Apr 2025 13:39:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1745329194; cv=none; b=pQtnltHZ5Pint8Q4rotwf37pK6iVD6SKC3RkVPBOnkzT1lA/HD3kpoEyUAx2ov+enrVNKHNlVsWa3mNcvBuFA8UmwpYp+jOWW1HU8I7XRAlD/HM0aqCLVlytnHJTWnQYHvWpnDk23DR9PbS5DqdAoHrwqTMTuj0Xo4DMvU5rX9E=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1745329194; c=relaxed/simple;
	bh=AL4wWhesmxJ6/6DH7QXAu/RElr2u6Iib8pcoFRe8VM0=;
	h=To:Subject:From:Message-Id:Date; b=hfEhY4/xFzDGwlZt6/qvsjzAJJY3KA4LyQv9ZE8AWK6kRziAPUB7qvY2Wl3+M/cSp0KOuE73VAQIYFsbHAI6FWDfdSdjv7y1wLt5qAGbxxpy1/zLsL+EmceCDd1d6B0FIXs/6HCbuMl6/JJLYOTT6KGwTe47Hj5dVsNurtaZkzs=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=rZJ4ZdhF; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="rZJ4ZdhF"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A8D96C4CEE9
	for <ddprobe@lists.linux.dev>; Tue, 22 Apr 2025 13:39:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1745329193;
	bh=AL4wWhesmxJ6/6DH7QXAu/RElr2u6Iib8pcoFRe8VM0=;
	h=To:Subject:From:Date:From;
	b=rZJ4ZdhFYt+4Z5uuGoXDow283k0sAdl/vfbY+IuBzG/nY+3AlKi0mRxfVfZD412F4
	 Ge8VY2v/kq299VB/XvL6c4YEXF+7p3hF8C1hI1IoXtFVLzCS8nVz2Dv8YvcGixQrtJ
	 sxMOkATTyM7kL9trYEC7r/dg2j7z5rNsSppdqdDNRN5pvVKAlNoXsLuWtpv7Epd6B2
	 2g2QPZ/U4NpfH9MilBrFjpd1tomMd2pw3StGecxzr0IS3SiCN+1IyqAiXrk/42vwUT
	 G0HRS+vmv80B6wNGOmU8sODSiUwYoOVtH9hpFG9Tr/wFmFU1ee7U4KRr56T4g1CybO
	 rKL183j0G8e6g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9760DC369C2
	for <ddprobe@lists.linux.dev>; Tue, 22 Apr 2025 13:39:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174532919360.19481.17967937869088419182.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 2351cd61183d2f6103f2d87d974897df0a6b5ea0aa7329f1672adcf11d46ead4
Date: Tue, 22 Apr 2025 13:39:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1745329193
