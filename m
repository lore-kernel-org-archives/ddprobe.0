Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 42199265CD1
	for <ddprobe@lists.linux.dev>; Tue, 11 Mar 2025 22:28:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1741732134; cv=none; b=PIA7Saz3/5p26+Xv3xakNPDW4vkujybmc1gXD5ZCOOUGjXVPDMSqSx3TzwKbj1KsxUkcebHVU51lKsJMRu4WlF7ksoPI/QrB4tJrvz3kZwN72WoFa3MA9SwsW9rC15ghlT144iI2HYK619N7Y00Q9tBzUm2AI+3xN9LG0t6eDZ0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1741732134; c=relaxed/simple;
	bh=a3NCEbGDQy/LACpeMHQTNtL1r6RZwnIkIwtRyqgCSDk=;
	h=To:Subject:From:Message-Id:Date; b=umh3+Rbw1ELJaL4n8nQMxwQz6p4vmKQwngYUDLZaQnB2FJbkhEeGWFtQBwfo9qZiypUgiOhh7Q1VYcouD9UitVsJ3vYpWHhJbidVYhR1OaayVyudqte4ffr659eB31pjAVTq0JJdcnv4iMiDjlq6RLO9YxQllTQsm787kmbxgsY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Hal/ByRt; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Hal/ByRt"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A5B98C4CEF2
	for <ddprobe@lists.linux.dev>; Tue, 11 Mar 2025 22:28:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1741732133;
	bh=a3NCEbGDQy/LACpeMHQTNtL1r6RZwnIkIwtRyqgCSDk=;
	h=To:Subject:From:Date:From;
	b=Hal/ByRtbLJiFSaaCy8udsyqQ0s8gwewLdTLfs18K9XH1uJ4drAq0F40hnoPBdJQh
	 +e5UoYasPEp8n/YBOuvNkuYoMGmtoBhVZp2UB89b/4eAMPGS/vdCApQ1XTCaUAsUYH
	 e+kK9wWj0/hTmrw9ihI2QpJLBpy1kIzHzN5s4BbhjNK7jxJEgKlyAQ1INOBKgX4Dz1
	 b1nI8xAvF/l/CvCrQmVS6xqO+dmUIcQ6z9BeCNLx2X8CYAEGPQAjit6cVGZu3bqE9d
	 H/eLs/t5Zuv87inTrBcIcWu9ahymIJu8cHbyI9ttzFidj2OyTCav1RZaEMp7K/7NEs
	 NyUzOwM92O4JQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 94D20C282EC
	for <ddprobe@lists.linux.dev>; Tue, 11 Mar 2025 22:28:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174173213359.19467.6398412644187741086.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 296ffae7ddef722f783ab58db30a912a3154769d9fd9dae2b3baca7dca6c6a9b
Date: Tue, 11 Mar 2025 22:28:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1741732133
