Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 46F7F1B218B
	for <ddprobe@lists.linux.dev>; Sun, 12 Jan 2025 13:25:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1736688354; cv=none; b=pAGv2S4uEzshkHwTTBFNb8wV76FOHmZWVm+hDSgDjaBZPs9UHtOiU+wnm+ftfkREj9y+ezFWnQcUmdSzWpcdOgZR2mkROaCGaduuiNlzixuph9mQPYKZ7RsxacPFubC7Rcoj7HvFens2z6ndkrrvaEm9sMP98ou7V5szvN3ubAY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1736688354; c=relaxed/simple;
	bh=Hz6Rv4Gi60ffKleHFVrcM0GQF/mg/ZaGiBSAfPdgXE0=;
	h=To:Subject:From:Message-Id:Date; b=Gq7/c75eRvzJZblSZtUXgWDIclInCLWHgD4tumaUz7cZwfWPcBn/XzYbZaqsQd4f5eGbtmxlvO2FoAOWTaFrnGC3i+2XwTQD5JUYkctmUmf7WVRkntsrPnjQv3YiE5NlE74mcbDpnXEGIAyaxU4lnUZmlFMqpxOLxh5AVDJVHXY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=tenDHT8p; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="tenDHT8p"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B74F7C4CEDF
	for <ddprobe@lists.linux.dev>; Sun, 12 Jan 2025 13:25:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1736688353;
	bh=Hz6Rv4Gi60ffKleHFVrcM0GQF/mg/ZaGiBSAfPdgXE0=;
	h=To:Subject:From:Date:From;
	b=tenDHT8psZskYyNMphnKGWGYFhMbluCAaULGnaRqiKFmyXv/ePBToIqiMCstSDd2l
	 9qrVHTqg0if2ngMVwF2/ur2fAO3/VMFhZ9NPttHi9SxwH1T9yCIMXOq+Vd7NciZnSa
	 zgICAgz6oNOsaw3cIhE1/p8HTh0zpg0FXjoJgd7jDXgmme/29eoCX97JAPwL/QKIm7
	 V+tJAQwAeDcbhv7HgDWF447XRe9ZpGO5qx67jfcPeex3QlodmyLmr467e9cxUIkqdu
	 BOG0NA3/SnEGxDGLlb/M3ur8Bj3KFvIXnD+n36j9I4DHbyYqHyHMZz7lbnQiQuq285
	 7Kf1ZSQ8ytGDQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9844EE77188
	for <ddprobe@lists.linux.dev>; Sun, 12 Jan 2025 13:25:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173668835359.24688.10225898034828640580.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 16568136f1e905024c08663590d7d2641cf8316ca57b27a6994520273ad3aff7
Date: Sun, 12 Jan 2025 13:25:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1736688353
