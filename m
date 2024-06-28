Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 70583158DDC
	for <ddprobe@lists.linux.dev>; Fri, 28 Jun 2024 16:14:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1719591263; cv=none; b=ch2tzal7/r46E8KALT6y2VUC8SZgZfok/kL78SusTmUcO+8xDTJnFUxy5ZjEy9oz2lf81SlZIO7/OVZwP9xTVFMntvPzYOn/USGQEY+hWlh3xFhzjMDT4jJlEMfe1nN9ru2i2bGah3KOSM1Fhiirv1yJfi6nltIzFmJpbLDRJdA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1719591263; c=relaxed/simple;
	bh=/HUWHkpRc3PksrnQZuhwAXfGYy9tYbHKpKbyErnbXig=;
	h=To:Subject:From:Message-Id:Date; b=rvL2G8nS7tDPuAzytdJhBAfVHXNcjRSoDao3fdwn26drX/Snr/pCIy+KvupbtmfAo889z9+ZufJ8k+1h0CMpeZ4kYi6wiTuVlWy5SgWQTF6rHKJrSPgKtk7+e9kzr0UNneLdvB6GuNQ3/vXYWEQtY889b7GhjsTSGPBYcq/76Jg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=mfsfeb8p; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="mfsfeb8p"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D7AF1C116B1
	for <ddprobe@lists.linux.dev>; Fri, 28 Jun 2024 16:14:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1719591262;
	bh=/HUWHkpRc3PksrnQZuhwAXfGYy9tYbHKpKbyErnbXig=;
	h=To:Subject:From:Date:From;
	b=mfsfeb8pFLoQLR8lEi55F07YoryHKDhNfqtuBGBrh8d1vPWYVwwdreDoKjjbefkM7
	 Upake7gc+UsCHpWLIfiQvI7i89bLfPo8NhTHWbFIOKR32Z5+O49C1xjnEKqcmeLmba
	 xPr4jOvsYnjGqgBvoAb0O6GB+9hJsPU8/oC5Fj9gj+miK91H96gJVK3pWfmN035MuX
	 sNTwYPGpmrl+QdSaclimIuJbRErLBZmLrijEe244La/GrkVyD6vPkz3xlErGZjTDgl
	 hE/L/cdfsYjHHaReCALcykCAqGwzkR1hzlo9IMxw1/NrePBnfL1N8W3bE4FACqRsRX
	 J4jORCI9MUE6w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C36A5C2BD09
	for <ddprobe@lists.linux.dev>; Fri, 28 Jun 2024 16:14:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171959126278.27184.8179585971122689796.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 6a619485030381db1bc92261c202f2f2eb536bda90156e4fe46adf391d084e2f
Date: Fri, 28 Jun 2024 16:14:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1719591262
