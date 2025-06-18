Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 43C7B27E7C8
	for <ddprobe@lists.linux.dev>; Wed, 18 Jun 2025 07:09:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1750230594; cv=none; b=bPLW8bxlDfPIQy6+oqKmHj+mrvL5YeTlpuJ1Mce1qs/uUijnrZLL+KXye2eJ+cVCs8ocNqIr+EjjvWcqpdpFJdLJVAE5d+25MgOaZMO9ciwks2K6Gcvu1bQcIzAkXLRIeyzu/CzMYwjIqmIBEfa5gWIXq456q+N1tgZz9s3pklw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1750230594; c=relaxed/simple;
	bh=D/VXwSdhlBFNvQIy6akOo7T5k6AeIrECtAmv0Y0k9x8=;
	h=To:Subject:From:Message-Id:Date; b=M5okbwuivhZv6pI/JUo3ZA9W2kvHAUGO/p0wzObX3xdV+XDEwz8OjT3NG1nfRFshk/DhI5Lcio4D7+jASi6EDcRhD236/XmMjdpx/Nbf/Bk0AUae8RTXGn9MwDrzf5FSM2drrvVGzE9/gGnf/5QN395MeMkr5/25pgVRA9Dqp1E=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=gHbMdiL5; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="gHbMdiL5"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B6C0AC4CEE7
	for <ddprobe@lists.linux.dev>; Wed, 18 Jun 2025 07:09:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1750230593;
	bh=D/VXwSdhlBFNvQIy6akOo7T5k6AeIrECtAmv0Y0k9x8=;
	h=To:Subject:From:Date:From;
	b=gHbMdiL515cx8XKmA3V6lCxzFZkpsUxfVKi/d1MZ2iR5EsG5Tvays+KrOaij47bMX
	 Rg3Pw6FAPHgW1KAgsBDPOkWsHW0F4YcYfHvMiYMzws4ToRQADoplufcFAVA9ZDJVHe
	 cf3dkWTbwJ8ku/ymOWS+pnVLN4TSZs39KeFe4P4ljQLBpU1OD2n68Llm+ShhcLbmAY
	 SwiKTPZqYMPg4aOXC1VhMSVdxfUJwBT084Zsa7d+iWoJVrjOftFDVlNJTSLIcTeKzj
	 f58ba0B3p4hjY1XDt1jysph/+gRN5u6eW/O/pxhB+VXfSBg7mnNwJ2g4qlfMiodyt4
	 TK4xjXYLNK0lA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A0160C71157
	for <ddprobe@lists.linux.dev>; Wed, 18 Jun 2025 07:09:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175023059364.7016.16938404738599382443.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: a4b5ac536bb0161c833b6a2c7e5a9d8eb16fca1cc88af9fdac576d148eea7518
Date: Wed, 18 Jun 2025 07:09:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1750230593
