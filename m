Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D8EA81FFC54
	for <ddprobe@lists.linux.dev>; Tue, 20 May 2025 15:39:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1747755593; cv=none; b=PPNEuJBUmAe48rHHQ4psXuAJQh53v3beBWS+O1dAQQEk9XaDJxibciwvCLuSeMrfiFEHAOTP23FZcqAbnsEoGPMftVoJQYSoXjRaA0V8zfCm2GHHFhyvD9S4hhId3PnlraXHG7k8uDT2B0f0jlO7ZAG5Pi0oImR8kmk0ddMD/WM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1747755593; c=relaxed/simple;
	bh=uHH9oQ8nhXK+EY+aTAZk6D6ccz2lXUBHcajRFPzJ1fQ=;
	h=To:Subject:From:Message-Id:Date; b=mV4i5Sx9V/jWKwhywFkfAd1/HGjGeUDTAzUUSPkq9wzmvMPle2wCwOZ6ZNIdTxgWJB7wpwZTPjR2JzmhYJIRdoIypJO/+P+PK4kigtueTXPLkwwi9qKOiLAb2BGm0v91Z8TZdxfx8EB3vpZC7IeFOaio7XQPxF2674/wKqklIbQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=jIAMES7U; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="jIAMES7U"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9E325C4CEE9
	for <ddprobe@lists.linux.dev>; Tue, 20 May 2025 15:39:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1747755593;
	bh=uHH9oQ8nhXK+EY+aTAZk6D6ccz2lXUBHcajRFPzJ1fQ=;
	h=To:Subject:From:Date:From;
	b=jIAMES7U6THMG6Xkw0CwC4SmS4CFJYgz86kVKkB/4OwwyQlw4adD2EceWz1hQJkl3
	 uP+hfn7Pka2bYupKIihatkvZ0sm7ntkOx272ZKMmEI0/pQvUdxnvFoVIbuCpHh+7Hs
	 5aa/PZcT+XkJe7UySPFruApoDPlzx4pWQyuzkEYty42tOD2mgIGry6ExgOkotjkO7c
	 AXE8DCq+h1uy/+Q/wJIUcOcosKQMW81m2YtHgSXdSCtB/0+CxXvlb1ptXSDZlPOSaK
	 3/rPSixM9S9Ki/ruLbUsLMOHYdQs9WlGvUrfd9gq90VHNzVczUm9E/iFI+dGaC000X
	 FbP2m7zz6mZqA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8EE81C3DA6D
	for <ddprobe@lists.linux.dev>; Tue, 20 May 2025 15:39:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174775559357.11319.18315265085735142245.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: bae79f1328b0bd7cbce835440f671df4bda4ab2decf7d80a36add8d5654e39f4
Date: Tue, 20 May 2025 15:39:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1747755593
