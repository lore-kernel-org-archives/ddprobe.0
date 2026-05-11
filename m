Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 23CC42D47F1
	for <ddprobe@lists.linux.dev>; Mon, 11 May 2026 22:30:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1778538634; cv=none; b=qB6VF/aIDCSp35GISKxucovsz6BhOw9lQvPHotQurzv0DSKWnTMeofMjM9ehXuDCmYsLnZfhWBxZO+7ruC+1Maym900DO1h9c/SLd25PQzM9Mczos7A7TH1GN+MS39HBjVR0iu0+qHyKCov3slevCODrgOaquT6J3k6Y77jZpxY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1778538634; c=relaxed/simple;
	bh=Z3kyTMIAyywOZM4i19104KLqk/P5JPe2+bQrDsRMEBE=;
	h=To:Subject:From:Message-Id:Date; b=cYhrRK/Rdirp+XBdK67vsUrz+X3SMtKgDHF5IRDcwo44Agszfg93TF/ECKUT4v35aT4rHek6q0ZfW16pIefc+oNsMtHUxXo2e0jCoojW084RWCTyvmRB7RLCpTvyJJPDZFIOboVFgjhyck2eb5AmRDAlCwRkrGE1IBrr/q+zBpY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=BbKr6oZX; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="BbKr6oZX"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C1920C2BCB0
	for <ddprobe@lists.linux.dev>; Mon, 11 May 2026 22:30:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1778538633;
	bh=Z3kyTMIAyywOZM4i19104KLqk/P5JPe2+bQrDsRMEBE=;
	h=To:Subject:From:Date:From;
	b=BbKr6oZX5YBizLEUAKM/fbobQ9zb8m22d1dnX8zM0jMNkhFF7XcrKqrTcOj0Crkht
	 zHueojjtQFwPcPpecaan+7nPB7hPJswTb3a1cM3e3jERNpBzYeJA2+7c5KXLRkasDW
	 Eq7/kmrAZ3BBiSv/iQDFYvDLB+99F2AClBIrWOpR/ULN46h5Sc4d0osV2KNyeXAwFz
	 vm1ezYpXIlUAOryw/cKdFykz0k8PN7FkBf8x+IJGIdIFCzJ8JRVjP3IG9zGq0jBtAR
	 4prwjnQA+CsyX8ww56qGNsCA+25brbYZ7OEVnkb3IRGJWm5ebJbLO50JdunZezaQqE
	 piNfdXBGFabtQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B13A6CD37BE
	for <ddprobe@lists.linux.dev>; Mon, 11 May 2026 22:30:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177853863369.12888.11623708235383723894.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: a1ca3ce6cd9dd0b97c24bb226a723789c53422876351feab7b1bc9204f535f11
Date: Mon, 11 May 2026 22:30:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1778538633
