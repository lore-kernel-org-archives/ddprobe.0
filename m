Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 476F31F0987
	for <ddprobe@lists.linux.dev>; Fri, 28 Feb 2025 16:58:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1740761934; cv=none; b=cu+uVMb4xwEe3MBFWVXc6yfVbP/orDQTZLpJpOFVizckELDlowyEhxZG5+Kun9fbWGMvkOV9yVCMz1XaWZVnYxcTUAaJ1C/S/egxHns6KNTRj4dJF3L/XpZpRt3gWT2OA9h//NeWZZCcDm1YZPxlSquIFekoa03D94M2DHDRzDM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1740761934; c=relaxed/simple;
	bh=otYKnohyY0qJZA2RuOuFRHQJR12qIG794GwjEHi5gT4=;
	h=To:Subject:From:Message-Id:Date; b=K3NMfQdpApFNewIf3BQPXaNSAnwTlZ1KVN5CeAHxmYlnXSCNK/i4gUF1Ppggg/GORxEKs6mGDvTN7hqZYgDQgaTw7oNFaQsP82pxc5/c7lpizTLEF62vG/Rpj0RZeWS5mkjvB3fZEgPgcXH94sLdrQs7K1xXBwEXetIV38ubVNs=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=CcvOjzb1; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="CcvOjzb1"
Received: by smtp.kernel.org (Postfix) with ESMTPS id BD5ECC4CEE5
	for <ddprobe@lists.linux.dev>; Fri, 28 Feb 2025 16:58:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1740761933;
	bh=otYKnohyY0qJZA2RuOuFRHQJR12qIG794GwjEHi5gT4=;
	h=To:Subject:From:Date:From;
	b=CcvOjzb1PrY3brE6FBGWrxCpoi4pV6fjWJR9W2mN6v+QGrIRSRuL95K8TOCTgDDAi
	 docHY44LqhQHPYu/wTKOj3dop3SI7pKBFf42sa9kePeRviwLgt3UeugYtd9ao7WKHO
	 KdjtV6hzaNc880L7ewpgywP/u5lSPJcHcO02xO4k3iETeoiLEVaTIBKByx1PvhQBls
	 3Yu9fIQSWfDDnDHlBXc0QG6YasIb9wjY6dgAWCJvJl3fV7zUzulhQx6sJPO+oMtkoF
	 HfLeD1saJzZ72VQLM38RgYviOxAt5BeZuufSuTj5UI0eYcQpmcRC4Ma2zd4OejnLj1
	 G59ievuHEPOUA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9EB37C282D0
	for <ddprobe@lists.linux.dev>; Fri, 28 Feb 2025 16:58:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174076193363.15898.7411493543191859138.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 753e5a468874a37a85a75801911aec491704fe1a6cb0e7c3436bf73ad0b3b21c
Date: Fri, 28 Feb 2025 16:58:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1740761933
