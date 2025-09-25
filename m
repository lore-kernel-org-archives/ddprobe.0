Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 104922ED14C
	for <ddprobe@lists.linux.dev>; Thu, 25 Sep 2025 23:29:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1758842994; cv=none; b=WMPegGiVlCGzDKIRaPiCaOqGqdhqK1FGxb0uuqbd1DGeRyJHTKPeZg98VZ3wUTrv9rRaJCXFtbMzcHsVtdJdgbxvhcHBSgF0KcdB4HCFL7FTodNwMt4JVJbNEWvvHXcp1PW/NLfM0cvlm55ItjvHZS6ZwqLiRhpkp0N/Ko0S1Lc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1758842994; c=relaxed/simple;
	bh=6rN2lMcIhfWqCJsakBP8L/uCPANu6N5m0zQWCewZexU=;
	h=To:Subject:From:Message-Id:Date; b=CJ4q0YNH2uha52flZ1qSG35XLvzlMPVIuWyTL0ln8RtupMXx2dKaHs+OrWL42cSdfcRsFEAOR+arUmYydx/h8YWUNCBrNL7zrmPyhgqO+KvNg4hw/335mVXjn8GrkqfdmHxJfGIytbIkLV58HlSPptJwA8k7R2115OF45LHyQDg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=N3ZlWm4g; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="N3ZlWm4g"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A2C63C4CEF0
	for <ddprobe@lists.linux.dev>; Thu, 25 Sep 2025 23:29:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1758842993;
	bh=6rN2lMcIhfWqCJsakBP8L/uCPANu6N5m0zQWCewZexU=;
	h=To:Subject:From:Date:From;
	b=N3ZlWm4ggC0V8i3guLdmhcMBcqI9pwg1sq9DU3dAPsb/waY1jCXLasv7homL5aq8m
	 2iaKsJ7lge6QmpdXs6IdnEHaKQmlgDZubLxvwXD8064rvxdRQbfYRSR66bJPrHXGIy
	 S1KyANadvhpB0QT5HHPzLHHzeAwSaP2KCAonl1RbbE24K6vC+Vibg2L4Er9SE4k7sw
	 5wpSnDD40/0cmI3yhpy+RCtuyz5eo04XboQI6mWVaqTOsKD2NkZOJyANt1aN43kbhp
	 DAFKTlgo9HmBbRslNshcqaq3o1kFzQsn/N2YQ6p6XmUjT/Z9CsL5HNAJqUpuE45M17
	 3eStHChbPS4GQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 92D8FCAC5B5
	for <ddprobe@lists.linux.dev>; Thu, 25 Sep 2025 23:29:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175884299358.32292.7928309078800243906.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: b840b62e4e788a8b8c1739d58401c3e1e973abc38d8ba73782705525efc01c59
Date: Thu, 25 Sep 2025 23:29:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1758842993
