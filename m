Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 342251A0728
	for <ddprobe@lists.linux.dev>; Thu,  1 May 2025 16:29:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1746116994; cv=none; b=g+5E/ihjnMxUkF/DMOW/qNYZXcUwRCl8i52Y0oAG2shVmZ4OH4vjkoNU9XCFyFSRfGa2VIQcIKHa7a2Km+lMIscFRox9nl518SrqKZx1kCdf+6g/e1hjcfruRhXzKMYvRkeqeiFygg2aug5NbI2nvvlkvJgmslDuFdIhFdcW938=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1746116994; c=relaxed/simple;
	bh=7OmGR2nghYaQlIB/LVJMb+H91h+V4wNRyOWZQJD5ecE=;
	h=To:Subject:From:Message-Id:Date; b=YidVSExREx8MyzAAoPlBl4sKMxUrbTfR41GsoxWqZhG5aZU++3hmR9ejcvoxpCXiBrKgzK9gEwTo+5uTCvrkGP+VcKBL8zUimNdUS+qb2p9x7al4sDnaAQLk08B/3mPp2/pZojD23Zz5WuxMKg046rbxFJCDOTj8gReFZnlKu/A=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=gtZZJkmr; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="gtZZJkmr"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A1848C4CEE3
	for <ddprobe@lists.linux.dev>; Thu,  1 May 2025 16:29:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1746116993;
	bh=7OmGR2nghYaQlIB/LVJMb+H91h+V4wNRyOWZQJD5ecE=;
	h=To:Subject:From:Date:From;
	b=gtZZJkmrSth8GNTy011nEfORY1MBtvqkfdM/sarNtFXZDlZCbX0otymKfERKsYe7l
	 9w3VM/7qkYkDA9Ls/uhcT8qtEFC3ckgO99u79AmkxXZE7dC+kZL/m3mmaPdgsFc8/+
	 KYiIZS6LXGUMxAcZY3TrQz1emOXGp36JyqPTxV/DTId+UPsAnfI9d7Znf1WvyBp8Cm
	 7a5MNsjFo9NjDmO/b7UbMfYOmIUxFz9goGzXuFJUHiJjnB8jNcnxs4ZVkRfw+vIzc3
	 Y6oOgYTSRZwTrM5G2BvvbU/B38IvhTkEPBdgc9iqzXwAfqA5gVql6YPdCeY3Z0AW4I
	 l6NfpHw0cPUrQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8EE03C369DC
	for <ddprobe@lists.linux.dev>; Thu,  1 May 2025 16:29:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174611699357.1763.17991357953769993325.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 44f961582e9c9c79dda790c3b68f3822b7673d23143cba60da26b79faf2e4810
Date: Thu, 01 May 2025 16:29:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1746116993
