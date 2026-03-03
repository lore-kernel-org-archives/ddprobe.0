Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 497CB42883C
	for <ddprobe@lists.linux.dev>; Tue,  3 Mar 2026 11:34:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1772537694; cv=none; b=oH2+YuH5B4IXnSB1NYZDJeEjkAwlF2qth74aPhRHUHamva/SAT3yqd6Be7SR2vx8YiGcvEIE2pFcEiKmCjVtkhJOMiJ968z2F+eOWKQuBSRLCSeY9zYCxAzWvqEfNdGHYdPsJWY27PmGlwmjUgE7XHD+uCBFM3X8R0Ri0JvS6ko=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1772537694; c=relaxed/simple;
	bh=fIU7W9wyxrjUqyaWAAObpVr6BHiQzUZp4n4WJVPNjHw=;
	h=To:Subject:From:Message-Id:Date; b=msP1aylcw51HxvavFvWMQWjVGaMSDW6LFeRpV2zunMW4UjNjjrrQhtZk6UPb2hSU6TeiOjqxbqR4smr5db5lzqrLSHYM2BXnGXzBXpN3mBDlaXQB0wpOap2tk8C3J8HUXKwZgEh51FteC7eofNWxtSen+BCefK/3yhhMMhssLCk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=VKuD1wUh; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="VKuD1wUh"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B054DC116C6
	for <ddprobe@lists.linux.dev>; Tue,  3 Mar 2026 11:34:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1772537693;
	bh=fIU7W9wyxrjUqyaWAAObpVr6BHiQzUZp4n4WJVPNjHw=;
	h=To:Subject:From:Date:From;
	b=VKuD1wUhWfggd5uOADoZPLsxrAilNR5G+gultshSCX4mILQ7F3sJgfp7QobDZatXb
	 AbIBpY5v9UFhayxF1ijg3fno2T6UYCIzOxS897h3Bw+8KMbB43IJkyEfqqrDWmzWfM
	 zz+MZu2gqX7GPoovQa1/EDIa8SKRBWKkBGoYM7VdgBe0bDSOheGs+39e8/oQM4lq1N
	 nTXSjRxW67tH7CkJXkKHIq3cGIeliRtmt5KaOHHfjjQ95YFQHmJyqKKzhK8If+aX7m
	 Ir7ajTL05c5NNYCmcwAHqP5vRu9SfeW+RRXVsMU6eZnSOmFM1QXdox1DyT+kbA4Egd
	 eF/8JU9zuNeCA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9A669EC1431
	for <ddprobe@lists.linux.dev>; Tue,  3 Mar 2026 11:34:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177253769362.15806.9505954795884799699.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: d83cfa42f66e2b7d83b7621d7485d53b0aaa674a7a7af524922d32236b9aa733
Date: Tue, 03 Mar 2026 11:34:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1772537693
