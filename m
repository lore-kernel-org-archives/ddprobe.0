Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 083232F5491
	for <ddprobe@lists.linux.dev>; Wed, 28 Jan 2026 22:03:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1769637834; cv=none; b=k41QwQoZQ+RyJY3BVpN4lJMe6pNqri4e5To+TU/Bd3RZxcRLsL+qrfZPUOMbshF60fkLgMvwIQ81Oot4CqTGn5sS9dpo6xx9bF+QVc9KZdPespepTeItTGS86beEDqlfDcI4/4J2e1L5fuX2UFoXeFr7afEHGbAYCm3MuQ7CxAM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1769637834; c=relaxed/simple;
	bh=z1Q/Jp8H2S153q1uStsyVuYGPXkERzz6EUkScOUDbFM=;
	h=To:Subject:From:Message-Id:Date; b=HHG5Nuq+OjFToYgEkUdvCXlEyCv88Z4XgrGI7S03ENOzO2BYjB3TWuhLlPo3tuX/V3jK1wfz3MkbL4YbOa3mXBDA5o7DvXi5LAxElAi4iN5i6lv+w8BMpbiMgU/5JTG3s2OFNKJ098yuP4ukxPL4NSXZ6kmCzfsNVvc5i1JokKk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=mkdMp1+V; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="mkdMp1+V"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A45C6C4CEF1
	for <ddprobe@lists.linux.dev>; Wed, 28 Jan 2026 22:03:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1769637833;
	bh=z1Q/Jp8H2S153q1uStsyVuYGPXkERzz6EUkScOUDbFM=;
	h=To:Subject:From:Date:From;
	b=mkdMp1+VFk4RYCEvMEEX9+jVKXUmQuCvqZAtS2PmdxwJsutQRZTS2lNdF6RmnUTA2
	 FBJzsNT/jBeSVyIrhd60gsyD6PbR9clqGX4Z+XRfWs2CvtFjTbnhs7aeTkGWADgA1k
	 Qg8ftyH9d2p5gVp1p4EbbcdV0QZV1zR+1S7gq71o7Of5PG9o9LlMiq6favozOBK7k6
	 huN1IJfEuLIAM1oQ+WngTnVqHY4Zrt1d84g5qXGfnxRIDyCJaBYW7X0aQUz/Q9Xk65
	 Tm5j+eZ7fOElXIkm0Paffgnkkze59QK5v6UqMRFd+31GZXYdl57nDdK3FauAT/q5Nd
	 151TYwIrgbycA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 94AD9D46C08
	for <ddprobe@lists.linux.dev>; Wed, 28 Jan 2026 22:03:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176963783358.13027.9456627057784313910.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 8944455eb3c65767be17c8ab241faba36a1c4cea8f41331b42a88e26398f7577
Date: Wed, 28 Jan 2026 22:03:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1769637833
