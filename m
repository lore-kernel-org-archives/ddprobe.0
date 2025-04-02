Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3372514C5B0
	for <ddprobe@lists.linux.dev>; Wed,  2 Apr 2025 07:19:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1743578394; cv=none; b=sfvOHmIejO8lpMZ0mNVY+e9cxTVSnwOcHIJdi93XzkTUhLl46gixBwBqbwS69whB5Ru0k1zAfKXzCYL/H283u6zM7yaMy8gUHFk0949sQhu3vSkFC2Z5YUISROOvTyEPvybcSfZ7NDv683pksvQtd9OX/+rg2AnrA4aU5pOUBfU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1743578394; c=relaxed/simple;
	bh=JC3qQUU1WU4pRng8UtNec6ppBkzgZH20KKUUKDElHKU=;
	h=To:Subject:From:Message-Id:Date; b=EQGdGqgVWTlyu3lA1qI7YwCUYYm+fNHwFram5Gknxij9gi6HMQZv4WG8ed1/qtdIEa7laLdJajUfOs/OJJsJ5BJkZH4l5g/hXq0O6TAy1xC0tobC2DoagRj2I/YeCt5/zsbzJggaXEyO7L/GuuXwbrhe2dgIfiaRn4Fl2o8cPPI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ZXqgH4rA; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ZXqgH4rA"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A4885C4CEDD
	for <ddprobe@lists.linux.dev>; Wed,  2 Apr 2025 07:19:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1743578393;
	bh=JC3qQUU1WU4pRng8UtNec6ppBkzgZH20KKUUKDElHKU=;
	h=To:Subject:From:Date:From;
	b=ZXqgH4rAlfgcRiFMaEEo2YmoUGzeaNeImURBDpKXr3oJ8P7IERpUYx8CRr1WfIhr/
	 GGrE3lQOvFOp7emsnyMEqx2T5MLcon+bNIB+0xFBW0BYpN4BxOG2v64z0yd+UTg/rm
	 P2NOZJK9lU7vMO7HrYQCqnIdRTWyuO+wErIQgwQ+QhiyvnB1WoaSQA2YwK4NO42aKC
	 ckeK/meq4Ve1fosWNl7mcOBwAr9szkMMDCZPzN6ekFdl2ODS1PNmHFl4cdT/zl9Oui
	 GvrTXXz1H5L7J/EsA0g8qLK+uYwYBplF5Tk4ILRNO129Mt0WT+XhEitZX0719LqUET
	 DD7alh/rRmB7w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 92468C28B20
	for <ddprobe@lists.linux.dev>; Wed,  2 Apr 2025 07:19:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174357839358.22228.15060752842227350067.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 21fbc64948dc2596200b50c98aa57cfceb91d1fc538bd3459ba6568844b59e3e
Date: Wed, 02 Apr 2025 07:19:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1743578393
