Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 42CAC382371
	for <ddprobe@lists.linux.dev>; Mon, 10 Aug 2026 20:50:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1786395034; cv=none; b=kzXCkz+WiXt6hbd9ACooD7THOUQ56WHijhN+oUCLonw7LSadmItv1E8G3NDJvpwGI4M+YVSNg6YyNkOM/MfWStyYjopI0KMFCSqK9ipSuxoahXPATXJLqlsWbeVjs4lJ0evyTvvWGzFncT8prQYIA5l3KvZLTdZOgRPoKOujNTw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1786395034; c=relaxed/simple;
	bh=E9sz0pr1KOgz9LW4jox4KyBcif3C9QV5if9LR3PcwQo=;
	h=To:Subject:From:Message-Id:Date; b=BlzPrPEB10KCNoUg5cximRnUqjlioG8rvZ56apDUG/uSOn8TPgHmJy6HYPpPhNoHWnb1ETN41hEyzgKbbpQ2w7yO/iKBFg+1dhzYZ64WB8TRfk20RygsGgeGyHIXOEGnusXL2FTwIl0MisWlS4iz69xvgtTrimGd7JH01TtSrYQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Uhgrls44; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Uhgrls44"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D073FC19425
	for <ddprobe@lists.linux.dev>; Mon, 10 Aug 2026 20:50:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1786395033;
	bh=E9sz0pr1KOgz9LW4jox4KyBcif3C9QV5if9LR3PcwQo=;
	h=To:Subject:From:Date:From;
	b=Uhgrls44cPu8IGlJa8INpbK8/iLlb7uoAMwtjnK4gwb6cqdgc767u1LkqilxwoAD2
	 y+MZqQfq7IxkzpY/987Bz0e5ol5AfnAJKA6OoQpXCJQZIa+MabBaYfhhY/rYj44r/a
	 +DXFPnnlEAQWPGsnZK+1UCtMgFxOMnWnBjPEgW3jNsL1kOl1HKcBdw9xJuqneMy/Ds
	 QG2+C3BMIizD4GbO471vgoYAdjoN0vX2+FDpB59B9QfL/iriEg7dFJWI/7xvkR3pmS
	 xAlb5Vo3aRoYVG4iT6e8ZbMYhwC7asCwT8SKm9qB4ARP0QvfPnBEtB2xmWxDneuk06
	 cddLkz1Fy6bMA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id ABD2CC5AD7B
	for <ddprobe@lists.linux.dev>; Mon, 10 Aug 2026 20:50:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178639503368.30935.15153615909825732127.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: ebb9f0172a36a6609f8db3e11894e0c8ee9b2c78ae631f89e447ed1c276a7418
Date: Mon, 10 Aug 2026 20:50:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1786395033
