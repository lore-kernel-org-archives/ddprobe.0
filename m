Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1E3BE2E2DCB
	for <ddprobe@lists.linux.dev>; Mon, 11 Aug 2025 20:29:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1754944194; cv=none; b=tSHt18pqSD6rdY/MaPent5WIRtMDdK5/1BtZA3O5OXhxaCXoUGDUz5YXO44t8UbxIuQelGllfLarB4TfoaPxPDSCyudit02tf2juaUkpIhpHkEuyvfW/A9BGKqksZbWuES6pliTeqFoEwiUrW0B4CzfMzCC8zlpAYUA1RcCRGyk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1754944194; c=relaxed/simple;
	bh=E7kNaux6vRz6AG/63vRqQHHEaNOjL1IHlJN1u+ifogA=;
	h=To:Subject:From:Message-Id:Date; b=RJ72TFfNjGBWi7F++AmBkUtUwAyswGY0Qev+pR5k5trKHLbgIa1POmdC7laaXYt0XYZaoI8TVDv7lAKKlppa8YH8EsWrNYpajX06Z7aSdMdPNAm/ThGyPxf9mNO5M5CEeZeFu2mqbOmU6Zs8GjEP93CI4p9Blpq4SFxId0xYZR4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=NSl8J1sG; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="NSl8J1sG"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9FED5C4CEF1
	for <ddprobe@lists.linux.dev>; Mon, 11 Aug 2025 20:29:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1754944193;
	bh=E7kNaux6vRz6AG/63vRqQHHEaNOjL1IHlJN1u+ifogA=;
	h=To:Subject:From:Date:From;
	b=NSl8J1sGp72QIkhRRSxJcTWzORMGBxBf2U+REsnoLQwAtTtYK1v+iiM+pqGErKHUT
	 pzkRJb7vXAacWjeirilyE6xl4Wp5X1dOt2+dCIXr7xfN831P5UGLEYocsfl2gGKylR
	 UDQifk7vhhEgxzlDz1YnWKo9fKHctB7SDhrVU0zoWVtOOnTSOYwObI0mwR8viPe/Us
	 koGforyIF7HGXVAPCJoTfzUm/X2ME2eE0bIyyLykAxIhlznA4jRTxd2VK6CZDSv/US
	 6j6lrN+ce/ihKM6e8dnm9Cwc973/dr8AkCc1dCeZ5UVh70gh0zCLoGRla4DY2G+wzv
	 ylTGIe8cTpmMA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 90325CA0EC4
	for <ddprobe@lists.linux.dev>; Mon, 11 Aug 2025 20:29:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175494419358.6159.8198601255538198125.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: cf3f0bfe6ad22e53974bc589ab03dec91c4b496a7fae88b16ceffbb88e44dce5
Date: Mon, 11 Aug 2025 20:29:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1754944193
