Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 629BF353A8E
	for <ddprobe@lists.linux.dev>; Sat, 10 Oct 2026 14:30:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1791642634; cv=none; b=BL2ZQZ2TIM5AG8z+1pe6apxUSgWMI7EK8/8vX5FpylLwn6UzdRZ+14ZpPVJDOXd8WKTc5tct/3SeVMyYv2ZFSV3oHD7Tb/0cpVFNu3QozuN4CmVllHb5OJ/IhmjWYVcsy+fI9j2kNMRZX9g3mS5xYD4rCP3SCrmw6ODsawPhaGE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1791642634; c=relaxed/simple;
	bh=yS22aKeA1f+y0TeZ911NfeFCNwlRaEJ/yRFtTWqZuLU=;
	h=To:Subject:From:Message-Id:Date; b=Cef9wkvFhPz2o4XVv9ae6z/j+6B37aFJbXWmiGGa1iWbcZJikK/Tu5EbFQ0Y/Yla/PX1dAw5Sms25ZxlcB2bBH3l1s2bor6B6o6OzUOcTEgGbyACdk9EUO0QkY+455rrpfnwIsnq66cQwVZgwrEsdhiWsKFQ8h80oNd+UWHSQCM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=j/fkTz11; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="j/fkTz11"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CB8C8C2BCB9
	for <ddprobe@lists.linux.dev>; Sat, 10 Oct 2026 14:30:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1791642633;
	bh=yS22aKeA1f+y0TeZ911NfeFCNwlRaEJ/yRFtTWqZuLU=;
	h=To:Subject:From:Date:From;
	b=j/fkTz11/vQXoICAuRqk89zw/JEzQWOPPXFfuMtljgBksv6hlRybsr7CiP39Tbj9X
	 kbCteR6GmiwZ53lPA5uW8SvP37S0KBggRwRbWssJwgEqlhOduwkKRYXQ/Bnw94unZ/
	 GygvaYXQO7mCaNHC6Lhr1x8KaA9JkWNSCa9hdug0HL3fdlXGwGVvHTBIGQOMEJE3R7
	 xAGkKp4XFnsnRh+LaxE6ehApdwvZl1Fl2QIhXGdE38T98RVN/7FCw/vIeLHLXbbBwf
	 zCEtuhAspf4uZr8wrsxH2T/NAoaoMHBhIEuFPRRruKcYGhTH1RNFUV3HTrGOomYI3R
	 KKlTRO3z1AkBA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A9B9ECA6017
	for <ddprobe@lists.linux.dev>; Sat, 10 Oct 2026 14:30:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <179164263368.17052.13055376078077932527.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 578ad653e4f1b2ff78efd9f9ab19cb2e692a253529b6d3062fde177e8a5e83b5
Date: Sat, 10 Oct 2026 14:30:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1791642633
