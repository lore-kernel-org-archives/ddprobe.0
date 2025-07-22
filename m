Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 13D792D9EFB
	for <ddprobe@lists.linux.dev>; Tue, 22 Jul 2025 08:49:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1753174194; cv=none; b=Y3ldvoEXu3Czl0vxi6X1PGvuWTGkOvb9Vf8vSR2PKyXo4R042WRMporxtRRU/+3uLilLUuVB5Nf1wZejcKJmRl+My71wM8M7H24pSokbbF3l18u/2zYWqQJFE4DpG8i/4DG9JSQNB3EoAjShBNccrGI6cJttm7LYyEbS8CV6aE8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1753174194; c=relaxed/simple;
	bh=nVygD5PagnqEh52hC4D8O2wfZkk/Qxs2HmQn4B0hFZQ=;
	h=To:Subject:From:Message-Id:Date; b=VTsiM4inBIwCxBGBSp7XPV9+OO7CV/ss77kuqlsU/2FFhDyaktRXUiAFH+zuiM3sVlkyvZXo/sfURpFIGq0Erzz9ehgH8/FwYfU90mnvCZ76dn+v1x0dSWrUg8O+aB6ZWEcJbStSUsWdMJNRYMxc0n1jqjvpuBSVNcW8T0MsmdQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=NF5F/84i; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="NF5F/84i"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A0EAAC4CEEB
	for <ddprobe@lists.linux.dev>; Tue, 22 Jul 2025 08:49:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1753174193;
	bh=nVygD5PagnqEh52hC4D8O2wfZkk/Qxs2HmQn4B0hFZQ=;
	h=To:Subject:From:Date:From;
	b=NF5F/84i38/Mt0n6k3TTOtZVkSP7rPU5RSPErfeSU0kUYRO+FLm5gkhSMBkGEEfJp
	 yrQyOrxc862u1gCboYwofP2f7Vne8R1ubbrFHVB35H8Ow+PE4kQNR4+pumCuvhL73i
	 Hx5SbUnZCZavr8watYH72420R3GzECMqBCuk8ix5OFng8DA8E7V4uR5+nLDWOT9u75
	 /HX+nKlNNNq52NNgqCtlgxYaQ9NdiZBoKu0L8DWWGz1fB/7ghH1xY6ymrYGzLHoRjb
	 5uLLpjRbczM6ZwUxERymQcn7MkdyTD241ufXhh80CZnFXzfsJ2ny9+IeNAEZKth05V
	 IlRw074B2Z4/w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 901D0C83F27
	for <ddprobe@lists.linux.dev>; Tue, 22 Jul 2025 08:49:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175317419358.375.16168805539618460036.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 9cc77c76317b2f3fb1934134246b2ea08c7c8e0b49a9a7c54d065bf46f0cf5a8
Date: Tue, 22 Jul 2025 08:49:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1753174193
