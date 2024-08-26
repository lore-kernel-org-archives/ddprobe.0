Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 314472C95
	for <ddprobe@lists.linux.dev>; Mon, 26 Aug 2024 13:25:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1724678754; cv=none; b=q/DWEQSjVau6rWLynRx9ZyENdtQLt/MgM20iCLnGkyP414VhUT3sD89pbomA2Tk/AGKJwlBl3a6i5mOAjY64I4BTvD1jrz8n3m6dcVwYBWO4gXk8V9/2u7dB3NwGMAVCBzBRJUTg8SyeTL4sHFXqcr1QAL/+4CxiOEkXTCL1yVM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1724678754; c=relaxed/simple;
	bh=y28Tb6/cKJRftTJZvlO8aI8fr6yzSPXRPqgOWxVOq+c=;
	h=To:Subject:From:Message-Id:Date; b=aopgEst1UIUblXsiN0Gygx706/9Gu+7WX10gEeHcU2CLE5bim3D4zooBUlOjEYttisPGKwWDAJJWnrHQrUL10vQm64L/UH2HBSnSnZ+6GX/mWkHWE2IijHxebW302R1RRJ8vR6nTQR5B+DjrHFuWbjeU4XbIOdPfY6fNSEhez3w=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=QEqeXEv4; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="QEqeXEv4"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AF480C52FD1
	for <ddprobe@lists.linux.dev>; Mon, 26 Aug 2024 13:25:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1724678753;
	bh=y28Tb6/cKJRftTJZvlO8aI8fr6yzSPXRPqgOWxVOq+c=;
	h=To:Subject:From:Date:From;
	b=QEqeXEv4duQfwWBvuAumTaIk0UY7XTjzXIsGaNNd3169jyHwfnaKJhAw5hmkNIV8A
	 mD7mZfBW+Z6bXgcyhDXTpTaSAeW+1DWmst2yX1/Xgz3Q6vhEiV41Fgx6pQGvdybHv0
	 nR8sPUF2VuP90xIr8mftYwNKOdVIppWp7FcdW3mzNcnKfjU0Mk8OVFqW/dHKICOzaO
	 solZzAQQ/qBwlU84wmgKfrEe+zINQjTMorJ2+eyB0w/As6cdGBDTAfzU9w+6Dx1ryS
	 PkvC78DaSLRVvMC/MjHy52GM6lyiWov7G0jaPccuaWtFD7itBrAuQ2rU6tHXOWjj6j
	 WOSX2NRJIaxdQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 97B6EC5321D
	for <ddprobe@lists.linux.dev>; Mon, 26 Aug 2024 13:25:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172467875361.25626.11441307564256434763.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: b50f8052c31e6a73a45f260e50294da612cb48926b9b8335edbcc02ef860df60
Date: Mon, 26 Aug 2024 13:25:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1724678753
