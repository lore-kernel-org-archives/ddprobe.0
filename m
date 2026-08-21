Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 24C7B3D8911
	for <ddprobe@lists.linux.dev>; Fri, 21 Aug 2026 09:40:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1787305235; cv=none; b=Q1XptSV/I3cz7b32WBJOgXRfq4Uxl53d+YWWUMGXIC9aONjY7+35e81iUxHIQw9bXfpfCNodcrUVoSE1lwKFGFIEFToJ9C1XzNpCPCrN4Td+fNu+09LzrqDsR5gmKDJnNY4oc6lVdKyq9YtB6Lefa47HUmxwdl54zqp7zrBKABs=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1787305235; c=relaxed/simple;
	bh=+KYekRbZRkMzet6tPYAW6lZvreGosbd63Wj6+xdkVjw=;
	h=To:Subject:From:Message-Id:Date; b=SX96kXqsWWqALv12pIQQUR7V3UXy9qiqXbi6ZNeJOvk5x1UwuI6Q2fbGO3Op7UHlcdtkscuPGdtdIoySjSlLmqnPotsXg+YcTMG4ezXc7Hekbit/cZnbHbGO/3o+MyhYPHk8nfu3BbrGcALETSAkv3Ik0/FZazPGqUXatKCIvo4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=CTpqQ6IF; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="CTpqQ6IF"
Received: by smtp.kernel.org (Postfix) with ESMTPS id DD941C19425
	for <ddprobe@lists.linux.dev>; Fri, 21 Aug 2026 09:40:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1787305233;
	bh=+KYekRbZRkMzet6tPYAW6lZvreGosbd63Wj6+xdkVjw=;
	h=To:Subject:From:Date:From;
	b=CTpqQ6IF3PhhFEqZmLQKMugMK0BbM0YkUzsoEhA2rK/lIzB13fdaIKa5G4jqtEoU2
	 839PlShu8FvjLRqkH8Hu1PK5gY+cx8lbMCu0mG30YGqxkmqdmT19ZtYYlbKd4ftHIX
	 taJj64vtmYftwD5t5s7TMJGuH9I+dYeD1NrRqvy+JCVl0m2KXWephhQit6SHj+5hCD
	 Nr4RgXYjP6GiFv9Do+bmbj9vouzZq9Dz/jB83xsmXf3qvSKJpKXs5u/Mzt/lOenlH9
	 hMvqm0xw0Fkk395D5Oxpycs/nqkzr/mSPzSCVvfVMd0rK10OYBrlDur5CnX62HouPJ
	 4pguuGE2oSMzA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B8804C5DF87
	for <ddprobe@lists.linux.dev>; Fri, 21 Aug 2026 09:40:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178730523374.16187.16410241186008229131.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 91e22d22029aed75f71d0d3ebb9c943bdd94824c0be6b853bda81e7cd40e300a
Date: Fri, 21 Aug 2026 09:40:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1787305233
