Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 58B79328B62
	for <ddprobe@lists.linux.dev>; Tue, 28 Apr 2026 17:27:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1777397254; cv=none; b=hwBLiFrSD2OFEb+yFAdd3qafPD5/RNbEG2/NbOkGRjncVh2Hwge0Zh6QnqzMgBaeYUpCUr8bHYxnPJQbTfO919askSCK1F6/B7xlKaWOM5RFIJ3IRuBI4OX/w6ILHMjPhk25ZiYP4E/0CNozae3ETSsSUyf704HHtyRwi7riR44=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1777397254; c=relaxed/simple;
	bh=P3fCTrDTuImhNTbjTST19M0jA6V8UT4jVoTY/f9k8ps=;
	h=To:Subject:From:Message-Id:Date; b=S8TjiEr7H45beYCPfXE1QTA21A78fTJvAZz+vh0Go/rd8nlRq5chTefaLXaldoiK0EWKjPrNOJwEmyER3U8oEcjnfK8hPeV641otX/fgZJfWKhAIo2UxKIn6fyCGo9nCjn7npuuDwo9bp6Fz+n01Y8rsCp378R/NjO2gxGrcGwM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=W6mw6Ad3; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="W6mw6Ad3"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B85EEC2BCAF
	for <ddprobe@lists.linux.dev>; Tue, 28 Apr 2026 17:27:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1777397253;
	bh=P3fCTrDTuImhNTbjTST19M0jA6V8UT4jVoTY/f9k8ps=;
	h=To:Subject:From:Date:From;
	b=W6mw6Ad3mtcRSpLUAXrRQ7538LH+MMqMsR5r9kkNYX9EBYygyPQLJR67MqN5fEYfH
	 C1N9Nu5OKO+PbUcPgUAtVLxyCYv4fWYa7mmFEv5w4LtP12xLNlyfEB+a2J9yTvEwPl
	 7s5tbhDOkgaSjIzCRZh21GWEpvys0DXCumVzEr9UfZjqDbv20/jEepwmNm++a4jJ3N
	 Iv6cw91guUJXeV6WisypieUvJevGc1l20ZNGklgQqXbfuDV8N0+LVYn37FlQtePvNr
	 0FBrby9bpxkAbVMZqdeNIRXLGtfmftENoG5C96/jvGIlqIHAp6vXKsJvyGI6m8lw7c
	 FryAi+o99E71g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AA1A1FF8877
	for <ddprobe@lists.linux.dev>; Tue, 28 Apr 2026 17:27:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177739725368.5079.1433627657412664627.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 628f414c6da8aea1f30ace9ea571c689884ecddc22b2a0d810b9a53f96052329
Date: Tue, 28 Apr 2026 17:27:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1777397253
