Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4105E6F30C
	for <ddprobe@lists.linux.dev>; Mon,  5 May 2025 00:49:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1746406194; cv=none; b=r+OMyWeMB0o2hmfk8eQ1drHS1FDgaiH3ZoUZvKQOk9BzaB5YCuTz6bsBCgsuTxnhG9Gd0QE/hhcaf0F3Y6m6PFZCN3n2Vw9y9qqqItYy3cl/YqvjY0mNOwVxC62ZFID4+BqyhEu3zYPT3Z6TF9cWHibRkyzQh3DJhtJk7te3yJA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1746406194; c=relaxed/simple;
	bh=oJgusG4MglmNVLuGXulEtigWy8IK3yG/BkrnEB4N0ww=;
	h=To:Subject:From:Message-Id:Date; b=kHB+t55XrivTWoqxtQ9iXHI08kWIQaONEOaCyO+NYIAFUPg/EENIBkUXHmglFPpL4+HfrT50WrOHMonY3mDtFRvEsfKyn/RTTN5jeqLmSpja/54FRwqzOuS4unfckSCBeEWwm1NneiCZMHCViH0JQZSErETQWRC8LWMdN85ZYF4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=UdkC3P27; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="UdkC3P27"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A6D3EC4CEE7
	for <ddprobe@lists.linux.dev>; Mon,  5 May 2025 00:49:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1746406193;
	bh=oJgusG4MglmNVLuGXulEtigWy8IK3yG/BkrnEB4N0ww=;
	h=To:Subject:From:Date:From;
	b=UdkC3P27uICa22yY1Veb3OwQXLS9ecIS7+HUPGcQKXCyDlKNEfGahlvbKoygv2qLe
	 KLORPWsRRhkn4lvpmo1C6PxurK6mCDz2DIAXqMZD+PymRuB4VRVAPMS1+WOq1ETm3e
	 1N0mpjdG0Tswgv6/2/wN5LXVZJlKD8PRXqi8hHhgHvCFLiVxI4Sxd41jWdphSDwyWG
	 aV7JzTLfxNrL4WCHZnTu1hlOhsgeNQ2hIRY2cnLg1mCrWk5xlKQ4/YWM8IV2sK7VGN
	 AIcrGxytyOfnrQ51wRbQFg6XdanzC0JC4eWpi7/STcLJb1vxd6ppJsbcaps1Zc+Bud
	 +bzajpAo5SWNw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 94008C369DC
	for <ddprobe@lists.linux.dev>; Mon,  5 May 2025 00:49:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174640619357.5068.9931876440100455296.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 263b7a901600b4ead102ec9eedd09e1be8baf96e589752d1d325ecaed5785593
Date: Mon, 05 May 2025 00:49:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1746406193
