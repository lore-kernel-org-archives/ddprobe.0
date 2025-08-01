Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2F95C202C58
	for <ddprobe@lists.linux.dev>; Fri,  1 Aug 2025 07:29:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1754033394; cv=none; b=NGaOTvUl8okUTEPB8LooEx/ktBe8cfiwhppZW1tz5wAvxZuq/tvSiXsiG4rzR8XsosbYfBcqZ9nsJLuxL8ZdQXtHMVZEYJeIUSZkWq7ueez6Bz0m7k7o+35CEPTT1RXANZ+lV0xWYCYeeNkv8E+hHrr56M8Jxi+SKf7RjanhmDI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1754033394; c=relaxed/simple;
	bh=w9BnrzelDmyT9mDNxPX5AXrbIFP1FvuX7IQCraN7WAM=;
	h=To:Subject:From:Message-Id:Date; b=Pa/PaEgQ7lfaF4JRIs+YEoAvQY7XVRKHCm76AYh9R8rffUDHOtnl44346qCjgbdEmrUrccQ9kIOgEI0QeIwKDDtKCXmetWow8L09TW/hZnTOG0eNUq/QWHMFU8VvqzsA3OFFqJ6g6wsy3rFzss3Ib8WbqtOTs7JSSRLhNrFyz58=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=pehCPEDl; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="pehCPEDl"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A304DC4CEF7
	for <ddprobe@lists.linux.dev>; Fri,  1 Aug 2025 07:29:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1754033393;
	bh=w9BnrzelDmyT9mDNxPX5AXrbIFP1FvuX7IQCraN7WAM=;
	h=To:Subject:From:Date:From;
	b=pehCPEDlhVSV+OTwFDMRPIDSABb2/Tyur54UacD3k+fQLNNFiB1ip8u0tTyQo0dxj
	 pSj/gantRiCqBe8FdyM1XJV/gGijzoPQeQou6MM6GlQn2Z4Ot3btkawirMK7bfcywa
	 uXr3w+qykF8BJNfqcNHPIyYyLmZa6rCazxhxiShONopcsuVclRzOm9+boChUPd/GT3
	 yz/WHaDgDai+lct5ghNQfHJm+FYK82ZCtuRom9uhO8YKGGF6paQkf0+z+NEd8SYhqq
	 cFYWPLTgZdkjhyfPXuN2Saua3s4Y0aRFYCl80LCshjWfMHCUR5ZUpfLYNmo8j4tjkM
	 2lhCyE0voY9zg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 91489C87FD2
	for <ddprobe@lists.linux.dev>; Fri,  1 Aug 2025 07:29:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175403339358.26102.12275633933153968406.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: d9999347f46e928a944c8001e5d447adc88146e03196a90940339c603c7f24ec
Date: Fri, 01 Aug 2025 07:29:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1754033393
