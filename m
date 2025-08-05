Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 24C7825229C
	for <ddprobe@lists.linux.dev>; Tue,  5 Aug 2025 09:19:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1754385594; cv=none; b=VvEarqiAbAd61jjF7wEZlhn54riDbERF4KMnWWztgwkXvcUO8m4O729RJaJTOg+9NlLj/aq11zBQgc9VM+zZ9iG6FFq0vP7eCJIypF6fbud+MWU5xhyFiWidyU7/ajiHxtTn9I1Zee6ZrolJGZzuUJtMWj6vuTl6Su7g5VqLrG8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1754385594; c=relaxed/simple;
	bh=OwOBbU3W12X6Abmow+NjezWGYpQOtAkONkAQWq/FeEs=;
	h=To:Subject:From:Message-Id:Date; b=pJv+9/OcDBLhQAH/D08hZltac4QFM+58VO0qZXLLPcuOhcgdFL3MOzUylFSQIyzfnYcCgYeTeFdgQAwwhZzy/d0m5dV86sRddPQEtUkZSXUNOWFHNmKFgT1UIjt/x9fCWyCQh1xBnjcrWKQh2bXAtlzglE/tBaBNRgctdYXb2jg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Uy1QGY93; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Uy1QGY93"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A1C01C4CEF0
	for <ddprobe@lists.linux.dev>; Tue,  5 Aug 2025 09:19:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1754385593;
	bh=OwOBbU3W12X6Abmow+NjezWGYpQOtAkONkAQWq/FeEs=;
	h=To:Subject:From:Date:From;
	b=Uy1QGY93TKzz5+gEhSzvmvX8xjIVW9DmdN4InWVqfGZ4ayC7emvH4Et/sraiXAvx/
	 jXxD/09A1Uo6QLH0icfLk+pEsPEBsyvRoJN/RWyC6hDQWuJ9cQ7lvfrXZdYu6KI0+D
	 4ffHZTawGc0jJUCa0OerFY5cyKnnj+IQJO/XFL2KekESeqK5SIDeHOfISwMozOM2NQ
	 XZhHgykNoIHL7sELnJRGyUzN0dE5yPGRze3cbrTvWe0HCXdSFzoPxBNLL/uH5bmri+
	 Jfib8RFvXfAsQugQ4bxWU+WMyLLUprSkYzSOVtgFtA5z3D0EEpN3+7Twch1pZyGRN2
	 lxsXOXPwjBx+A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 917DFC87FD2
	for <ddprobe@lists.linux.dev>; Tue,  5 Aug 2025 09:19:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175438559358.16149.16691620540964360389.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 91509de4f5005dab195c0f1b45613bd3638e0a57f353cbec9b15a320ef26a3db
Date: Tue, 05 Aug 2025 09:19:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1754385593
