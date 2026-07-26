Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5265F2F1FD7
	for <ddprobe@lists.linux.dev>; Sun, 26 Jul 2026 02:40:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1785033634; cv=none; b=ANOr9UZsDktEUaY5px8Vd/OUoqGuwISkJDyP+PxdlB4wRC628OzqGlx7T2g//TD6rdnajIiYVKO4phw9KLLUP6ZS1tXlY5dRTm+LWi1YKEWeSW5daewF49xzM10I7+kKiqFEziCRKCATR7mSDRjsYpquA34k1e7/BW7qIL2kKT4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1785033634; c=relaxed/simple;
	bh=0Im64r1KrbHv2dAx8H9KaoYXZEr5aS1IbNXvs/SVw44=;
	h=To:Subject:From:Message-Id:Date; b=N1OYOcEQmtsNtimJbguKAXrFkXKXE6VTsPc6fbiBRBTBmDxhSfGDiGfpkqK12zvWxFmKwowhKowqkAqh+hmpc7RM+vtSxSefis/4JdHdpd6s2LNTmk2n5GMJDgthwfcJUOhi5OKfEzn8vQdKI4AJRUMW1NO4WWGJimMYHcFCFhY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=cGjRbqKt; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="cGjRbqKt"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CD66FC2BCB8
	for <ddprobe@lists.linux.dev>; Sun, 26 Jul 2026 02:40:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1785033633;
	bh=0Im64r1KrbHv2dAx8H9KaoYXZEr5aS1IbNXvs/SVw44=;
	h=To:Subject:From:Date:From;
	b=cGjRbqKttnZ9EBPmqg6CQzD/VUkYKs6my1+EBk1Im9nRatAPWMOTLydT7qidmvaXr
	 sAL7g9w3bykFTWtyAyaBcHu6aOIwiVbPxJtaqBcXQWSxJHp7t4/TEtqFOb+CEcgRlm
	 g5DAyWd53dT3rFmlFmxQrsKV5sZnfpND2AhffnOeR2+c1FfQcUi4PbnMiDMGYYsi8j
	 t/HVHemFB00lRUZvQ78bKuJxJbp4xCsLqDeQXXvWmeZ6w81lJpX0+wMjacqcjCe0zP
	 QvkcoccJDb4aXtLVl467YTmx4zFAP4DRPvzfHwz4Ljy7JqpJdNqPYTqowW358O5nIK
	 j2vUGQA3T4vIg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A9804C531D0
	for <ddprobe@lists.linux.dev>; Sun, 26 Jul 2026 02:40:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178503363368.16455.5270727023475485585.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 5491ec09e39c9d0e2d61aab39568042a72b3f0308e2b60941c378cc0b816658d
Date: Sun, 26 Jul 2026 02:40:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1785033633
