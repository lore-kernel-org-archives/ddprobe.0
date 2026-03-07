Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2F46F3F9FB
	for <ddprobe@lists.linux.dev>; Sat,  7 Mar 2026 14:04:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1772892294; cv=none; b=S2iAeH3XKEsA4I08ZHe2IFTS/ZK7z79DswdVioSN/rbEf7EBT+gAzFXddLPvSMbRR75D4OM5kf/Bm7Rfu5E5av0QgKMjU+3xyMikYdyuJ5610M6q97/WxMBMN5qA/jFpoTgqOEfjZGQTgw9OY2pHAHkvNxJhdQQxAfHpBvwndYY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1772892294; c=relaxed/simple;
	bh=KsPtLZ4nUkcCGtRDLE8vOgTZYzZ6XI2Boa2u9wweHyw=;
	h=To:Subject:From:Message-Id:Date; b=iSNgffStpe3VKsf3/1K3JpaTkTyBtG0WLerHSuQ2HpAw0qUFhN+zNqVvyxPT4F2yG8Az89U7CyfYwXkF/AWj3sUzqMJRPiXXBFOfjZL1nitb3QFnBZB+bYuudlZa6q8E5gccLdq13qNkwDwei9K7wTx69liXeLA8vpKm/Ezcpkk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Plf8cNzt; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Plf8cNzt"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C4780C19422
	for <ddprobe@lists.linux.dev>; Sat,  7 Mar 2026 14:04:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1772892293;
	bh=KsPtLZ4nUkcCGtRDLE8vOgTZYzZ6XI2Boa2u9wweHyw=;
	h=To:Subject:From:Date:From;
	b=Plf8cNzt5DM0k03RZqiWqt+7ENwCMlFown9FRcS+gbVzo7j7qhikJu55f5lHnVNea
	 cfKZAN/AqYKDy83JJbNOjvBixldkdIzC1Po8ebyGhPq6S+DSk5YmY8SZv7f0q/Q/SI
	 c+cIMq1hHo9e52FiZgy0CwvZQ4de/Vf8gnsHBHTaqW4ZHlGYACJTLbPY1oTI7CbEbX
	 wqOa5a21b4BLjA/SL9tHOgwOhwlr06tv3BNCICetzKoBdck2yofgmR9XfT0czNHKEr
	 pDMCBEMd4JX4ZCeuc/Rye62WD9GAUsjHxBpGpGyoJPbrVFdfx1BfitDDFlLm0n7OGQ
	 3Jo2TsPxi8Ebw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A4523FC9EFE
	for <ddprobe@lists.linux.dev>; Sat,  7 Mar 2026 14:04:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177289229360.21250.13588921602387474905.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 9591d1d0b4e5d15a486576e0fe68ef709f02ea45a77462bace6379d99f3ec1b1
Date: Sat, 07 Mar 2026 14:04:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1772892293
