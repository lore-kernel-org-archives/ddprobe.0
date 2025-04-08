Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3CA8922CBE2
	for <ddprobe@lists.linux.dev>; Tue,  8 Apr 2025 16:09:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1744128594; cv=none; b=PbEsyq4xYy0yDbrNW5bU1yvnftfgTr1nsTdR1VmGL4UUDSem7/Swpiduu0Oun4JbtUfJ9A4JEXMtd0G0jg1Ah9GRNvHDP+cOvApE0UqMyQhI2MWBwLX7ekmhdxcLr8JwILkkQisLql1lglnPXHeA8/r65rsDCS1u/MxdrOQbfoI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1744128594; c=relaxed/simple;
	bh=4MOh0fdLEfuEPb0buIlK9ClP1CZXEOAtMZLvbfDN3CM=;
	h=To:Subject:From:Message-Id:Date; b=BIMacLNEWmdyNiuQjbSj7yPCKb59yNJfreVQzR2AOrTfwBkVlIc4uyN+CFhNMun5ABti9IP5aLPqOeMwCK9EWmuvupf0D671xyWCWRqmY1NdidpNHfZuqG2lEPCenQKvrwBX9Ci3pfO/99/knsQMj1+GhukFcb4lI/rIkSnHXMI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=grKpkI3s; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="grKpkI3s"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B098BC4CEE5
	for <ddprobe@lists.linux.dev>; Tue,  8 Apr 2025 16:09:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1744128593;
	bh=4MOh0fdLEfuEPb0buIlK9ClP1CZXEOAtMZLvbfDN3CM=;
	h=To:Subject:From:Date:From;
	b=grKpkI3sXJdPOizm2HuJutrvsHKrwmDhos/NnyVRxuzR57EJuwnuiemxvIXxLIP0L
	 YIOKeRENZAFI8Z+hwsfCVHFWzKWYw/3ylHP6+rvHpI2s5CFESx9pJy9EoZBJCtazc6
	 XuhtU4uOCZ/XtBgsRoWfe3Wqun1rcIPxje9yV2sv1lS64+Y6H8nTz4HfPmXlt8Knp/
	 po31/pp7FFTxmWbcJfuqHZlr9+XxcNWyA76Y+KkCa+ue10Vdqw+5lYBrX92g2GkvSS
	 1Y19oM+1iQqqTdgxAwHzLwuwYWuD7tXi7EgayeDumq70ygmo3sV9BHHGlqyp+dkAwF
	 FcUw6V1saREbg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9AAEEC369A2
	for <ddprobe@lists.linux.dev>; Tue,  8 Apr 2025 16:09:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174412859362.9695.11870898181856930176.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 287a06ee6719ab22f37918ecdd04c88a705f0d444890deaf83f695837f9bacee
Date: Tue, 08 Apr 2025 16:09:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1744128593
