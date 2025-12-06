Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 253392E1722
	for <ddprobe@lists.linux.dev>; Sat,  6 Dec 2025 10:32:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1765017174; cv=none; b=C9olZHuqpGmKCqCBgf85Byo2r080DKGcLJwjELzpC0PYnzAW+XcWFRgZ4Pb/uDlPR9n6LxcwmvJ5zc2w+YMBeaI83OV764Mfk88KN8yn/lfWjL8eDJNHKTbo3pa8GkxjVXepXQaKe+m3ldG10/2TsRExOFLvwsLfhvA6dcEMyr4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1765017174; c=relaxed/simple;
	bh=kn/8w32CWqW5ln8gUbx2C330SemywjREPk0zKS+5z70=;
	h=To:Subject:From:Message-Id:Date; b=QU2VcR2cLVduBM1lBYZFUvYbfAOIkJ36SrYiLIbY/uPDH9kzFPRqcunF1VMDQAdVHZxkJsxDMp+m9EWampCnsDnR6R2kgiHpv0hY9PXj7UNr7KT8W/w5xCAd9lp0h9zamEEuiyyzcCQwApu2pZvLkHuSqS5I1FgQ2rRbphgBsr4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=k54ZnVVS; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="k54ZnVVS"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B0641C4CEF5
	for <ddprobe@lists.linux.dev>; Sat,  6 Dec 2025 10:32:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1765017173;
	bh=kn/8w32CWqW5ln8gUbx2C330SemywjREPk0zKS+5z70=;
	h=To:Subject:From:Date:From;
	b=k54ZnVVSBQ3BNbg54aYx/RQ0QTO1GHlAyUXudUBSKvKok20GNAHxy+BmqjpDbyMeX
	 O8QxtRHuoWGosIao49C02AcPDnczJPf7iHb67VxHoM7iOK9FA+TDi6msoYKnQa2kDP
	 qBObQ/bKgfMyZIV5a+Ducv9ZpVtXfGY3Zyoc4qCTknJldcmrSg5cHI9xBWW4gYyyBH
	 /FiDtiHiP8+f5hbtbTjmsbpRyCqhazd7v/kyUwaDY+OhSSXSJpoTbG7/rvegk2b/aI
	 J0KKIjMlgH4fQMHH70lfOel9nK511OCkHs3i25Bhd9dKN4GVoriHhyHcmLSKmX0mCO
	 6iGf02DQxsV3g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 99E18D3B7D1
	for <ddprobe@lists.linux.dev>; Sat,  6 Dec 2025 10:32:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176501717359.32080.8309566425817462366.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 428cb53773a671895b132262da4e06f63969998ee9153f8ee55c70b35d2cc9b4
Date: Sat, 06 Dec 2025 10:32:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1765017173
