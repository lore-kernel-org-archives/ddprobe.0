Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id DB4172E5413
	for <ddprobe@lists.linux.dev>; Tue,  8 Jul 2025 16:39:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1751992793; cv=none; b=NkOjYGGk8mzW7j/0HPjt4cLpQNBhWLX42d0V/Hd28dx798UhEybwp3ShV9EIhlSnwp4g5FcG7izWqsMqzALu3qpH1fN9DcchDSiqeLH/oU9cTOY8eb5yuAaTV1dh4UeNdMTwGb36g8DUDfDt1uzdcjRiFJbqzkQdaytQzHWbkSE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1751992793; c=relaxed/simple;
	bh=LmbH3kIFTKT48BxznM0DQHUywG9r/AvueOIEsws9TlE=;
	h=To:Subject:From:Message-Id:Date; b=oPMewpbLko/ujGjHaREYRWx6Nys33hqlsUcAH3/5kg4qd12t62hCzyqyDe5eXBUvxFlwxRc7SdBFrc1/tJMSXRl3wXernY40mtnsjyHJIJWpuxWTOMwPNaD7iLNyI5bxH+slMk0CH9W86uxT9NZoOvQuZiSVP66n63rpDgzxyIU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ms1kFniS; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ms1kFniS"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A601AC4CEF5
	for <ddprobe@lists.linux.dev>; Tue,  8 Jul 2025 16:39:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1751992793;
	bh=LmbH3kIFTKT48BxznM0DQHUywG9r/AvueOIEsws9TlE=;
	h=To:Subject:From:Date:From;
	b=ms1kFniStfMBk20LN7/wNljSsXJPrAoQODxCyCvutUjAElOfrdtHyc6oNERT7kKAK
	 xG/cbFXa6w4ri9p1eAnvpp7VXM2WO22reWvqY1uwSRSg95p7E0RMid+TBKuAHZRxLI
	 PpVPybDZ6faxWSZK00lwn0xC33GjRPYmIqCrwXyasaZDg4S9WXcHnfIl/wA2exGYnF
	 FX5XE4rxELsb06R/XFL1twZmvo8txgaR2FOjwG+kOVcn6id0DWWW7VMgRsvmwJCXhR
	 Pi6tJTTkIFQ/qMel8g3uRcSYTUxBn+c9OnEzz2aPcihj/apDnAHd3eOppYUI9B2zq0
	 w9Iuqzp00rZ8Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9375CC83F0A
	for <ddprobe@lists.linux.dev>; Tue,  8 Jul 2025 16:39:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175199279358.28547.17356451976395666586.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 6ff26924e9e0f1930a8bbcc03593cd24f4439bfb38168fa00e38c8dc2f12d931
Date: Tue, 08 Jul 2025 16:39:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1751992793
