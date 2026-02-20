Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0AC5E32B98A
	for <ddprobe@lists.linux.dev>; Fri, 20 Feb 2026 04:34:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1771562094; cv=none; b=CdrU0B0j2ug4dKx1I20EfwsMN7QJunN3wzkgWbj1/1J1St85x6O/aeUhkEGCXvVjw+G/G6xrB4y3sFqOZtiQgyzewQC9Ex95hd5+2dAF7cHrjzNb+I90RY2qpNKUsbcq0wWfhBYqlhDM19jN/bvqOax4UBzS51HoRDr9o9Zor3M=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1771562094; c=relaxed/simple;
	bh=XmjmkePTQjrwuDUXYfOfMZ+ipZchiIsCjzmdLbPUfTo=;
	h=To:Subject:From:Message-Id:Date; b=SqTicf/vRNhj0IvQbRaqT0AKuQAJLLleD7GFKhENpDo0FKnDJxkGzqsznJOhqcwz96By4KLB6s4Svc3CIvf14Y3uYHF72r4fBIAWyKbtgdmT44uzf0rpFzq2pF2EuPTvj+EnJSA6G3zi/TfXs1D42sH9dB9wyHOlMe1w+kF1Yjg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=cYhCEefO; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="cYhCEefO"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B28ECC116D0
	for <ddprobe@lists.linux.dev>; Fri, 20 Feb 2026 04:34:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1771562093;
	bh=XmjmkePTQjrwuDUXYfOfMZ+ipZchiIsCjzmdLbPUfTo=;
	h=To:Subject:From:Date:From;
	b=cYhCEefOcNTRK8R3hajgR7lMCSFLnnWboKI4Q7EI7s/dua5SIrckwbc4IuNLJHw2f
	 a++5Du5JLOnnadPuR3mMzoNv+hBqOqV1/TRJX31qqYZ/+XUHcLWlwol/U6HH0Ofchu
	 4iPH9UBFYIejG+ZhlfCp+YFZ+jh1ANsc7aeARPzXt/MGI3+/807XX6qbU6uqSPVJxh
	 tpifqen3BnleFGZC6TbKXoVcQ44VixfU4j5TA9bdhsDi5Dhs6liYz58SDPU8bhdvpz
	 7RvmBqKTG2N5Nov69hlCCJ02pssws+5HtA9waYpUNp05JshnmRMAfYPn+qIQj+xpmQ
	 56ZlE1/VuuBcw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9D28EC531FC
	for <ddprobe@lists.linux.dev>; Fri, 20 Feb 2026 04:34:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177156209362.18396.8448809385332771602.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 2cb000c80dfdcc746d08afe994bf30382d2c86d48f26f7ce52eca0a6af0dc502
Date: Fri, 20 Feb 2026 04:34:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1771562093
