Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 18391139D0A
	for <ddprobe@lists.linux.dev>; Sat,  7 Jun 2025 02:29:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1749263394; cv=none; b=W66Qel6heuyKwFYB/UkP7SAK3aI3wvVuWCpBTqa5l+/ILRrKuyNCY6mgLvq31KnHWrGC45UrhcVdcgGMGwW90q8f2r771kOHdGgI2F+fFXfpqx1TC33H67UE7y16zSNyZtnp/Hq82+YcIeOyjInCTlzh9ozu765eaWA0BIhv0Sk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1749263394; c=relaxed/simple;
	bh=o7+LnbInrwDFpmSPRSsFHDxHCEt25Vg0J6B2SmVhub4=;
	h=To:Subject:From:Message-Id:Date; b=Fe4j74EYo1N+8iROgsLjD/Er5CJtdO4h7omUUaFazrjxlAC30BgjWiMe2/4ECqtAW2JwrdJ5rQvIhR98VHTvGJo2lGHF2A2+eTyT8s5sdx3GQ0EtBdrn9csQL1yPuwZ4dms6rLSuTFCQP2TAdDIzToU5/flsuKMvOV9e0IJ3D0k=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=fYq7gYBM; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="fYq7gYBM"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 98699C4CEEB
	for <ddprobe@lists.linux.dev>; Sat,  7 Jun 2025 02:29:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1749263393;
	bh=o7+LnbInrwDFpmSPRSsFHDxHCEt25Vg0J6B2SmVhub4=;
	h=To:Subject:From:Date:From;
	b=fYq7gYBMYOJXK/C73k+fS0C7Zf7Y2wWMviGUebmfZF11M49Ooev417Xg4IDqb6YAm
	 W6+C3LgGTjSZ3iQuC5xfZyl01cra2dIyI7y1blRotDH36QabmnvlDPUdQa47pjd3Mp
	 4EqlhqI8kfvWmdl1K5XgsPe0YWH3apkOPUIao6LQTh8x86JTS7FxDuMjeNK2yuoqIq
	 XupEnFfpTqPxh0GHPa13oprMP517kjgXeQ2uEsEWJnGPCZGhl1sVdXezdlWy0hhw6S
	 5f6ZxTppjeAjinCwQyp+NXcaVXcvseEtmfeiHaAbTzJcyW9ivAsJMQ1368AyGunveP
	 OTwjc+ApWnk8A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8E7DEC61CE8
	for <ddprobe@lists.linux.dev>; Sat,  7 Jun 2025 02:29:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174926339357.16946.1798558334673823412.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: c0d6657e443829d601a2df1f761aada6d9079d333db29e09796bb2671134efa9
Date: Sat, 07 Jun 2025 02:29:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1749263393
