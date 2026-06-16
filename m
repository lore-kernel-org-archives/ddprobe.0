Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1042C3AA1A1
	for <ddprobe@lists.linux.dev>; Tue, 16 Jun 2026 03:16:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1781579794; cv=none; b=Fs0SPkCz7a920+OKv6AeP1tvGxq53Sa6SaEIngRymLZ2Z1VOtQEiggbO4smbqGeUW/+U8rbYNDUq/4yytuS/maUe2ks+LcIDo2UA8hejqL+Kpr9hfUB5ohHZzGpwQZheFF6M99O7/Ogc8sngqc0tBy4qQXL5FAIvwLbnROEXKKU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1781579794; c=relaxed/simple;
	bh=Mtp27o9zSIH59RPYGEhi7RUQ4I4VUBGF/vcECvLUBSI=;
	h=To:Subject:From:Message-Id:Date; b=mPvj42tNuTioZOs1FWO/EFJ7EnlQHsrSpsxg5YyddLYVLNAJKQMUPj+UwjUO3O43s+whIzBTKDXzF1FgKFx4MJoj4M0ku09Ff6ZrTEVy9UkzA5hKt7UGPYmOxcO/wBkFmbAIS0wZ0cJuswG23c9Ab6Rxc7qoeneyo6twfGFk3pM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=SCXkgbJn; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="SCXkgbJn"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D0341C2BCB4
	for <ddprobe@lists.linux.dev>; Tue, 16 Jun 2026 03:16:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1781579793;
	bh=Mtp27o9zSIH59RPYGEhi7RUQ4I4VUBGF/vcECvLUBSI=;
	h=To:Subject:From:Date:From;
	b=SCXkgbJnlpx4580FRPO3SHN7OiyDRftkD5cpfkquJaosYzaDvh92jVccX6V6EebTp
	 dyrHuvogg39w1kWLtjFAqXLz7/dEWOfO4/KBLJm2FUoQC5BUnF25ijZnMFamtAkWVa
	 x6iSWA4aaOk9+Ry8zpwuLbbx5UR8jyprp6B7t25osl0vJfEa9z+Iq89yIMmqG+SUnu
	 dvu2aKb484aO5lN11WDYcMU+SineEInqokldCnjHuLm6zj1mrBMjA+lpbuBQm8CiFb
	 qOjDIOLwMaga+By7TZkBPi0d0Sv7ThEU10fVENxqpefbkmyPVF25p/DmF2MwfyY8p9
	 0Tdb1aL8IO98g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B520DCD98DE
	for <ddprobe@lists.linux.dev>; Tue, 16 Jun 2026 03:16:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178157979373.31407.6119334394406933313.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 7e075a2e8c9d88296d065656700882a96dd638072a4965e17bfbccbe030bd733
Date: Tue, 16 Jun 2026 03:16:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1781579793
