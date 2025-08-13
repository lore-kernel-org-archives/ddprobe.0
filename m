Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 14E202F28FC
	for <ddprobe@lists.linux.dev>; Wed, 13 Aug 2025 20:59:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1755118794; cv=none; b=gF5pxbpN8dCCylduBkxEsNV4ZfdlGYdbaiz1IgLzWycLiQrt/MF7V/oIcU8xHS0XpltTJuF7ZnSnhhPEK1D4xEhb8lHNl77vlPJL98IjaSHYAZwniQzY0O2bOPS5G3mdDXKz3ovv9TCnxfIeH8vH7hJgbiRIAvlDGMiEitn4XL4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1755118794; c=relaxed/simple;
	bh=TOZUt6p2c4rv5CeI4YrDWvdMJqlMbfjkBmKRHbH10L0=;
	h=To:Subject:From:Message-Id:Date; b=eb5DeXqDZkP36tl9c2OPUS+RY+rCXmvSXLaGssrBVI6hEyWH/YN8J12ADTpEK43M0Tyn2ExzF8F7fjBHS2X9h+kxgZynICWytLniVdGpc7RU6qokwmuKZCqTV/4VLrpb6cuv7U2ymd73QnoacBikd+vFx06jgET98se47RCmj+E=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Zz+Fyhrs; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Zz+Fyhrs"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9F45BC4CEEB
	for <ddprobe@lists.linux.dev>; Wed, 13 Aug 2025 20:59:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1755118793;
	bh=TOZUt6p2c4rv5CeI4YrDWvdMJqlMbfjkBmKRHbH10L0=;
	h=To:Subject:From:Date:From;
	b=Zz+FyhrsAMVmzwnmyfx+Qr6oRsqaVbGyV5BiSRTWIcUukOi2YJWE4yl+oX/Dcl7WL
	 7/NfHpKkY1sTsvQ1iaG2pPnN6N9PFPRkqbHW3L8x0foVQPD5/W0eYzh7P/H0kGSwso
	 0tlg6SyLzw3YwWqO/Q83ENF1Zo+o3ENIpQ0KIf5Fp+tOgX4bVmTIYWpIuu04kfmI4A
	 EX1kySA3WAzaF18m1DkoENxLOiecahUisBOI207AMWnLt5ir4r6ZeV0YarTgcBw3G0
	 CniSD2nxCrAHjcSkKocD6k1kHMn4kbwshzDiXBv4+udGrJ/NsJjZIeKlpq8D31ZMbj
	 IDa5MVsbwYEJQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8F561C87FCF
	for <ddprobe@lists.linux.dev>; Wed, 13 Aug 2025 20:59:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175511879357.9307.7685292543941648747.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 8e52acbf16867c1a19b6f76e2226575509dd6b8279326d949a8fe6f503104f68
Date: Wed, 13 Aug 2025 20:59:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1755118793
