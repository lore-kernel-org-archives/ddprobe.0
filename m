Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1BC471799F
	for <ddprobe@lists.linux.dev>; Fri, 16 Jan 2026 07:33:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1768548834; cv=none; b=iMmb/H//8r6DQRKmbA8wiuROoJGt9zVpiv6GWDTlX9ln7ZU1jqCM8j3VPkn9ezPvzYhF7YbNOXKlwH7203ldQEwCKFUDcD53vFzH+tDoo8lO2bobAbvKDDsk8jw/ESX7RmMggOsMeSdK0A08yDTfLwvTM/UVOyoUV1EoPJnq08M=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1768548834; c=relaxed/simple;
	bh=50Y3rG9JGjKm5KHFolvEnODxOyPEw+iSlcTH9cdyIAc=;
	h=To:Subject:From:Message-Id:Date; b=YNlo3vtgq/8nG1LDEv89m85894ctLiOWyUNr+K+l8BpTIhbilcb5Va7MFXxWhNM21XJdku0VYfbaIRZoMLYlrRLMDOxJVy7Wgv+v7Bf6rwGJU5TmTLxN7IuX3umTb6mRDbEkTsFdUNU7wggjvqHFVE8TsYk6X4IzLeMA9CD3XYg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=sGBNzBVF; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="sGBNzBVF"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9D4B3C19421
	for <ddprobe@lists.linux.dev>; Fri, 16 Jan 2026 07:33:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1768548833;
	bh=50Y3rG9JGjKm5KHFolvEnODxOyPEw+iSlcTH9cdyIAc=;
	h=To:Subject:From:Date:From;
	b=sGBNzBVFE6flmVN3gsi1dBhHq+6kBPF4HG9RdSPkPcI1tt6PlIHHj7NmxibxvDxKj
	 oOZ2opLWfy9H7HKfJu2f+9PUDarNNjrYlGrmn/o0AtWFUtQ0ovbyotJKfdd3+VnZnH
	 2yv6y/dm+lvzH5ox8N8hBk0CDNy4hMpR2EIcJWfj/qc7tdVuHtpVya1+1g94xwA6bm
	 kkzbn7v9rs2cJh3HpVIucmKPEorbS8ZOTrIs4xGqvrv6wkt1auz9PXN3IIIAa9o8Hg
	 eGE5/samVKKlY2h6A0HxbQCJKpqYcgQzHTUAuXHh09W5uR5p/PbQVlI0oCXZIk360o
	 S0UQRCugo1zww==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8DB7FD4A605
	for <ddprobe@lists.linux.dev>; Fri, 16 Jan 2026 07:33:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176854883357.30494.3792461793673246305.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 48e42b4b1804101a5de4cf5b63b968093cfe840ae2c670c8bfe70befd4a08a84
Date: Fri, 16 Jan 2026 07:33:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1768548833
