Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2FECF18EAB
	for <ddprobe@lists.linux.dev>; Sat, 15 Nov 2025 11:29:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1763206194; cv=none; b=qGY+7KzX4JsG9WGiEXtvvmUPi3+atsU7kQjYTKqkbZvtdi1Jokeqz/bjFC+HEmvRzt2znempgIEgwinuxaUXf8BoYgeQfoOtfdFUfHFI9sbE0h95/5YWRHf0ExF4rEf6k1++DHJbo+NmVaYz8MZPKgGZyO5CHk/bsTnVhgq1IyQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1763206194; c=relaxed/simple;
	bh=yKsNk8MxBxVQzkMi4kUGDmeaGr0jHSDRdp3Uxe1SIDk=;
	h=To:Subject:From:Message-Id:Date; b=cSKAdUnkhqWZGGtUHREl6xh8udaVXlbTXREwlnV+2ObAUkX/5L+GEag2FaIDRuJQA/qPqnVEN6xx3R7ryAEdh6SA8TkIjig9o2DL0yr5dLyeaBSAAUJaF2HK7upATPteeoc5nVcX+skCwsu+Zl0QIFT60FcOWjLsPmJLWPyoa10=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=GbrOgdDI; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="GbrOgdDI"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AD639C116B1
	for <ddprobe@lists.linux.dev>; Sat, 15 Nov 2025 11:29:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1763206193;
	bh=yKsNk8MxBxVQzkMi4kUGDmeaGr0jHSDRdp3Uxe1SIDk=;
	h=To:Subject:From:Date:From;
	b=GbrOgdDISOpbI2ULGzIc/lsu3aIVAcf8mKcWIwL2eXF2kaL7AlwhXbNxhp2MdjNvF
	 bmJtUv+ievNBRDIoXq/mQbhM/Uvp0RNoGPLMu3bkAyQ7h0WpwevAEmcRKQV+KQIcxu
	 xOTvmExH3RHWFrJ01ACO9+DCk9eDjHNK5gObuNFWRuFhi2bFlUzTUTBf7/5jZpLdY3
	 jSC7CjT/7o8tp0rF7bGfiYfnJ2YIIWlatmbb8hgk5izL1Rv9qO9W/+atE3bT/j3LOs
	 yQ9KY/7nsZDP1R0pKELNqLWczeFSCJJGsRDbxULhj1y9ZNCDl6D2GglZ96nFKjlkNl
	 rAzHBvVZADuhQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9F5E8CEB2CD
	for <ddprobe@lists.linux.dev>; Sat, 15 Nov 2025 11:29:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176320619361.6177.3425332836402054478.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 2309a1e83ae6b90087a8ac78edb2abf7c05f51c23635d2854ae99aedbcc81449
Date: Sat, 15 Nov 2025 11:29:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1763206193
