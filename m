Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1E0295695
	for <ddprobe@lists.linux.dev>; Wed, 24 Jul 2024 10:45:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1721817954; cv=none; b=F5+LAP/6BkIdJFSaEdEGttx1TT8Y2yZtVaW/BE03yMX6nBM0t4sKoLTS9W90CkwmlBJEl/9kgoJxr971KP6kb0kCFgv+RrmNABJF/R/HwOop6KcMqtaiRDcqDYVs64VDgWo33IqN8tSVqL0mnLW5GtoPF5JeaP65SxRZKKEoKhA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1721817954; c=relaxed/simple;
	bh=pFKBA5WgP4zjKW+n96LzF6Mn+SEi7VkA1igTSc7LESA=;
	h=To:Subject:From:Message-Id:Date; b=m+FAyyymMyl0phfOxj539bePS4hSUZ01trW5oGkVWIOUCcNxdtM9HS79CrkYitKxgz5NUhIRI4SuSw2Ib0sKnvqCSOQkSFbL1ysXOcBTusyPQvkrbbGw7GU1iVgJVCLCIumGqqYRXN2MK+ihNXbiHDOTk2STJdlZDO4s8DDog1g=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=RrEYXW5U; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="RrEYXW5U"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B320BC32782
	for <ddprobe@lists.linux.dev>; Wed, 24 Jul 2024 10:45:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1721817953;
	bh=pFKBA5WgP4zjKW+n96LzF6Mn+SEi7VkA1igTSc7LESA=;
	h=To:Subject:From:Date:From;
	b=RrEYXW5UA/niwrrkK1SkCnz75L9PswBS5aVqtgFnPjraAqP/vvtFHOZZQg+jqqT4Z
	 4bHLFzhk/QNaVI+rd8WBUOy/EgPkRBXdzrXfaG1qlQ26/EBhP/UkqKpdujvX9UsrLT
	 tgXMFcXKwarpixRX+wdwaWgkYz4i4XIbtvSzp+W8Gf6yGTFTHyB/QUVrkgLw6fbaFe
	 s63F8725Eh9vDwznSCYOoBWpqgKnc5IAU4pEiHPz/qNOA/gVzdpj/ua6gf/UWrU9Du
	 8SrZ7MhzW70vJuLp6skW6kIo0Cwu8j8GMIil1MTWVhH6hFZ2ccwwZBA/mSgt8Kjj5R
	 gFqAp/yxxAzbw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9C554C3DA61
	for <ddprobe@lists.linux.dev>; Wed, 24 Jul 2024 10:45:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172181795362.28804.16034012021992231715.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: e74dfea6d6e8508ff1f39c19670fc5cc8c631f1a2900fb64714eb7a07e92e90b
Date: Wed, 24 Jul 2024 10:45:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1721817953
