Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 16ED7158DAC
	for <ddprobe@lists.linux.dev>; Wed, 20 Aug 2025 06:09:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1755670194; cv=none; b=QN59ZoEc+onr5+Crfw9CXNYZue0OUt5MbZgxVCnITgoPlOMONtPhXUobF5vUvwi7NGPftkncfxicr5h8i72iJtyDa90mXpLmfpuuPFIGyzeogt/GSDKjmqRAqsayu6wgc/g/cwmjIjRlDFrx04h2ABLqVv6wXopBdUcV0B8l0mw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1755670194; c=relaxed/simple;
	bh=64eO5lcNjk5P6zDXEr3/FOYOj3vAxNQFT2J2XQ1dOZw=;
	h=To:Subject:From:Message-Id:Date; b=dsL58Evku2njpP2kBIyPRxiAdBSMXSSSuusgKamnmMBUdFmtQDjG0uVj3m8UBEL/D8XAKu6QP3v3/ricpCsDZsXwQHZXPPiyAY+mLxoT5ykqoKg6fbFZ+3twWmX7l2GvUP1KVE9pBFWZU94DsjUVx8wAVx77Bh8XM3YTxYymAN4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=J1W/+fJv; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="J1W/+fJv"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9B054C4CEEB
	for <ddprobe@lists.linux.dev>; Wed, 20 Aug 2025 06:09:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1755670193;
	bh=64eO5lcNjk5P6zDXEr3/FOYOj3vAxNQFT2J2XQ1dOZw=;
	h=To:Subject:From:Date:From;
	b=J1W/+fJvm98Pk5VJEASadjSgcHs3aCN4NBiLM0ZnQUyftcWg7QDMEue5MbK7RqN6Y
	 KVWooSAbNXA5WksokNCwH9FOrTalh4VZvSLFcMolozwKNx23vMl7HbpnMNNalhKGGU
	 XRwl9IsnTySUW2xxviK12o4+LwgQnuaUcK2qbH8ZjPFyNjYFrNmrRosCNHoX8Zbi7y
	 5o1po22Qi19M5Zgm2CoyAv/JZWJK+Zt96F5AUZUqB+Py+ut6g7ucg18X+hJI/B0Cuy
	 xFWVfUCvESDE/3eJwEo6F2MSSy6lD0It3Dj8j4vpIuXJY+48YdJk0AWCZrF46FYzkn
	 g6L7B/4WGEVmw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8F0B2CA0EED
	for <ddprobe@lists.linux.dev>; Wed, 20 Aug 2025 06:09:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175567019357.24014.16867728036412035265.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 5b63fea09f4f6fa9a79f11015cbdc72ab5d696beb9daf28fd3d40c8a85df02f9
Date: Wed, 20 Aug 2025 06:09:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1755670193
