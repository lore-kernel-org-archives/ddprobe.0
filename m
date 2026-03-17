Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id DFB4D37C91B
	for <ddprobe@lists.linux.dev>; Tue, 17 Mar 2026 18:54:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1773773693; cv=none; b=pZ/LY1kxvjR3OvN/gymxuRZhFfKRhCKLTCaAiJAeKDPfU/0Q9M3g5+j5FOARl6hGTfCyvJfNnPKNt6K21pEurzsMQ25Jpx8Vc4amHsNdlO1thjo3lvegNrn/orjJN5xZa0hjzrWfV2sMOO57VcuaRrxEEfjKhdIDLSp5abe1MTE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1773773693; c=relaxed/simple;
	bh=hEKyztbswslAt+LGNor5mJxAl5WlJ4u5hn7SPQ1W4rw=;
	h=To:Subject:From:Message-Id:Date; b=ChzFjUWOeA8/VZ0+w19CRfN3weHlMwVht+N+dawGAswuck9dcxHuTJWcC8GdnIPEjhGDttf48hF21uvE9AW70tnL2O/bcgaD7ZE1mkNo3iwuL7gXqiswoFwRZcttIdIVyVKxc2qKGRS+4MS4IKfuU9HVWBjX35iSNn689iqXp2U=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=YioD3xlP; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="YioD3xlP"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9E58DC4CEF7
	for <ddprobe@lists.linux.dev>; Tue, 17 Mar 2026 18:54:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1773773693;
	bh=hEKyztbswslAt+LGNor5mJxAl5WlJ4u5hn7SPQ1W4rw=;
	h=To:Subject:From:Date:From;
	b=YioD3xlPjvVdO+mg54YKKKqW69mLuR1VCQSmJquE7D9Jo5SqN7chNxJlP1V+lyEBx
	 7w7C38mIdvTBwbfcYwlncoryr6HHCyteeY++mevrEWY8vNePVdm/22sWKyka0d6pDo
	 1x7gt2O6RImmBFUxldE1wVYX+RyIKiPaEP0bXQcOEK1PGhcygMCTJ4idAgJMDnG2ZB
	 PMSLJ8Wg8og/qn8bdyPyMYPcRqmpkcyPfHF3Vu0xtc33VZIgX1oKgYVDRMa4bXHAya
	 tA6RK1xAbzMBrFPvSZqzuKa/BI+Y1p/FnjBgXR4v60s8FHa9HSeuGid/8kXlk4EDy5
	 56vMCY7Ewgo9Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8FC01FED9F6
	for <ddprobe@lists.linux.dev>; Tue, 17 Mar 2026 18:54:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177377369358.328.15311010262406657139.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: c8203616ce6e8dca5d7fb363139984170b35c41bc0f6b25f7acb48562f164aab
Date: Tue, 17 Mar 2026 18:54:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1773773693
