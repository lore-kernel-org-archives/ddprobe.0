Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 18F7F2D7DD4
	for <ddprobe@lists.linux.dev>; Sat,  6 Sep 2025 22:29:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1757197795; cv=none; b=i6YBaybg2CPNdD7ctrwCZM8SK4Vx6vez622ykYx2OBqzesd3lndsLc9ssqI78IzMsIz1MQU15QEw66v+QMCtXh2ldCZmwlzoA0JNjzkTNxcdFNDozRbP9Ga2a5wwcB1Z3JZEeLXpW784UG2l/r7ohANNtwFnOlvG4v/kJkS6MM4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1757197795; c=relaxed/simple;
	bh=ZvdcEbUs29eq6BMB3w7Vx4DfpT5N5iqYv3B8KQjalvQ=;
	h=To:Subject:From:Message-Id:Date; b=EqiKFGW2KC5wdVb6l7cwwUvn3mCGkh4iwImFBwFSCMbh/jD6z8YqHSEfTd9+C2nt5TRmi8YYW4cX4lrCDNcKF0i3bYPJf+1nDpqJVcBJLg7cQTbAmVIY+ZGStfH2YxDHQKSzcIdbfgW+t+eam4U0vqyy9MDeDNilesVP4jF/B10=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Q3MNEovF; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Q3MNEovF"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AD18EC4CEE7
	for <ddprobe@lists.linux.dev>; Sat,  6 Sep 2025 22:29:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1757197793;
	bh=ZvdcEbUs29eq6BMB3w7Vx4DfpT5N5iqYv3B8KQjalvQ=;
	h=To:Subject:From:Date:From;
	b=Q3MNEovFRrEF0YVRjvzejXKfM6ULEIyZjhyyU5QL/YpPzrQFzaN55MHy12b3VJerx
	 SJ9wxM8UIfhiLKI5wKGjKicVg6cv1bO77mcqSQNlJA49KJpr/pKH+PcVoy9fIzrrbu
	 EsIOcnwEl8tCMILUcEI8ChK1gZZyN9gNhAmtJdRMHIWeFNgsvsCtfWlX5GcMgTYq6O
	 RFo1owPjEmampjXA9NZD4wTWNVDEGuKUts7GKZVnjuS6L68m57mHSwVakxe/hQaUJm
	 utwgDHHlprce902JSzsRZP773MKRtmqCBIaTm4SqR3Zkb5/BPz5ZggLhUMbWOWaECH
	 xTIW/ElCKZBMA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9258DCA1002
	for <ddprobe@lists.linux.dev>; Sat,  6 Sep 2025 22:29:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175719779358.14184.6895639064877378401.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 2b01fa59578ec46331a6a5dd27eeb908ea9bab9527cc4e1c831b160e5ab446b6
Date: Sat, 06 Sep 2025 22:29:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1757197793
