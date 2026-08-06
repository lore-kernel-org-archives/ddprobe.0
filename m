Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5FDB341B8D9
	for <ddprobe@lists.linux.dev>; Thu,  6 Aug 2026 23:30:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1786059034; cv=none; b=S1gC/MI8T4vTKk66eHzibAN5VrDIKb1mZxC7CI4L0WwZgjZ57AGRSAWMaGH1gbwL12kxELP2LGb/k7D4ZjycaM04bZUdnSt2khoU7h/1gxNdiUpXXsanNABtZ5HgqB0lSBOUXWCVReoWTx4RXXwc8RdezOR3Kvwpn9NcetjQI+Q=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1786059034; c=relaxed/simple;
	bh=mEKOaLgaj3dVpqVtqzdfafMAqxEyZGaUK/NH42RgbJU=;
	h=To:Subject:From:Message-Id:Date; b=VO0vRALu11osZab4fjt4FcGqkYpWgCPbi/pkfoSA5g6o8sc0C2tkAID3ZE2mKa2SptZruT3AqKevpwh8LQdAlGLQzgrzOPgRyf54RkRtpp++8idWUO2kA0piWw6WLNBD0RGMdXcSpnLVUeca+2wR7FeRx6ostFGhUV0vm09dtMU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=pRCZnAef; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="pRCZnAef"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D9DCCC2BCB9
	for <ddprobe@lists.linux.dev>; Thu,  6 Aug 2026 23:30:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1786059033;
	bh=mEKOaLgaj3dVpqVtqzdfafMAqxEyZGaUK/NH42RgbJU=;
	h=To:Subject:From:Date:From;
	b=pRCZnAef4zysNBl2h5SlzUPiDlueVyDWaqS2CfOpwG/Fq+MuYtiTcxHAkYALZlI9G
	 phVN8v08QdD8evTGhHbjzilHYJQKriPfXf5//Tds96VSsfSfhnAuALQAdXhXJ9745G
	 M/BeOV7FCXwWTj3ZKnTJ7HTDqCF6E6pUoae/2GKHdOMNO+TQgMzM32SFzHZnFj2Q16
	 kTnHujZu3SJI1A5ivLajtJfIkYAtsTQx5aUfZv6XZwfmuvZZUUiwn1IC0UKZbfoAue
	 HmwzcpS8toezhsbPSUE84LzUf5wnO2DjUhbwQNQ4AcxwcEQCpm0z7fGY3XHtB+5PJP
	 YFAkdfO0KAHxA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B1ED4C5AC7A
	for <ddprobe@lists.linux.dev>; Thu,  6 Aug 2026 23:30:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178605903371.12930.9466711172614088195.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 3f7eee861801dad9aa5286f336789ac5cacfaa810bf3b46e6eb35644f1dc57ca
Date: Thu, 06 Aug 2026 23:30:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1786059033
