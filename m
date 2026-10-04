Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 9BC973BC69C
	for <ddprobe@lists.linux.dev>; Sun,  4 Oct 2026 15:40:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1791128434; cv=none; b=m2NV9AbdrqUi4dhMPjlehJD8wTkJzBOqD5FRhZFZmW5mMYtT3LkBfSusUT6D90RsjUc/9QdEPqqSqEyup81ivCozFQUIk+RavQZTMJyqOiqGUZzywmO4Us2pNZ1G6xd2PqhFOU44VPhE77JzwZaNQ9hB6YdmMXGbHSh120PBKvo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1791128434; c=relaxed/simple;
	bh=nTBeuA6u1ledd/QPExccY0vTK+sojlrIU4Bq1e43CmU=;
	h=To:Subject:From:Message-Id:Date; b=re4miCLZ/as4adOTDooCz9xo6xq/BZk5+XQOAI4mV/DgiOI0TPme5fK+D4lTysI4JAVHysiEzwxbxg1Ir98OUKE7npjYFtLpbBIy11dAGcrxxoQU8L2hGRLSsDxr3cZE90VK6oUSmhi1oCKA4Vwg9Sb+uX/u8QXvnooeYRh8Dgk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=i5+WdNgk; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="i5+WdNgk"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CCCD8C4AF13
	for <ddprobe@lists.linux.dev>; Sun,  4 Oct 2026 15:40:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1791128433;
	bh=nTBeuA6u1ledd/QPExccY0vTK+sojlrIU4Bq1e43CmU=;
	h=To:Subject:From:Date:From;
	b=i5+WdNgkwFxxpxmxt4z62g+wIferAypj12nbtcxK5J7QeFPaz0PWudDIUnP6xmWBD
	 MXOEb0kudG+tfvoApGNbTYeLERQbT1u/P0bU/ZZFg8i6L1492YQrjdlbewEg3D1P5D
	 u7Wh411b01Mmp/ukmI19OSetAFxGuP8qy9qzZCHjnJxrqfW601u4OXuTrI280AB3HR
	 xI3X0ogJtlTkHex9g2/3gvof6Tla/VfF4Oy/KE6/WiMw/oN32V/WhMx1puFHLtmkfu
	 XZaE821yGBmewV0eoQUsDL6FJ5ADjUawaiphaMkh8Sl/Wa0WTLa31iEQrlonP8zTpb
	 z6nygUiyjoBBA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A9AF8CA5FEF
	for <ddprobe@lists.linux.dev>; Sun,  4 Oct 2026 15:40:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <179112843368.11206.3755789361924257245.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: e428d2509277e10a98a0206c1b0dbf46a2d9092959ece556d8c7f7b2d64a3d41
Date: Sun, 04 Oct 2026 15:40:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1791128433
