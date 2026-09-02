Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 261E035203C
	for <ddprobe@lists.linux.dev>; Wed,  2 Sep 2026 14:20:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1788358834; cv=none; b=YeLgQGurDet/Ea0xeOgSmQIuAQHfvQwaUpZmJzESnjqPUmb5L0bFSRO3Cbrc4UeGsoW+2TQ/Bmjf6fa2cqFPmQbs1KL3wI4FmJMOucO6MU8HOm/4DDeE4ghYBoXxI8wC1fNLxW8pOsrxSfxVBmsaWqYjJNuI0Yo97QkKrJUEKQA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1788358834; c=relaxed/simple;
	bh=+RNbbLWSKRGmKsASAmo/xN992AMEYtYWPheBS4BSOyA=;
	h=To:Subject:From:Message-Id:Date; b=tUrEihVXM40PKp6Vaj4EZNgGqiKZXCGBP311ubHXMJkz495VfQBkr5u6/juT5LATKjt/RcKAmGwBE+qvA8KWCSM/2ul/4U6FuPNBtoPzVeR57lJjNoydNp7JKBv6FCTxr0JBHINld2+QP54avMRClPNSUWiwYTeLeeKOcJFW3Ig=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=grZmVxSu; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="grZmVxSu"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CC89CC2BCB3
	for <ddprobe@lists.linux.dev>; Wed,  2 Sep 2026 14:20:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1788358833;
	bh=+RNbbLWSKRGmKsASAmo/xN992AMEYtYWPheBS4BSOyA=;
	h=To:Subject:From:Date:From;
	b=grZmVxSuPsp/1M1J0E5l84Kjr6ufTcjThGgAoDTdRIwddrQ3CuhttAQJkqBmY3DeC
	 CdpaFtLokLH3lzL3YWCDd1FlIDwPChw2XpbgdxODizAcr662Tmx3Agl3i4Ax5m5div
	 M7fGWgO12uuZ12g/tJt8ET4IG+rdjrEMJ9ases/KXhLNGWUtrE1lVROnPTr6BLTTBF
	 /9+K5qRVtmWoSmkx506b0VWaj6QHfB9Xktg1iN3uxyP3R8MwtzBHMXMmqaKEX3R+D8
	 /Sdusnrky1INCa+f6yd+uSlJR8i8TJqg1EAMqr+zFud1CS6bDa2MxOHIkFLy35UK+o
	 miuQ325u22WwQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AA0F1C624D6
	for <ddprobe@lists.linux.dev>; Wed,  2 Sep 2026 14:20:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178835883368.7086.4496689782404109614.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: cc4b8e55acd0c1106fca9ef53a3da7bb4b2703c23546afbb7cfc40715fb70d4f
Date: Wed, 02 Sep 2026 14:20:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1788358833
