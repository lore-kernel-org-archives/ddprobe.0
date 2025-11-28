Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D8476134AB
	for <ddprobe@lists.linux.dev>; Fri, 28 Nov 2025 18:42:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1764355373; cv=none; b=uixVVSxEHGf7WwGFCr9pDqTHfgQdjdGhaY6/Fp9C+pkj7PHF/nIhM9aHj1GS4dLJcRT3sQrdVBIRYH0+BzCipDeLzHJq86158WtKljhEditutd+9anQh0/ffUQvE3q+upKKydUa26A4NpS10LY5mTbFcCbnTFcAMH7HOsa9zsP0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1764355373; c=relaxed/simple;
	bh=QvTHXni6yKVn6Kt2O4iSq2nPBVJYnbxgPmXjera80hA=;
	h=To:Subject:From:Message-Id:Date; b=cKEcBXKw0TmRPwNsFDiOz4A1Jm4XewdpwXhRZrgGyDgCCYQ0CvEHaY34AKnJeb1QPClbOD9IEnrCOBnVLUvghTvJOGIyi8ibcBmMTAcPnSUhzU6kAVREvE0bvBoshrK8BA8wI4iK0pgQ0rewKUxXlAulJv3YzYcKfOfA2p6jNZ8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=AdEjELzt; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="AdEjELzt"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9C082C4CEF1
	for <ddprobe@lists.linux.dev>; Fri, 28 Nov 2025 18:42:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1764355373;
	bh=QvTHXni6yKVn6Kt2O4iSq2nPBVJYnbxgPmXjera80hA=;
	h=To:Subject:From:Date:From;
	b=AdEjELztgX67lot4LREiBg5fPef71SmdkM5nz0WQML1kC6dATSMbt8L7dwDmv7haH
	 14dpFYDqGLnCQDAadsGyp09rK6TKcQ5T2dadMhiungx2lVhMoNPnUYBZKDv4m3bEBJ
	 8tYIzgo91R2capASaM3+dBSkbBroDUIAxNrqCxXMRLJs7XgTSe5GU5WaUkWQwtlSYt
	 b9w2vJjEPPDOuN3LnKnhN7U7rPaXJ62vvUTlNLOdbjHOHwl3W+JeDDOWrbXrNTuNDs
	 GZxLSVz/96L1rcHyNTEiTE2EJBiQTuHKofQpZeXOH7fpCAocZD7CDzM4YfQhQCxF/s
	 1SHpZfOxu86sA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8F2E3D116E2
	for <ddprobe@lists.linux.dev>; Fri, 28 Nov 2025 18:42:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176435537357.26711.10961953529675837632.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: d653db36ac34db3d301b383d9264221337ff73fcbcc1fcbdde6d302a3f979768
Date: Fri, 28 Nov 2025 18:42:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1764355373
