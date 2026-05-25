Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6721734A3A5
	for <ddprobe@lists.linux.dev>; Mon, 25 May 2026 06:52:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1779691954; cv=none; b=hp0zDHJpecqtARNC41lMVX0eu6H9DthFjkCQwTL8AYwpciwwO2FDcn9EwqZM8dVGKXAVhvmExo5gJcGUHQ//oAqzd6A59GWiGbN+cmuaerRWFzLMI0fzjP5uDEOo8ztHMfE7vf5sVCnIOVTQwh8fum0o1HEkUMBnjBXU1jj99Tc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1779691954; c=relaxed/simple;
	bh=sAMFD1qdDIM19UJc7nFxOlc36IPuPerUKvk3eE+w/rg=;
	h=To:Subject:From:Message-Id:Date; b=q+KZbyMEkApsOed2jgTX2tp16BzolZ8Q4AGW5ILaIU3yZqcdjNnLDIOsRBcTPS/VJ3OYQQ7CfI0Skr37NOq5ud6iFmhww1yO4CS0jsO50xUf+6mv0BD9lmWAIds8oDhkXEZgEZ3iYTbFW2HAvR59FLm4VKFqpdRKd808JPYV404=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=STsGkVbN; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="STsGkVbN"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C0C54C2BCB7
	for <ddprobe@lists.linux.dev>; Mon, 25 May 2026 06:52:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1779691953;
	bh=sAMFD1qdDIM19UJc7nFxOlc36IPuPerUKvk3eE+w/rg=;
	h=To:Subject:From:Date:From;
	b=STsGkVbNaboltP205TxmWejvxjZaF1lpWYA389eTGIPuAU65OBpkNohOHjPTh4eEn
	 m7vzyRdn8u3xRJ6it8MbW+5qeXu+fasV97yRZiaUHXc9rvj//u0r9InOeOYzU7iZPa
	 5iANDSsIK9WGTYw4OkgDQZGuQ7myyQkHMWrwwLOuKDGq1R1GnHeEdL0etGrja31jTL
	 HnvzfWjUgJi8ESSA/ihGjpPv5P3U1TdgjxEk3O2M41d4bSQic4W7D+sj1I3Kl66TlD
	 2lmES1PFWUiDSHLKhjXZRyhFyyUVXq1NUs8PYIzvlcL04SRFemyG2sXkXs7Wkrt3wS
	 nJUhHJCXenkXg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A9A0FCD5BC0
	for <ddprobe@lists.linux.dev>; Mon, 25 May 2026 06:52:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177969195368.28533.13290614232313321354.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 05b231fc2319e3f63b8da8b95078587350572ddff6ac39c0b6ca3694fd51e9a1
Date: Mon, 25 May 2026 06:52:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1779691953
