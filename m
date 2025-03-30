Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 51B6A137932
	for <ddprobe@lists.linux.dev>; Sun, 30 Mar 2025 22:49:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1743374994; cv=none; b=DRwaH/yYaWHEPDuIGKkrydIMtQ/Kc+GOcuxUvBH9N/IR9/YppoO7xf6w9whhTsjWEr1udvH2JzB/pPzCdFYjHnIDwyvS2C5I6JjcPYR19cXU8+YX2TxrOsjiEOrI+aS+T4c1fZjTEn0tbxz76n8wXT+wH/m9l1LhRFJ4YNfvhYY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1743374994; c=relaxed/simple;
	bh=YksFPPozKk4uZAhj1XraopDw44BCLyg+eB4tOTfJXPE=;
	h=To:Subject:From:Message-Id:Date; b=bSVwU9V3G+ppm7zhOjoST808BQiYwSaskNFLYnTo0JHhU7bAq5DMg2PcIOmE4VlY7Er5Vt8QVgk8mCegQ1cSHErD77WWBx9WCJq+6/+YQgCyYyToleCCwuHArZDpaTuFX5GxDriwKyu7CgNyCGyy6SxRjXoVruJj+plqzFWmGeM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=NCeCz1ru; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="NCeCz1ru"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AEE22C4CEDD
	for <ddprobe@lists.linux.dev>; Sun, 30 Mar 2025 22:49:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1743374993;
	bh=YksFPPozKk4uZAhj1XraopDw44BCLyg+eB4tOTfJXPE=;
	h=To:Subject:From:Date:From;
	b=NCeCz1ru42C40JExKpl3O4cBj4YYjVYTZFTFbNuh6rk/pq5JNv5+XvcoVIjW5k1O1
	 lSfeL+xExOO9Koz6CK9RtUrdXJUC5pIaiAwlrD9rpuAkzgkhj4xR3CgGrHhbrnvaN7
	 dIUzZ7/Flqq9/37wGtMGK2b5IqZDoZnkcmVGnTOyXLlHnz21cvkjxe9cEPm32UdnuG
	 BOVC1GcV2dsUQs0PIRLtaqQfkAXSZwpmYSJ3Bnvek6yzus/POC3Fyny32UH2r+kpsE
	 fajvjmEETDL+jPzi5GN/+YdtrFMfBFdNQPYGCS8in7FWiAXFoWJjKII+WeihSwBb2z
	 JTZ+PFnTBO8Mw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 92227C28B20
	for <ddprobe@lists.linux.dev>; Sun, 30 Mar 2025 22:49:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174337499358.6306.14098273856626464832.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 3d86482bdd3eb14fa0cffcc2f3ff0bb8b4a5e70eb5fd1ddc35a2170920db701b
Date: Sun, 30 Mar 2025 22:49:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1743374993
