Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id E1EAA1E866
	for <ddprobe@lists.linux.dev>; Mon, 18 Mar 2024 08:48:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1710751697; cv=none; b=Z0q/Lk5ulDNMDuBJqvUNaTPOmhrxx6vBxvmSsnd3vHAbgOHkuyT1oL0HgjY68L+pYZRf7/ElCcs7UkZvJcukOcpk4t+2AViwdL3kjvfnTsCACqnkzdrCywQlXrDWsZCGwB0ofwgN9gRfPEwcL48GNGJFRyCeS8tg9DXx8opbuh4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1710751697; c=relaxed/simple;
	bh=Y8sDQlbOcifAuErzZHlogqOQZ94NHkcgMIa2ODrenEs=;
	h=To:Subject:From:Message-Id:Date; b=pukX2PVC6Btvt7IknnDGsdNbEq5f+k8SRzUuJnUT8uv1WNAMVdxbc5GzClUiaVlQT8uGV4v7tONeNzEWArnMdzz2Ul9FhZErcjQ4O0YguaFtMLqr1zmqDQ5JPEBGzSTi6bqoNVKbP7h1HeDerAwEf8mCveQP9VOt3xGbrejCdTw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=tktgHsOT; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="tktgHsOT"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 69281C433C7
	for <ddprobe@lists.linux.dev>; Mon, 18 Mar 2024 08:48:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1710751696;
	bh=Y8sDQlbOcifAuErzZHlogqOQZ94NHkcgMIa2ODrenEs=;
	h=To:Subject:From:Date:From;
	b=tktgHsOTDXPMZnOp9iedxIdlgT1jmBuECFAj9vfbS8xa7HnSolQztjzLx47RInN3D
	 iG4gBsCF47/uRDwZSgBIpQZakf+uT64NHCKr8cusNtyD1UluSCaSNbywsicpWCvecI
	 9f79cMiV19xAvyKYkEsT930+/9dVsKSVtNyRJNrBeph+kOftoEZ9hQHFUYN2CL6x7g
	 vpnlohXA1PSFrPAoGJWhnSUj49Y3KwCGpF9N4mKGuCMvmHjhbC9n+QJbRNHbOC8P3n
	 Yq6sd8C5ukvKl8USZSb+xEpEdfkBL7aDgo9VGVGgDNOjFjcaiu4TaKQCg4/k5MPWpC
	 85fsbjToytA0Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 5C569C54E6A
	for <ddprobe@lists.linux.dev>; Mon, 18 Mar 2024 08:48:16 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171075169637.28287.11824953780345595862.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 6c8afba5b64353650a3d3caf19afae13369f336cc113444b2c1639233f852b93
Date: Mon, 18 Mar 2024 08:48:16 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1710751696
