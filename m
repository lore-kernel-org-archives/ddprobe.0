Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0FA3B2E7F39
	for <ddprobe@lists.linux.dev>; Wed,  8 Oct 2025 15:39:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1759937994; cv=none; b=DQ+j6TQE2hfn3Pm7/Bpk/EXu+M7mkO8ouuWLYteUZc5pSO3Xtp6xuKTdmwmB/x77d70hj2Lm0+qhZBjEDnPglTXwMEQ0o0e3LBjjpWix+eMXMwdgc3SdaSqVHX7t13A+OF28HoYrFV5AtiSXgZxatInZVKfAnpItwo+GLl87LBA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1759937994; c=relaxed/simple;
	bh=HJFhRHCHoYwGz7en0yFaw9vbQzN6LSmnvvrLa2qF5nA=;
	h=To:Subject:From:Message-Id:Date; b=Dm7sn8QcIRbO62eykt2eKqevmcLneeZ1cvZG1ALkwhLqls2ct23scg6oiuzX88BsafYqQiPK59FR1UzJiNDgt0h/26pLRPqi59GrMy3JyDd8DtYFGkmoverWHnXkx/+ylzs2oQ4ilynTPpCRifXMRhrQnKOPZkpXmFBC84a1Cgg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=P5awtTKr; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="P5awtTKr"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A832BC4CEE7
	for <ddprobe@lists.linux.dev>; Wed,  8 Oct 2025 15:39:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1759937993;
	bh=HJFhRHCHoYwGz7en0yFaw9vbQzN6LSmnvvrLa2qF5nA=;
	h=To:Subject:From:Date:From;
	b=P5awtTKrV2tHP30pbz12+FkTdyK87k0Y27TZRCYzoVv/rxKzE8AlEGN2iQdmk6HyQ
	 DN0cA6aZOrNnil0aSYSfQpt1VxvDnTgaBkzhb/8XZrfnFXvKfeWV1kUJdY6299TjCH
	 rhX3lcJIU7wjQy47yOdS2msXPI6Xh8bWwUTqdwga3kW9cBl/wtU3PfYdkBwrJiQjez
	 BorxAo6fpZN73yxfCLcEQ9nok2rPaI9eWvpQLGCRyEw3oJyxLJtqoOYrZ15R9Ze/Vk
	 YQf0xWYZaWP+DAIrpnU2lbIs/hjD7xbMYUsGCWX6L4eT6sAY+ezRZa7HANKlxqjocT
	 a6eAhqFnyp8sw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 935B9CAC5BB
	for <ddprobe@lists.linux.dev>; Wed,  8 Oct 2025 15:39:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175993799358.19502.2434176867261435922.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 7e0bb8945c56ded2b1befdb8c1f8e16d82584467c90c1b085470d985144f51ac
Date: Wed, 08 Oct 2025 15:39:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1759937993
