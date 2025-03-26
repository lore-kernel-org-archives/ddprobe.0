Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 47F491F3B9C
	for <ddprobe@lists.linux.dev>; Wed, 26 Mar 2025 14:49:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1743000594; cv=none; b=N8wEHjUDZ7J3jnY/qGvoPXJqqhpY/eOUebQasXfoJG1Be1wjnBj4C75a6egiSTEr05RXPxPCM47/EzzGrVETm+5MwquMCFScUjMKqmmRMsO9B7Ykssv7CwJB7iV148pmn51Rkm35PNVV2NSODc+DmHqJS5diNIbnQY4SNJIbRtU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1743000594; c=relaxed/simple;
	bh=Nb1XKIiIrbsgRgvDxZ5ilxV9zS9SL8TrNg/ktt+OIyo=;
	h=To:Subject:From:Message-Id:Date; b=IWOsDYj1JDEm52q18+juzTy+etMCNwo7v55d4IkxxOJBK6qMEhTW9orrvtdpqUJ7dWKLGNRcQUDJgqukvqvvwvunRU9yWApTi5JRyyPl5NDANTULFuPTQM1inP4YMeZPSrWCxrxBc1z+6zP8lbmeqDyQWXjUUjRVXipZeT1PhEQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=YD+kk1Vl; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="YD+kk1Vl"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B39CCC4CEE2
	for <ddprobe@lists.linux.dev>; Wed, 26 Mar 2025 14:49:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1743000593;
	bh=Nb1XKIiIrbsgRgvDxZ5ilxV9zS9SL8TrNg/ktt+OIyo=;
	h=To:Subject:From:Date:From;
	b=YD+kk1VlHXkTf6SSiQVtWSxD3OT4fl8EbOtx23WlAvte6fKkuZG1s4/M0r3griDa9
	 uVah/KNmwz2XAksYrsg0WlyEcsV1txal+DWzqjzjya1BQBZGZs1c3Lv7mNluQCZK4n
	 IGBeUToGVltG9xkiiHZNc3cWW6f2y1iygLOkfymy+bQXaNOuB6/Zkf4ctqWKN9JuJl
	 iEyv3PKYpifuDkeOfp2SW7ult5dASEKjtSz59Zd4Ikyyd8A/hImbFCqGA1PVBjuGom
	 ezSHbLLK6IIeWVxA28jVaWY9WwbPjt4sGVcJtEJoHIkMC4cRdE1uSOmEsep+uMjkwT
	 keaLhEcT4fqUQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9D59DC36008
	for <ddprobe@lists.linux.dev>; Wed, 26 Mar 2025 14:49:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174300059363.10766.2044534129312892232.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: daf7dd8fc113b763d84ed3cf74e4dea020a12783083ac2e08e171ce08d6ea9b4
Date: Wed, 26 Mar 2025 14:49:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1743000593
