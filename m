Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2879C1DE4EF
	for <ddprobe@lists.linux.dev>; Thu,  4 Sep 2025 06:29:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1756967394; cv=none; b=A23gI9wNNIx4+Zaa1EFD3M7LHIILbLE8d+nE9fOU+ruQQmt0NBO4HPi4+jQvJft0vjpQa5CkO1YNR3WXNxupyiZkYNOdQMxE5ytpa2lvO0LFmFMM4+8QS+JHrNVq9r0WGcDstOG9pukWdQ3CFwB2WbuncjNHWSp/4Z2Ej/hqeNk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1756967394; c=relaxed/simple;
	bh=LEG/bzHeif0Y4LBkqfwRLRcN1zJJtxejcBwjW2leQf8=;
	h=To:Subject:From:Message-Id:Date; b=luMMbGDy+06BX7kLwSEpx14C8igoSCZiR6veGQExA1/tzf2clyQ1Pbo8EupwfSAV6ztrCTbr9B9NJloFg7sbIxQ8DBuCGO7dciGSpva4/UqxKgNiklps/zLo94Qss9TPvAETMWrGjme1foP5TwdB8Cp65zpP+HwQacghAZxV0mE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=emA8KIng; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="emA8KIng"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A58E4C4CEF0
	for <ddprobe@lists.linux.dev>; Thu,  4 Sep 2025 06:29:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1756967393;
	bh=LEG/bzHeif0Y4LBkqfwRLRcN1zJJtxejcBwjW2leQf8=;
	h=To:Subject:From:Date:From;
	b=emA8KIngpPNnOfAjNzd+hRND0MX2XcCImlR+PIJ7hU72NJGDXKdLWBuqz+i9v7oaQ
	 sKtybr6o4VHFtYwtBPS4UBJ7rTsxRV0pdxM2lRdRWsC0pmRfNhNVaBIqYAhh8Y0otJ
	 DWtZe2KLM0mR6EnhY80L2DDk0MKmlQhdD3/N0B8AZRpY5o8sZ6N8r/VP1Ao+3v41v0
	 lXueMHAcjM1gNWEEIVUv7kjes4QeIeuF+Y3VhLIetmsF7bE5A+Iz5139sstg8j0e+T
	 TYUcEILK5S68fucC8ORFQfGk1V6HKOdrDCb3gI0FokRHBFOD4/cNmHimmvWXojaKac
	 wYwTIa8vugLXw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 914A1CA1015
	for <ddprobe@lists.linux.dev>; Thu,  4 Sep 2025 06:29:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175696739358.16610.724584649840787497.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: f4624c0b6fe946f901e761e2d920cbd041629355a4d4df86d890da0b534fbb55
Date: Thu, 04 Sep 2025 06:29:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1756967393
