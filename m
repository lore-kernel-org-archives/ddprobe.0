Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2A76123EAA3
	for <ddprobe@lists.linux.dev>; Tue, 30 Dec 2025 09:23:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1767086634; cv=none; b=qHsspK/vHuUchePjtJX4xactfmfQ+qqw/fexjZUry4POxLe9B1uMdqtC7B4Zp+Odawsc/VJVWiNJPtgblG57W44lI0Y1kobwvpam/nwn1VfqCsNcV9oov1/+TOc99fry53yeDOLIDm9VDiO6Nz269dq/uf/zoqkMWdIzosWWo1c=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1767086634; c=relaxed/simple;
	bh=lsHOiOHnMiH2eI0E5gQmOpntjRXSvKwOwtVCgxMp2Lo=;
	h=To:Subject:From:Message-Id:Date; b=qEcYXOqfbQv4yIVLizrxCGavHsFPfY76D5J5u2Gp0TCkyFBkKqBB/s36n010c6ScgVKgtauN5Z4KUEf2PqRrSbwaPJDXI4nqZuX5Y2P97lfmGK42FzW77oMLCgouAH2GFT+qExMXpSYjAxJ3XQ4l4ODPU+XH+cut+0KkCB72gjM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ZDmw5HR6; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ZDmw5HR6"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A6D2FC4CEFB
	for <ddprobe@lists.linux.dev>; Tue, 30 Dec 2025 09:23:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1767086633;
	bh=lsHOiOHnMiH2eI0E5gQmOpntjRXSvKwOwtVCgxMp2Lo=;
	h=To:Subject:From:Date:From;
	b=ZDmw5HR6Oo8PMrFH1UgZ1FeRpw0tzpjlsCIBG/RhoRjjXSeedXH7kaiB1dBoW23aB
	 5tHV6Cuf/4YQwmjscMfDSdKILT328bbPq9xgaebadm64avDjzAnXz9kLUhXZdM9gAQ
	 4pLockJ2iFiqLTHqXtNacgHO8Ypn8CMctzOwNENlUJ8n+crr+VSvWioMoXCGyYT1up
	 n5mbS3THApgAthJ/eMYr3hU4uPYx5ksXMarfXU5S29vSpSxrlWprgDLmCVYCY2MaEd
	 ENgLQvrsLWJ83WmnYtBMmlOzTzQ5RdKNj3qvFt6IQizn0HqrT6xNmTWTS2OEss6361
	 R3wEqKI51m/Mg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 95421E95A69
	for <ddprobe@lists.linux.dev>; Tue, 30 Dec 2025 09:23:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176708663357.810.14056417920788649007.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: b283007d9c1a5e9883655bb4badacd6dc954f1f4f12e259be6c87123cf4f289a
Date: Tue, 30 Dec 2025 09:23:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1767086633
