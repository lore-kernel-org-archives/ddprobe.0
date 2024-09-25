Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 13D15146589
	for <ddprobe@lists.linux.dev>; Wed, 25 Sep 2024 19:15:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1727291754; cv=none; b=MOcsVOhY1BT3F5cbON2Lg7bGMaMzgMVMZPxdFGr93fZ28PEfW3TOs41SiqwpLburp3BNFTeqqExSuWjsAjnHjfTKLwWItR/RCv2DQMbVYvxHx2g5pjJmIhpUK+bn8o42ZKeYEroX9dMUzzYGeslM5vXLFaoGJh0zHTU3iaAW6X4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1727291754; c=relaxed/simple;
	bh=p0lrXpU9UC9fuxLQoNsYTYKw9lWVhZs5lCO2aMkzfIg=;
	h=To:Subject:From:Message-Id:Date; b=UZqAK243TNpR6J8JfhoF8PT6Dph7D/iV7h0bI+KMFH3D/HBUujP4Cv7DK7qghf8K/OS4e0NZzS4FSzZCMzdmmlFEgNfclNQhqiHoxh1UDPhKslG6/kZdlIkCOcjdhkcGf6x4lO6SbHDlp8WaCSiTVkbxnYBjviw0nBczBfFiaMU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=O79Jj+1U; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="O79Jj+1U"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A09E2C4CEC9
	for <ddprobe@lists.linux.dev>; Wed, 25 Sep 2024 19:15:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1727291753;
	bh=p0lrXpU9UC9fuxLQoNsYTYKw9lWVhZs5lCO2aMkzfIg=;
	h=To:Subject:From:Date:From;
	b=O79Jj+1UuFPp0JDFsKQZlG1HCLhiKVyQ7BAq4cjrsS+kSToyUfCoA8nm1wkL/oFEW
	 iD8F/mFTTpkEuiH91z5sxUu2subZtkCRpAL7vKjNOSzF4D1p6rG4z5aX3TEu1fXNog
	 yxIgj5Uce09J4MF7JSbNdJyY1+kpUd0SANV4BWdoDy/5Id9TP5EgR8Koc+wllSpkVU
	 VK8xkXq0IAVOaDm3LfudeNdSr1wVb4I0FrNkzu6XtaZsZk0ehDcJLhJt/09yUFnuFC
	 2x0ISjqRPRNyNgU0Uh31bFCUrK3ugFXVnq7df3mCsp8Uv1PCDHslXRAVuqHrqaLPSt
	 yWikt+XjOsdVg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 92CA6CCF9E7
	for <ddprobe@lists.linux.dev>; Wed, 25 Sep 2024 19:15:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172729175358.25266.10487479583340240345.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: e65398d500359a2adafa410e72531e2798af8a0c8196079afa57bace5f4087e7
Date: Wed, 25 Sep 2024 19:15:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1727291753
