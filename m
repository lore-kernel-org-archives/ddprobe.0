Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5EBF935280
	for <ddprobe@lists.linux.dev>; Sun,  9 Mar 2025 18:38:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1741545535; cv=none; b=RitfAmsXQHoeDWss5St250bzevXTh5tfFxiOdQrptSKJis9wR9/OxruS6sCKBIQzMogMdX1BdFmo4qYDTEKU00UrvJx5BeWC8KZ8wz4CwSHnMmHEhdZRIQE+ct2rgfSvuT5xDRVTcuMqDV9JhlLzSdkQxGg++5owmw+KpwkD0iA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1741545535; c=relaxed/simple;
	bh=2OKvGYA8qkfxNzxeDofzr1KgUFg0NHw7o15Pj0SeApo=;
	h=To:Subject:From:Message-Id:Date; b=NQE3zzywA2wHhKU3cCquVEg4l0wf1EQjLDETZWFlf1x9gKEU9moUKo3v1D2yyJ2FjLHD6Rbyc+Ak8d+0wXMWAussKSIsJoQOXlObsNjzRb73PSECTeeWfJTpr5TqzydsQqin8VFLwyrchfwbSYHCmyBlY1AfhpDPT91O4iWQgH4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=V0eZfG0Z; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="V0eZfG0Z"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CC3DDC4CEE5
	for <ddprobe@lists.linux.dev>; Sun,  9 Mar 2025 18:38:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1741545533;
	bh=2OKvGYA8qkfxNzxeDofzr1KgUFg0NHw7o15Pj0SeApo=;
	h=To:Subject:From:Date:From;
	b=V0eZfG0ZRQ6e39LvEuMPHrojdzaqDmUBCXCv3mzmPflayw3Q0zTv4TwWq48dPfkR6
	 +FAuPefJAsp91E/eQRTLbQKun+l+v5Bmk3YOLkcQjpFQ2g+tNn5AZzLQ0VjvRfUHJt
	 6E4V7qWgZ4bb6d+neyWnMLK4bi0wLNaCb+6JpnHyld/ofslbf5bP50iZd5zEVMatgq
	 eRusJFfaT3/uc5T3pZOkEcU65FBBXNZQW5Jty+pwRzOtUX85Y19rhsMW5lkspRWbrd
	 Qf115/jafYAwh0WOBJMGyBXPgJl0NUrUTSWC99QL8ZN40SMGFDaa/IPkKKJEuaXUsG
	 ez1h0UrZ8O0vA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B20E8C28B2F
	for <ddprobe@lists.linux.dev>; Sun,  9 Mar 2025 18:38:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174154553371.14460.1221751950789061397.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 235187595a6f8236176bc5ed4ea2d2a0036dbdff3497be2ab5b2aa160726c4e7
Date: Sun, 09 Mar 2025 18:38:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1741545533
