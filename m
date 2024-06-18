Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 553FB1C2A3
	for <ddprobe@lists.linux.dev>; Tue, 18 Jun 2024 01:58:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1718675903; cv=none; b=n1tq9Q2xbIwE2zw8OvEgXE3OEJM1+3syoODTOCHR8SXk9VmMxuhJMJb9wRgOo2MWuEtBI9VMZPqzVYZwOIzZEAfRI4qTuDKu7ugcPCkZnUEzFBbZ1uZMR/E4NrkI897tuV1YnMhVvSMeEaiGmi8AlZVBQY/TjpRjZxC8C/OG6FU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1718675903; c=relaxed/simple;
	bh=Qmqq8P1PlX8w8AoQsV/V4xWgyBmkK/Cbi9hLMm/TQ1w=;
	h=To:Subject:From:Message-Id:Date; b=hmPe7zbqrcCHy81nhl2g5FcrFdfYZ79wojLP5P8LjRwMD/QkHE82JXIwjHn/eGHqQy/krWk69S2ij2hbYDPoOsC9Lyh5MBBfPsLksBW8XhDjpiHhyV7K0kkOyW8HCYr1/8JsknJEl7Sqt7+wi0ZPOlpzGNnUeGeRuEBFtRZ2rHA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=t/xchqz8; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="t/xchqz8"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D5D5AC2BD10
	for <ddprobe@lists.linux.dev>; Tue, 18 Jun 2024 01:58:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1718675902;
	bh=Qmqq8P1PlX8w8AoQsV/V4xWgyBmkK/Cbi9hLMm/TQ1w=;
	h=To:Subject:From:Date:From;
	b=t/xchqz8LmVW/6opGIzXHEu3uzMRjZhXusD7pUK0uyD7HuXWp2Ml8nUc+tWCcQOa/
	 1acHR8Jk5bOhMTKc98d/uHqwjgH3cEUD2srfGQQzmb242z3VLUrFOuphUrXz091br7
	 ekgS6g3UyK4B06EQyIeHDGv7nWQdQlu9UDrbf3fYvZNmOGMJvN8sFvGUQvRL7E6XmN
	 FfymQeOFb0omaYJaoit3zDQfNiZu4+H2lyl5RhJAN2xTQRrOVyjo1M1RqEETipxHm4
	 WiU7jPPBPdS2ae/UEKJ2u+Ux5tFdxy0pFlae6C1ZoWTeZe73IN3A9yf3/rdAeAg9KV
	 lIBjSFF4cmq7Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id BE391C27C79
	for <ddprobe@lists.linux.dev>; Tue, 18 Jun 2024 01:58:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171867590277.7134.5709876107309456875.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: d90010539186af1f122c1a8dd20e6d41edb6fb8eb73db4b3c69efac6a2124e91
Date: Tue, 18 Jun 2024 01:58:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1718675902
