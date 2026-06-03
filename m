Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2FACE2264A7
	for <ddprobe@lists.linux.dev>; Wed,  3 Jun 2026 12:34:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1780490074; cv=none; b=W88dar5bDWkZOlQcWbmKtcrQnBM6iJtxbcmfilbvlHyzP5rG5wdMB+WobRIprvsuXkeb2G1Nsnl9JCQwPC265/XK4dZsYQkSzCXkw3IyMp+wmwVSmU195nwdrkiVAf73RHEci5EBs9RTwouF/lM47W1D5owrJ+1cmm3aA6CtF1Y=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1780490074; c=relaxed/simple;
	bh=FboI1M3663zzMlofwc1lpo3i2aY+cKbosy7g+P9Mh6E=;
	h=To:Subject:From:Message-Id:Date; b=nj8SX96ZUDiaM7rRtLLwX6u3eu64ugVwtFgH+MrLqiHXV7sIr0bXIZIumDNFatV7aIAnqOU+oFper+J18iiHEkFU4+kNXUw8smEMULSA/wbkrQ31k26PbxjW3lLRr3JVbbGHJq8357kJdKV/TkLsx7o0yxpcWnnSpYgDmBGAswA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Sxe14Rlp; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Sxe14Rlp"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C3E85C2BCC4
	for <ddprobe@lists.linux.dev>; Wed,  3 Jun 2026 12:34:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1780490073;
	bh=FboI1M3663zzMlofwc1lpo3i2aY+cKbosy7g+P9Mh6E=;
	h=To:Subject:From:Date:From;
	b=Sxe14Rlp4gF5D+NiONVXg6S6JbZO7lk2Up2Q/ufdKGQiJjIUyZKI633V7Vv37Zd+d
	 8nA+/luRNutC6jU8sNscjwbEpetnIl9GJFQDNN1WbQZvw89Q4HJNOvjFGHulaSndmu
	 BXB6Mpii+ppI8CgJfKg5i9532zB/NAbordDmKgoWuNqOq/KQ29QQXbAos9wax6hCX4
	 EwSbTmacXaI+cajYTnfWnzlI6qliSSbT8jio60Z9/k2pfuQ3+JEioE/bARFBfiZ+kz
	 67UPiNwHsGanYRFxyOsObHIshvIrzzHj0ZJYyUMSXIk/xkh7aazPIB5Zpi/bhVUp38
	 jcB67ipSLrNHw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A8CF4CD6E4A
	for <ddprobe@lists.linux.dev>; Wed,  3 Jun 2026 12:34:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178049007368.30354.12684741049776207635.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: d537a83cf54f77802fc8f59741457e17977a4f77129bfee4be011e31ebce5a8b
Date: Wed, 03 Jun 2026 12:34:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1780490073
