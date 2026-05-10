Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 267B123D2A4
	for <ddprobe@lists.linux.dev>; Sun, 10 May 2026 14:50:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1778424634; cv=none; b=CcpkkesjcTyuKdkoLM9OL+BvT7goQiQ1tf16tZlC3tnIMn95rqi9xL6WEOLxR5b1kGKGsCilQ/Rlugi8WupdEM+ftSt/6MCrDhfKua/e78nIAxLLoS2E6W9qmlfW8Oba1W/urVe1ksLAWl715RC6fh+0CMCXPm1S6HPRZumxOOQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1778424634; c=relaxed/simple;
	bh=5uA3Rzqj2WsU+dbyJxvFSRTmmEyyCCzUTsvRFBT29MA=;
	h=To:Subject:From:Message-Id:Date; b=IweZz7MPJnATIJMyC7UI39dFqU/yR3gMcRNI+RNfHqR4z+GiX04ANAEWObOfyDvkDpBsO9j8v5sshroxSLkLGwunyxWZAfYIpaxmmlc2iJdQLfh9JNFf+32CidIEY25Tovgu5GqvZzi0ApSrcx56nxutYA8P7kn3p/JMDwE1OXo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Y9iWEszR; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Y9iWEszR"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C33B9C2BCF7
	for <ddprobe@lists.linux.dev>; Sun, 10 May 2026 14:50:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1778424633;
	bh=5uA3Rzqj2WsU+dbyJxvFSRTmmEyyCCzUTsvRFBT29MA=;
	h=To:Subject:From:Date:From;
	b=Y9iWEszRa6DrrzClqyRNAQTauUYCXroeKF3Ia/vVGtKoERRvUQeCEpCUFUQFClXwh
	 PhsSd32U851dmhQ2QXlTyW2Nyo7W0u3u6C/6CsFNfyVwbKcYc0S3bkpJ7vDN/oGKNh
	 1i9A8C7hkZi0KJfH/LjO/uMyR6zC53dIGFqr0ku2kxVKqsJuwS/qIqD41O890A8Biw
	 zLjm+bJXPgOfMzpxDhvovnFg8w0/pGJ2Pi3p0NgH0Dq/AnaQj7oC7XAjtp07bDyL3n
	 8xDw8y0rv7LU2RleKYvhQ/7hrzPNzSqqaKTmshmYjht/qAKJamEiA3VB04AOZfaJ8V
	 gsu32OcPnW5MQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B0640CD3447
	for <ddprobe@lists.linux.dev>; Sun, 10 May 2026 14:50:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177842463368.17039.1911848579117796319.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 104a7fde6e0037b9eb833a459a865a8945fca92e06078e52db5fa95e4d6dc190
Date: Sun, 10 May 2026 14:50:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1778424633
