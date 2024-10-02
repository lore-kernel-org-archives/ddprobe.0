Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 37A9A179A8
	for <ddprobe@lists.linux.dev>; Wed,  2 Oct 2024 04:05:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1727841954; cv=none; b=eDVIUi2irsVCiA+ZtCzkNEQf8at2foj2Ui7gpLS7ZP/fI4fJLBNL7tHFfEOyDBGgOcey88mxkXZJovlCKYCzYWvmCA9BP/J8W3K4jrl/7cRE0C+8vBTNYixWvp4S2Spofu3oLKDMKrRusAaa9sxDAU0pl5HHkkoIIYTtJWDZn3E=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1727841954; c=relaxed/simple;
	bh=ISjgzriA3lsMAsUXc331Y1ZmxorRGrIacK82jTU1ODY=;
	h=To:Subject:From:Message-Id:Date; b=Dc843MRQFsvz2g8argrU3PW+GNBvEbD4e20P5lYsndLIauJDoMn2btWFCc7/Kp+ShYC6grAfjplnHqxyudRUjE52IjQ7G7IV7ORpipfzR7ccdMOH+ctGoFYndTcGG54TnaLQnWxX7PdivmIW+CglkJvlW2mSx3TgEGY76fMfzxw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=swbFNfU5; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="swbFNfU5"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B8752C4CEC5
	for <ddprobe@lists.linux.dev>; Wed,  2 Oct 2024 04:05:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1727841953;
	bh=ISjgzriA3lsMAsUXc331Y1ZmxorRGrIacK82jTU1ODY=;
	h=To:Subject:From:Date:From;
	b=swbFNfU5UX1UuWhcnuyQiPqLTHG/CqRQ89ZO1DYBRkNZ5qfEi74ePB9AOwzFYknzY
	 rMSjz0uBIznTaDmBt78v3NS47G4CwpEUhaVJuDatLV3MpcXOU+0+XfYJMYBfdI4sn3
	 AZzMFAUpRsNBiVHABD7KxJbl8eMLc58RgxEdUHgvatUS+EYpqBqPYyO6J6jk75LrSV
	 OWdQq6mcW9uGvWnYLCmfZNcpgIg5qVNTu2Iaz/pitHcAWhb5a2gzyKpwlRCVw+14F3
	 uc6NEgvqsfhP0+PlnyM88YtEgM7IVl8G5fRY1CvOh9m5o1pBEcDFKY4maF5rLSjizb
	 25LSOEDv4puAA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A5E4ACF3194
	for <ddprobe@lists.linux.dev>; Wed,  2 Oct 2024 04:05:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172784195363.18138.17212546479630922040.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 09d332d9403f3b5482b76ac59b7c03eaa70ca04e7592f88ed3063e0036dbfa94
Date: Wed, 02 Oct 2024 04:05:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1727841953
