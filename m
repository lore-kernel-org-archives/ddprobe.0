Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 501322C9D
	for <ddprobe@lists.linux.dev>; Mon,  1 Jun 2026 02:24:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1780280674; cv=none; b=APyMaE0pN3jA9jxx9kU/jOFKYh3fCCjlR8FM3wfy13bDizWF93mDfgJDZ6cB5QzHPbkHpUhCkq38JNtqFALfe4VbWG/6yjoiWB/N8yBUdYSQJyyJtlCIjZzcRlGUAMzSAvLcXgBOD1dBUHvYi75pve8CWG+toy/wbzVOUBIx09c=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1780280674; c=relaxed/simple;
	bh=6Mbu6AwGXUjG7yySWj4/jH9uc5j/dP6ic/CGUpNnhaw=;
	h=To:Subject:From:Message-Id:Date; b=DIL2DHG7SYbenvCj/mFpYBTGIejlBD78Ki7CsWND7sT9F+txF6sKqkIm5ByyS8ezYCuWw/HLF4znPct8nx0pT8RqHyJpwKYx+h2kWuOL4txhBkLukgZz+8ZjRcdA1dO1rtjUPymdn5fMCyUT6/FsK6ior4V8V4UEgkTqOLz2If0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Lj6DFT1A; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Lj6DFT1A"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CE925C2BCB4
	for <ddprobe@lists.linux.dev>; Mon,  1 Jun 2026 02:24:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1780280673;
	bh=6Mbu6AwGXUjG7yySWj4/jH9uc5j/dP6ic/CGUpNnhaw=;
	h=To:Subject:From:Date:From;
	b=Lj6DFT1AhsnKgklnM5jAJ/DnJMTq14/DfaXJnO3CH2qDhMuY5RYJqU3IIIsnJDdKg
	 k0Iv+124EkgmSmrWDYoeqCEKmPy3kVkmvCUk4lJxcR7RG4pkzQAo5w4Tg34DlQUb9c
	 a8KkEtdT5o3qa7g6ShjkRm0lbwO6Dgh0I3xKGK8S25NF4Jy0o17QMZbD24vhL6gtoI
	 f6GtdVqoUSR0iRe0qDHy7hyIzgjWpEHJ5cCDTMJuRj3FOlHQeoQCmxm8RrX++naOPa
	 MhJzziLAF4r2Vwf/APO7liejf96PKsNvkCCPHbHWW88hapKSnlhEEHcBOVgj4IXn4i
	 AXM67txOZhEAA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B3454CD5BD1
	for <ddprobe@lists.linux.dev>; Mon,  1 Jun 2026 02:24:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178028067370.26169.512380037237563115.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 62279db5a06e7825af17ec1cdf1fa1602e47d41683a317b22afa75bf040c6307
Date: Mon, 01 Jun 2026 02:24:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1780280673
