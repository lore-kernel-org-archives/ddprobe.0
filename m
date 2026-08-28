Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 370BC29B77E
	for <ddprobe@lists.linux.dev>; Fri, 28 Aug 2026 13:20:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1787923234; cv=none; b=Ks6dvQ4MGm9G09/PDuPE+S6xIHyCo2Y65dLHISL7eZXGZkHJisa3I2kUz+fC0/1UU5mGWuenM7wcjDQksiVejsT5FLx9f5Jd3uwLOpQ8aGypEZdnB0BD+tnS83/CKe+WcfKiTwjaMt3jOJwNqbFtQ/ByPgwhslG4B0CUgnfYwIw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1787923234; c=relaxed/simple;
	bh=995v+MkKW3qcO16wVQYZHVCIeQ07in+IiI5ToKnAJm8=;
	h=To:Subject:From:Message-Id:Date; b=hVD4NaNcGbO7YWvTGExtFMfpDHmFu45DdgiWTihI73ZKsFeCvg20u+Dfkp4ejw/et+MF8Ir7uhiIVW1iMbebIAJNA3aT1+rs5l/o4F3PZt6ETap1OAgTg9f8YDlOwDU2+4ofBKB9iGu+q1U56HlLeLF2oF0EWPDKb7HjNE8KajU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=EKF8oWlG; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="EKF8oWlG"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D394DC19425
	for <ddprobe@lists.linux.dev>; Fri, 28 Aug 2026 13:20:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1787923233;
	bh=995v+MkKW3qcO16wVQYZHVCIeQ07in+IiI5ToKnAJm8=;
	h=To:Subject:From:Date:From;
	b=EKF8oWlGrcfz8WMTDgytxaBjtwyEScudrDsG199a0DbtvSOYiLHWJ15aVEXtjX7tB
	 D0BvQJJwGemgOP2nXbJ5dyLOVAFNkExjLTLXk6+anW6bdDg9w+gET4Tqao+lR3gGW5
	 G5a9atygTJw7IJW2N7UlmYWb1AopHnIroxp8+RmK26dywgF3Rh8FH2cqsDRG4/0pB7
	 W/uKsn0LRlnbO4xyCmc/cKQys7hIoyI/dsyexTwYk+6LavO+rhHerCqS0DHDNYblD9
	 MHJSSFmjdwLFYF00Ne82gbLG/myJpi+P/YO++/84C/lCZOs3aM/ou6UFmnb5KkY5Xc
	 9KZU0XfYSdBXA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B0233C61DB9
	for <ddprobe@lists.linux.dev>; Fri, 28 Aug 2026 13:20:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178792323371.26062.209518435371876838.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 81820082f60f99323f3c0cf3f661b47a8909f4b368de5b43912ec3b672e92ec5
Date: Fri, 28 Aug 2026 13:20:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1787923233
