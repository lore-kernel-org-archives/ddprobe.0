Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 231C014A4F7
	for <ddprobe@lists.linux.dev>; Sat,  5 Oct 2024 15:15:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1728141354; cv=none; b=BIBYvEnmZG3lvJ9laqP7Q/2wwubTF0XNQwIEas6xO/6tDZwH+vBJXQM3EUfz/xqD6sx3Nkzb5iieYUI9ANpw9cI+NAqrUDxAynVok0xGh2kdrPCkvj1fOIIAheZKcByjpeA3S24DSGOWfPTIPeNEmqrgSmL+Jl0SOscOn5skEG8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1728141354; c=relaxed/simple;
	bh=VCxBxurCiQ1/ijwDmaZiQpQWNDwi51apy3m4GjhMD7I=;
	h=To:Subject:From:Message-Id:Date; b=jiRmixcBjxZ8u00+Wb0xZoPFPtjV18W/s+fjsmmiicu+4oZSj6IaHY+uwQTGs5dsg0U3QJE7RPry1PY4imCHWZW1M+ELs0n+K48v06TJY+2WAsneGPXqmJJUln6qNc+9nin869EbRVM/cMNNQtmjdac03JxN59LQQIeeyBsA3TA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=TARoeRi0; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="TARoeRi0"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B13B0C4CEC2
	for <ddprobe@lists.linux.dev>; Sat,  5 Oct 2024 15:15:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1728141353;
	bh=VCxBxurCiQ1/ijwDmaZiQpQWNDwi51apy3m4GjhMD7I=;
	h=To:Subject:From:Date:From;
	b=TARoeRi0tgzRCkDUpFK2rY4ifjEktWv8cjXcabln06ugLIRnDV245DvI3tMj3owKJ
	 ZJ7WJpkeaV3lk3CZgFgOrLTAPS1yS8iFvsNz7k681g0IAeBN8tPhwe2HFY+QAYCv+2
	 5DfOfhCNe+NQby4pUUOLAm0v3c7veOl0A2JhRTXt+NaF4+fuhCe9Twa2Ruc+YPT4tG
	 HPHQa482xqFqyFk6+gC4pRWr26FMCFFg32ePmF/n9aliRV3U9ROIyLxDvBY1hhy1FS
	 tepBTTqEqG2L4xJ0P9KLYvjQS0e2VJgMIxrh4gTFyP4/aM9Yq8RaL2W11miMGszG18
	 W4tVdCrDiPp5Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9EE0ECF887E
	for <ddprobe@lists.linux.dev>; Sat,  5 Oct 2024 15:15:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172814135362.18630.16123198272695708023.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 27a11bd5bb13d39df0705f23e0a83ee764adca0959fec3f51a5693ac3728d505
Date: Sat, 05 Oct 2024 15:15:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1728141353
