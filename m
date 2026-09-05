Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 59EE0369D64
	for <ddprobe@lists.linux.dev>; Sat,  5 Sep 2026 23:30:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1788651034; cv=none; b=tTGNrouA+5vWmjBZbIPtUdyMfdbE9mrRDSpALRnX8XGLmqwL3p9rWVZZpW86xfV1owUXgnFTcPsVL4jGWpiJtLZdLnyBP9+utW0SJoxEtehtoMglfYt8CXEUPsuKbfoid3BZcqVncbf1Ec5HvUnxQaspK1LHJXFrINnveet7FVI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1788651034; c=relaxed/simple;
	bh=0Ow/+n+ih+G9UEedGBG7Lt567SR/R5Y//kj0+s27HzU=;
	h=To:Subject:From:Message-Id:Date; b=NGZ8WpKX5vIxP4veZwnJOKmVqM1pGEXOy50Z98JdHxspVdYI0oK9kS9sudOXOGtEBfP5B4JNsadfUxW+VVddbDjLF6WiK2RxtmdYSEcPn+2FpnhRZkzga4GItKuNch9/N0BCm3SsbuOHkN0ADjH36CaBl4stQCccvmdQINGFzGA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=AvFW25G0; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="AvFW25G0"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D1B5FC2BCF5
	for <ddprobe@lists.linux.dev>; Sat,  5 Sep 2026 23:30:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1788651033;
	bh=0Ow/+n+ih+G9UEedGBG7Lt567SR/R5Y//kj0+s27HzU=;
	h=To:Subject:From:Date:From;
	b=AvFW25G0MumwMT1NLxXyjmGHBR2FE8bEGfgTF/h2H6BrfPyr8p7tgIQrmBln6G+RJ
	 gXQhuWyTPX7BnpMko2KXAhMPzXETac541eFR8qclGClxJ3N88plXB4mCKmmtk7uW/T
	 15sk1syIfLadmCXCjHn0eSaPfTd8oH0iQ7SOtWKxp0xosNHhNIr8TuCfE3A6r8YtVd
	 anANLFJQ55SuixRef3MBjx4ho/6OvEhA8SDtj0PDc3hFEF2SG5u0177sxnx4fEboK5
	 EJq5kThAE62rFlS/1vNvruCICGFcUGlkkj7hI5gcXgVyC7+H5aaAyccZxiHDt2gD81
	 5MGJij3VRs/dw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AE98AC79F85
	for <ddprobe@lists.linux.dev>; Sat,  5 Sep 2026 23:30:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178865103369.26417.8295468432606615482.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 2d7a7c1319675bb760cdaa8cf1e6e253f84c7f243ecbda55abc2f0fa742f641b
Date: Sat, 05 Sep 2026 23:30:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1788651033
