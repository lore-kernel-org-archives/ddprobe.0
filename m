Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3DC584071DD
	for <ddprobe@lists.linux.dev>; Sun,  7 Jun 2026 06:54:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1780815274; cv=none; b=iZ1kOtU+m229/p99qXlKJITNA/LmKak2rVS8bFxoAaq7eixk+yCiqhTcBCACbzN0kSy5izsgXNg3OlHLUMG4nWWu7ekQC1CAKbFNOOIcsDI38xpwtJSk1BpHsCRbyg1/iMSSi8siwBFki0EaW6dKE4vb2jTX8go2iYS75Ul/YnQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1780815274; c=relaxed/simple;
	bh=PCDfs8T7B3lud4ToyX3YwPF7aWPPJN0Cc3+eQn3pAyU=;
	h=To:Subject:From:Message-Id:Date; b=KCz8wqrelozYmJowifbTw3suSrmCXt3EkHKnXXlcoHYOVnwCqFHQ7XPw0LlZwOSPV5e4tiiOlrBomk7t5ZTCRlpbQmam2uyA0JsL7qMEcG5LMtbfrzfQGl/jGUofVj0JBOLZKtJ5zQG+VkjKD8MaP6AZrJZdZJSiF9MCbOjv70M=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Ex3slO/I; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Ex3slO/I"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C8EFEC2BCB4
	for <ddprobe@lists.linux.dev>; Sun,  7 Jun 2026 06:54:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1780815273;
	bh=PCDfs8T7B3lud4ToyX3YwPF7aWPPJN0Cc3+eQn3pAyU=;
	h=To:Subject:From:Date:From;
	b=Ex3slO/IANQUUekoexl4A6DgvWOMx1MeRHx+AZlZXYLZ1J4ofkp0hhKd8D28wpAGD
	 rldMlBNE9n5mMRr+4kzW8gooZvtLJQ6P2mMWk4wUdSKWeA+DeNa63Qp8iln5o/QXos
	 evGyWL1UJGrd8JVwCm/VJeeUnAnxqXCfKOgWLZFnm+CDRQD2Zgbzx8tGh0ZMXd3p3t
	 a6UwXU/557bBWsMJ0blit5gaXXS8P6QdrrSJ2qNA0EeOxrKPMaipBSNYneT4zuaxWP
	 LtcGM48uU43GAdbRnxNtBJgmwFAp6vELfmXLBJ55w/Tj/kh6rM5xIezbg978a5Cfr9
	 TOUDVocVZqkTw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B0232CD8C88
	for <ddprobe@lists.linux.dev>; Sun,  7 Jun 2026 06:54:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178081527368.30550.12180942478131046782.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: a219bc69650c147232d53d22b68caeff19bbbce07974aab425e4335b402464fe
Date: Sun, 07 Jun 2026 06:54:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1780815273
