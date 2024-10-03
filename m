Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2D6F16A33F
	for <ddprobe@lists.linux.dev>; Thu,  3 Oct 2024 05:35:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1727933754; cv=none; b=aF5GNR08U4vRdmlBVAyMNbujAMX1a2TJD7pvZWWOAQfkvJ19ieMfJlaUHtL+tvV08yjEKYTpidsNHHl7+y/lqJ/C1gY89llP4nAOu97UuEYm4CUSyMoJKLzJ1/urxQ/gImsq023kEv3Ab0LB4ra3yC+1DQBwTWPtEV9nG3DAlLs=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1727933754; c=relaxed/simple;
	bh=VtqKfadGcLHq3p9FVouGRc8DdUrUFhxnWR+RqPM2zmg=;
	h=To:Subject:From:Message-Id:Date; b=ESX2s/UhHahiLJIB4siOOszQ+1BUjrExNTi16cFpvo5QZXsP7mPxnJnUA68+jPvdjBdX4rQIRfdUeN4Fqxp1xgtX6Iy5rlJ5MCCTdrBaJ/pvgGomuA+7Eqq6mdQflojrWpjADPlJpj0P8woguxpxAGtYuMsO3F37biZgkMSe2C4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=OH0mYNh+; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="OH0mYNh+"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AAA78C4CEC7
	for <ddprobe@lists.linux.dev>; Thu,  3 Oct 2024 05:35:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1727933753;
	bh=VtqKfadGcLHq3p9FVouGRc8DdUrUFhxnWR+RqPM2zmg=;
	h=To:Subject:From:Date:From;
	b=OH0mYNh+1Oyr1UGXukcOWxnmoHcKS/52Uuf6dNdwvodkE6rTlsjy9ouFH+OElbVb/
	 W0C2ndXGgSSQWrMy2H/PQsUGRHe6ryC0gA3rMirP3rAFVbhkwLSVwGF/PDYRA4RJ/Z
	 1IC9+jNVZt9xijCYwQ2piQ8FCWhzxqzJwQ7YDPGv27bFeTCeDwEd7teBKPc2y/TZAT
	 7p1XZmPjERm3thuaBo6py7VQIqvqURgu/zNsu2Z1eUAot5ucI8C3eiQ/FXGfbOl893
	 8YIkc8Q7veP4NdkOO2x7Rd2JOFcfL53TusBcd2JDS/4of4RPMzH5FdhqploDO77fP9
	 CLBcMBjXYL+KQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 97854CF31BF
	for <ddprobe@lists.linux.dev>; Thu,  3 Oct 2024 05:35:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172793375360.4969.12546234160968165678.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 96207bcabbee2a14e76be7974a769b639d2445b3c548fa1b9063516f299dd4f2
Date: Thu, 03 Oct 2024 05:35:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1727933753
