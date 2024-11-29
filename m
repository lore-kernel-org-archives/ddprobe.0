Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1599715AF6
	for <ddprobe@lists.linux.dev>; Fri, 29 Nov 2024 16:45:54 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1732898755; cv=none; b=mxTKg6TKiFnSxpiNxLGLkI0BGsI84CbceBJt3EheJvDACOvZs97NjVcUWnzUBYnRNOdmlKz6pcF0DnDEICNBlLiGvQ77Nvy3MWQNXLrO+ZpZT2cbolenVq8speToRdk7VpGAbU7x8hnh50WevRpIKkWK+1pnMWCR4oHtQRDvwEE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1732898755; c=relaxed/simple;
	bh=RetsAOeor36SLJOHhVbg10duCrQ73g0mQwjsE3gypcs=;
	h=To:Subject:From:Message-Id:Date; b=am24yojmu6E0hpRfhR3X6yjrzeZWRMBZLIAlLcwoDGIJtK6VxG88ehoUnt07vAxcwAY8h/ciLESbMvwjNriXNqhEZLa0uUSDQ5/WPWZBqKRIhYxTe7XuwKtz/yT2Fgf0k5qN6CpMv775/Hxa9yqjFjekQhBHUSyDLvLVwzlUki4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=HQObFjhg; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="HQObFjhg"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A5BE8C4CED2
	for <ddprobe@lists.linux.dev>; Fri, 29 Nov 2024 16:45:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1732898754;
	bh=RetsAOeor36SLJOHhVbg10duCrQ73g0mQwjsE3gypcs=;
	h=To:Subject:From:Date:From;
	b=HQObFjhg1VHDfrkaE/hwCnFQK8WVwrrGoI0MKrx4HS1JI1SsLbADlh7To1IwGqh6d
	 X/8jrP9iMnfMbLVM+eCwS+im0YTySsLNc9fpr0m2/d8GeqYD0ngdvtOF8STPIo4u1c
	 AUUkMavPfuWIyx8RD+uo5vgfIvJUHvH46wxgyo9qgnOU58kgdpTuPNj2M13kM4wpNM
	 y/ZS6h1FeXChegT4UjjIFqpOuEYb/akUcmKuhq9J8RX1U8AYgJsvOPvHq6bZagaMKL
	 Dndx6aemj12fCKR5l/lQUX1Jr6gH0nbV0VlCOcd8DlyTsUochH7hOGwxJGh9G8bqBw
	 EEgC2in0WxP5w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 92861D729E7
	for <ddprobe@lists.linux.dev>; Fri, 29 Nov 2024 16:45:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173289875359.29294.9095287175602616914.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 0a867f410c1f62125da84691c4a215d56fff17f07d7472cf5748585fc4363ef2
Date: Fri, 29 Nov 2024 16:45:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1732898753
