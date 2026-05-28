Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 345613B3883
	for <ddprobe@lists.linux.dev>; Thu, 28 May 2026 10:12:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1779963154; cv=none; b=igQOlDXWgIbzdXSr0TiObeEfIDhBejJO7Yaeay6zn6QD/DadRJCesj2v+OKoIxFX84XLeqPgBWvJ6kcR6xErq1vWb+9aIY9Ic0tY3bOE3uXYdhRaSnHlNBlx0FkI7he1CwBIvPI2bOfOXHHXOjRgzoW24Mwq1jDWYiHcfAIs124=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1779963154; c=relaxed/simple;
	bh=DFWbycLXrsfSY2tUMt8Uy2xee5GzaNlj6OyH+52XJik=;
	h=To:Subject:From:Message-Id:Date; b=tSDaFpGmZ7uDzEWWz6TTBulwebASABGz2ATLl48bitBEAEYd53pkgnwNAH/rXmKT3HUF7Ftyfh+4VGDAGZFo5HRd7gAPZ0i6j8UF3dAUxSoKo2vto2wfR8TIOX8yPgCrLGxGOZoOcxWAU91Kca7b/N9veoz6efnoIam9gOcOO8I=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=VqYMHX1P; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="VqYMHX1P"
Received: by smtp.kernel.org (Postfix) with ESMTPS id BEDDCC2BCC6
	for <ddprobe@lists.linux.dev>; Thu, 28 May 2026 10:12:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1779963153;
	bh=DFWbycLXrsfSY2tUMt8Uy2xee5GzaNlj6OyH+52XJik=;
	h=To:Subject:From:Date:From;
	b=VqYMHX1Pfi747A/v7tMkbLpO27T4fzE80EHm9FKW/IX4BMAnIhin+Nu2skXHUNOYf
	 9/J4StMy91RVRZERJ1T90MBS8QIdlRsNGFUm52uVQN7boOTEqRUH65ghXASu0kyB4A
	 kQKWJAlDE6OkOMfnv3fDFvYLnldHI4PvfNAHATsIE/s9wSQKn39Tvd7CSWUCglu/JA
	 MgtOW2OsqaBwoFfxo9M8hshbKAV3FDkarpfrbJFCT+0knl3tjN7yOCZ7Ttb0eRhCRN
	 ArHmqXKeLMWyhGcGA8rHx5F4IUeUbXk+zMx1x5+NVR+v0YliketPMlJq/rTcZTSrtk
	 vlb4/9uWK6kkQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A8240CD5BD1
	for <ddprobe@lists.linux.dev>; Thu, 28 May 2026 10:12:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177996315368.23021.7494752592388088844.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 7e9b0d702eaf9d22728ff23f7ec495c7a8b9631f54202b47d4fa27686a0d363c
Date: Thu, 28 May 2026 10:12:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1779963153
