Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2F980321440
	for <ddprobe@lists.linux.dev>; Tue, 23 Sep 2025 12:09:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1758629394; cv=none; b=p8XQiTi7q623UecP5Umps+KzBDZvqCKecOF0eD59cnuMXtfmjF4qLX4DyIH+8Ux1dnolBm/Tq30OHXQ/f4e3d92K01CBIGcqo0Wd3O9i9bv1t/iHoyFjHzv4qLGqcFZgziJSHQ12cPFuKyZra2E6ycWYRGxfzE0nKBmg9ph5V8U=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1758629394; c=relaxed/simple;
	bh=J+VHhdm0FRb/iJ6Ha5Nh/fyyjSMz4m+dglhgYFVZZAQ=;
	h=To:Subject:From:Message-Id:Date; b=PiLT1pGfVKNvxvGNbvWUosaSLoNr0UUyBIlw+eKzUPLehAOqlH7Myk5mf3LcZwdLDmj859EUN1pmfJ2nm2AxgYUrTvwQlYio5HxQDG2wo6S0KQ5RBWsc2W0GafJQbL08uv1VSBAODkp6RAaTevnHiNPOrr9DGdCyrIovy0wZ0aU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=USCyMoPl; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="USCyMoPl"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A1F42C4CEF5
	for <ddprobe@lists.linux.dev>; Tue, 23 Sep 2025 12:09:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1758629393;
	bh=J+VHhdm0FRb/iJ6Ha5Nh/fyyjSMz4m+dglhgYFVZZAQ=;
	h=To:Subject:From:Date:From;
	b=USCyMoPl5X4JYsTzcB4IT9pcar/artLLwilN4Z1yYrKtXOZzBlf0E7boDaTBklWuP
	 EE304VkElrK0IwC5vnjde3Lrig1GnRToc+gOe96HHe3zW8dEchZpPdnWfvqKvTMuHM
	 LlpJliJUf+IIbpo8pg1bwkUYMyMbtbOKz5ykUu20ufZNxhCc7yfR/aNKvf8GoY2E0O
	 rmyblWO6CtRaRt2fbd7xDBYwXMlvEotiuBHOlTBTkrfTcOXwHux1UdtuNx4P/ruPLW
	 xCQKQbT9nLh4orAyAAXOsw8ZP1ErxNwSVTFB52mi/lrra8UN1BHWxO+n9vxvf6TUGn
	 U6cRnuTTpoYww==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8FCC9CAC5B1
	for <ddprobe@lists.linux.dev>; Tue, 23 Sep 2025 12:09:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175862939358.16399.10706292134621924023.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 0a9b5ed429178b5d4efda2f35e1ddaebb5f3f9fa98db1d097de2efa7b5d4fae3
Date: Tue, 23 Sep 2025 12:09:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1758629393
