Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1DF3383A14
	for <ddprobe@lists.linux.dev>; Wed, 31 Dec 2025 02:23:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1767147834; cv=none; b=k58cPqFy2hOsI9z+3t4HzNRdPUNLlvrpmd3eSxCiN0aS66pgYUqZg5Y4xbeglYVbdiUhEqwQsFFk/k+WlE3NB63NbdOfjlglg42ebYPbtF/TBER/UiVElp+wmZTu5Ub8YsiumH39kPh0V9bRR5weeqoXA5WeZNJeDAlw+A+u1x0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1767147834; c=relaxed/simple;
	bh=GUQOoViVasM5uLp15/jMKr5HesbCTDJi02DvGdenvng=;
	h=To:Subject:From:Message-Id:Date; b=NiepymL7OMZc8V+fNlZis/VSe1bN5x+Sd7Nonh/9bwIi8Hh2XWPdWujK9MnMELXhWkIgqUvJlWeoi5KsOfXooRPN5Z1dnNT5td9gXmB1r4X2KSem/7GNpOmQopjBWj1Fb376zOAYcydbT/4F1hErdwkPTNIGweXh+r0gr5bJqRc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ThB+jSQz; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ThB+jSQz"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A064BC116C6
	for <ddprobe@lists.linux.dev>; Wed, 31 Dec 2025 02:23:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1767147833;
	bh=GUQOoViVasM5uLp15/jMKr5HesbCTDJi02DvGdenvng=;
	h=To:Subject:From:Date:From;
	b=ThB+jSQzXiqI4SQfZpgQBIxrVPTZttzQ25sEAPFd6LPDp8B9SdRmaInTJvbdvkG03
	 3BZXwOwmA4Lj50VadPDyx3NHMx2Q2mxOusxaKPPUIu9Hn7EzRwJtTSCyvz7QfeEbG7
	 G1ZTXAYbNBni5v0m1/fHYF5WjqBWgghN/wV+6ADAeGX6Pb7l+8svt5Cur5dSuqhVaL
	 j/K+S6vffOV0uokfVjZ+8BXsHpa38YxvD7sDhaTD2TLwW5ElBFewMhO/g7uh3csRg/
	 LWHT5FWAutdf0TDysCh00718+lYKQ13xU78aqtkuw/uCVhc+WR4FZwMkjTa1Hc1vGR
	 QrGJh25Equa+A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9451EEE57C8
	for <ddprobe@lists.linux.dev>; Wed, 31 Dec 2025 02:23:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176714783357.30932.3233134621051473363.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 1f70c1d1a68743f2ef2abe817439df7a5a46b0ba6421ec1465104bdc6f2d754f
Date: Wed, 31 Dec 2025 02:23:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1767147833
