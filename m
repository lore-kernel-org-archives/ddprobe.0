Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 328698F5C
	for <ddprobe@lists.linux.dev>; Sat, 21 Jun 2025 01:19:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1750468794; cv=none; b=WAA5MLP9nqLvnLnim3bEJHXKWz5GOuBFstRxO3E8dmMnFlNeYldGa/nP+KapSXsi7lDP9SH/95vy9wLIL78TItTO1NAGBR0NXoVyk0fBgpq1nnycIjcVA2xPYAeihYbSgnhR7l7n65NWLhXglgwjJy7jri1NtIHWkx7T1vT/bcU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1750468794; c=relaxed/simple;
	bh=wCUj2Mgd7tYBVZuFHyX1dQ2PD97Gz3TKtQuwNw03gUU=;
	h=To:Subject:From:Message-Id:Date; b=M3hMznDIgqwMr9C/hbe15hEAyz3kWuvzm2JaslMPkJ61127s6VoP/q0iXxUE+2X+1eDW5hujunFm2TELm+PO/tEElCsT9N9qK6frSWRrWBc2PgxwsEY0sxR0ch4Df/bSsV6dK2aFNKNPH0tBhvwFuOKLYirlz204mcmx3k/zkNc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=SxQEK6jY; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="SxQEK6jY"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A519CC4CEE3
	for <ddprobe@lists.linux.dev>; Sat, 21 Jun 2025 01:19:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1750468793;
	bh=wCUj2Mgd7tYBVZuFHyX1dQ2PD97Gz3TKtQuwNw03gUU=;
	h=To:Subject:From:Date:From;
	b=SxQEK6jYokZIXYABev/vPVIslJGN0DcZ3t5eoHaPYakL8iPIWhT3b9aZ8CkXIC3qt
	 mHsM3vm44g7D25rhJtfXy7bkcP+V3Qu2zWgOFqkzVdEQttocopwgCb5j/gxNPD0PFh
	 14xea4dUk15XV9U4XejLlqws+V3Mzk9pyTMBN6VhHOKsIRjjaIjA+03D1lEt+fdCfF
	 REvDaHNnnDRrEhM693H/5gh5E0KOifbn9YCUWKNAgzqmyReu4401KvBT4pfihm70TL
	 GN/3BJuurcAZcWkq471calkLWuHFvAAq5YQVfsU+4vhN7wtfPbrrXEqSYEOgUWb/ac
	 2Eiwtckb3yBLA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 913EEC7115C
	for <ddprobe@lists.linux.dev>; Sat, 21 Jun 2025 01:19:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175046879357.4191.828372332526532680.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 603383563dc6f9c0434747bf44ea91c20815e8090cddb36ef336b450278cefe2
Date: Sat, 21 Jun 2025 01:19:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1750468793
