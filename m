Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 29ACD26A0B7
	for <ddprobe@lists.linux.dev>; Wed,  7 May 2025 12:29:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1746620994; cv=none; b=MgGvDCCW8BusepZquJlGJmC+dI2qId7HpcRyeR9UYRzeh+1dbjLmVNzfobaOWm8Uy9At3/YDnSBm+y3/MxJJmVj2uckYCEF8VHHaDtTdE9WiZPyz9etU7n4oATUpaRjMc1T5ExzyzZBTn0rwGuSoxcGZoSuwJ4UFNiVjFTzQOr8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1746620994; c=relaxed/simple;
	bh=UyET0fJ3Ybq6EOu09a3bv39imtTB0hZOytzK793oXNc=;
	h=To:Subject:From:Message-Id:Date; b=ffwHf5dj7esV9ZNynR0ZfgE8Un3bORZAfSYw2INQQbhiIpKAv+ZpyEskWChDHagVFBFTJPujBebgYlvgsQP93awlmZUzu4ImH9whxK4jTBCbGqBFNPtpfHZHzKlXpyA5tpPBxC1TCkXxJN/331qMTiQkRTCAcoR11wamlirRHv0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=r4XgVhZ2; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="r4XgVhZ2"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9D166C4CEE7
	for <ddprobe@lists.linux.dev>; Wed,  7 May 2025 12:29:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1746620993;
	bh=UyET0fJ3Ybq6EOu09a3bv39imtTB0hZOytzK793oXNc=;
	h=To:Subject:From:Date:From;
	b=r4XgVhZ2EcHOFXbEJdzagCky0fG0O11DCAbyD9dLb2fTV0x3GdSHML6z9OJH52CzA
	 mjov1IeCcWZ0/dUMyHCp924dWohrMOTY5io/PGCSLpIJsaES7VGjD5ZXSd+N3uf9uc
	 8I9i9S64HXRcE/5I0F2FYGPYyjC/groXw/D3rPsTx9hhrSHWEc5WmOlVeBnjZD/boB
	 Ad2e9dT6aSPJoTz8otNgwUg4PpChqLoMqymHut8I/mvgriYLLHs6CHpTQfLKjvRtzS
	 KpZTd+RxD5Gsv/Cz/7U7Y7NXkTg5SYp/itDWk/rxW/GgAfyBzH1+BnpKBUlGNJ8yNy
	 tDfl/h7WI9Rbw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8E445C3ABBF
	for <ddprobe@lists.linux.dev>; Wed,  7 May 2025 12:29:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174662099357.11184.6368065882581308149.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: a410cbf45b16d584eff7b39a875e33a803cf5a2211dd225699ee95266b487e34
Date: Wed, 07 May 2025 12:29:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1746620993
