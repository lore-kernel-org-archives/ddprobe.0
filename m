Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id B69CF21771B
	for <ddprobe@lists.linux.dev>; Mon, 30 Mar 2026 01:44:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1774835093; cv=none; b=qTzYBzZSDvzECBhpkHE0lTum9jap7NOIx+zpwb0BTmbjadqr2CRc1sAfn8I2FYqonmtMzdKjNMz+oqbBqY6jK9rAzUatpUWm2DrErZePs5ZCFqZZ9ADFu0wbcdrTWAPNwi81vURyPahDuwNdQ2m5Cp/8JF7TFlXRFF9Cy5u/IkQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1774835093; c=relaxed/simple;
	bh=alSMvlkud+3shovTiToDZHYea+0XyKAZFicJVhC5N4M=;
	h=To:Subject:From:Message-Id:Date; b=mNWrArUDLOHGHRTUF93Ze9Mw+Fi0ZB46+Dmt5BmdJAayHVXYJAWrPdsg5rexNHBQe+FxlxD0OkVxMpD9Di/LrTZOHWsmXb9eIC4icua253sIn4PN5PaQ1+XIPQpxOfoFISjbZhOG9KYUihr6wepVFgqOBvsb7ZTPpABdnB/A0Qk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=rrQfVBSD; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="rrQfVBSD"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 97989C116C6
	for <ddprobe@lists.linux.dev>; Mon, 30 Mar 2026 01:44:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1774835093;
	bh=alSMvlkud+3shovTiToDZHYea+0XyKAZFicJVhC5N4M=;
	h=To:Subject:From:Date:From;
	b=rrQfVBSDczRCkiaPR7lJ/H6CWlRLXO4pKlXClS9ci0i+pR/MjKRBdY0Zy8EEECUEP
	 ZQkARqt3zKnFR2bIWY6w7kZBTfYo7JunEsFqJ2wAUtpTGoDJ2OOE9mbXEt93IpuRUa
	 uoBegWyxfHh+LiTYWCm6MRgek7+jRvzfQxfRvoXLrtxIwSugT92hDhQzRgVKJQqKS0
	 T4iM5GRw3XccJ/CthoLFTSLnSftzvOqWR5pv411oVaEXrAE1YHCVGudVh0F4fwvPtB
	 6Ffm22nbdT/91FLX2P6eBsyNTK/ldrhcTfkTsJp6+q+PaieLUBDmZHJpDzQBL0MFiQ
	 7gHmydzEhmk6Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8F8B8FF4930
	for <ddprobe@lists.linux.dev>; Mon, 30 Mar 2026 01:44:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177483509358.25258.15945761574420377552.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 02d44c332763e1cd1dd6b7a2e8670f9331e36bd738c906a2bffc5c0d08801546
Date: Mon, 30 Mar 2026 01:44:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1774835093
