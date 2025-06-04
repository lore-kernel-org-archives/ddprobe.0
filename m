Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2FD8E4C7C
	for <ddprobe@lists.linux.dev>; Wed,  4 Jun 2025 16:09:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1749053394; cv=none; b=OLpO4xr+FFNgJjQYT19aLC9tIzXeYrHv5Czr3yFijMqTMqidymb7A/Sx4d6bV0ThizLEd4z3nqDraPeb3RxPDpqXs9YhYdkUYZCfv38EDZ42TwmU34HV+j305I70fxAsdot5/qFPIACc7cB3IWoiulaR0rNnzACo0c429ZWoOtM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1749053394; c=relaxed/simple;
	bh=4I3xs2BxiYQAjdGsFWYJohCn7Hzs31W5wgVjpY6YtyY=;
	h=To:Subject:From:Message-Id:Date; b=eRCetg6Z3YaGZCatNqbkOVhSeGjjf7SsA3aOTa7Eg25AjHQFCanx8o15hXU+i9Xb+FENV/VWSD6Qh+QlI7WpetWmz8mraI3N5K9rO37GB4nXSJJRr9/lNJip4SjH/dDvUSX7k0MZJvyx689ephLTDPkNme2JbzP2DX6aj7yu5mo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=JJjWKJbi; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="JJjWKJbi"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AA777C4CEE4
	for <ddprobe@lists.linux.dev>; Wed,  4 Jun 2025 16:09:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1749053393;
	bh=4I3xs2BxiYQAjdGsFWYJohCn7Hzs31W5wgVjpY6YtyY=;
	h=To:Subject:From:Date:From;
	b=JJjWKJbiL6uqH+dkc3oqLmMBk0M3CZAI68EZ17cp02B5ofY1t9WIfEvgN/A5GHEWd
	 84yry5tmtSCzGYOFp5rh2WmzqP7RUFFW6WKyoCpX44zAJIOa4r0xJTF6Xn70mrJt6f
	 XzooHUZL4nH76M9i5YAoYkouXu1Jw0MOyRQX2ysGXfuvSubSgYZ1BAp+95poG3z+5b
	 PXW+i4JlC/nohnXbHblpqOLXdS2mTKp+aC1YCrohCOhLcyyQlalI4IMs0sKOpQXsgq
	 lc2rXkdhkBgF7/gEzDjsMdS70kTuErg4TL1Zq8jE9+44yuE1dX/tc7BdXPa8gV17Es
	 ppsDYnA8gzEnw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 96184C5B543
	for <ddprobe@lists.linux.dev>; Wed,  4 Jun 2025 16:09:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174905339357.32507.2594850998502657294.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 028fdce8eaace0bc38be9eddb54e03a70b21cdd4d19c841f455485816ac7f257
Date: Wed, 04 Jun 2025 16:09:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1749053393
