Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6619CA935
	for <ddprobe@lists.linux.dev>; Sat,  1 Feb 2025 22:45:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1738449954; cv=none; b=hkSbPWV4O8WEcjKTnP5FHlQ77kMS+NuWfkkCRezxJVLUUA3GP7jPe6pNtGI/SAMI36JT01lVqhmCULM0xL/3wDnl3AQMasHZ6l54gtKGxbVeeW52fJ/werXkcywwEyElgSZFrn8ssmR25gKYa9911joUZ0+Cqr79AUA3hRCZRkA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1738449954; c=relaxed/simple;
	bh=zKvfrcb6u+dhO5rTfkE97L08DilrKueVEqUz4lPHKrw=;
	h=To:Subject:From:Message-Id:Date; b=iE2UQLBLO396j2CXnhsl3v2CM3JBa/1Cdw5fyJI3v68QScZWKiXEPIcoRSnfR/pyVtQH8P+e/obfydGnY8SMQsdJ+k7FHR1dmFqqCwJxF913Ind+u8q2QCmG/kK794ZIS9iZkPI04frPz59UQe2wN+aKzL9PVgIf0Y++/855f2c=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=VSsSLzlC; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="VSsSLzlC"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B7EE6C4CED3
	for <ddprobe@lists.linux.dev>; Sat,  1 Feb 2025 22:45:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1738449953;
	bh=zKvfrcb6u+dhO5rTfkE97L08DilrKueVEqUz4lPHKrw=;
	h=To:Subject:From:Date:From;
	b=VSsSLzlC2AQnMF7QyLGIBbrKK7KtJDgp2dzlLroVduHDcGtnsZn0esbWmlfdQw4YA
	 nXDr0cx/4pnIK/O6i4EHA3a0DjQZAlzsaJFJFczLEZ5baeSzGV7htR7IPCfj0Fvrh7
	 RBKGExDhYCvb//Vad2esq2VCsXNnwwm0+x1IzHZJcXIblVq7uKAsqPB6A+RtLyX4rl
	 bUPOcIipvxSWDF7td7cwJbmEC2RfXOU+5k3WHZ2wlVbyNDne+Dq3AxJHyPgaVjlbxt
	 F6JBjG9d93O0ckdOr1joKx9YABPgwkZBupiaiSeQXNvQehTTqxSBOz19NkxWPM5GGb
	 8UI3rtlb6CPfA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 93B2BC0218A
	for <ddprobe@lists.linux.dev>; Sat,  1 Feb 2025 22:45:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173844995358.21061.11100171534319841455.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 3523bd034809c3a51e428b8128a82c1c8b6d925df9eafb32e08660119f70e2b8
Date: Sat, 01 Feb 2025 22:45:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1738449953
