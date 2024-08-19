Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 373DC9460
	for <ddprobe@lists.linux.dev>; Mon, 19 Aug 2024 01:35:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1724031354; cv=none; b=IJn6U2CeuSmdkbCBiZx/cyK8NiElpTSKOEepGA1g3WBzEaNTIZn25gf/QGMlOFvkYKGTOCAhXfgjI3PxevsvKbQosg22iQ/DpoanQdASVm22uMExFyt0P/bx80iIFubylyhqSvU4yrXzLDXZyhsoQ/W/HkrXsBC/uKqFqf6OT0g=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1724031354; c=relaxed/simple;
	bh=+rpZqOnD8nOSUi4T5iL4uCvtDmT0HDCiISOMBZaSwoo=;
	h=To:Subject:From:Message-Id:Date; b=O8Ozjjf4W0XAyU8F8hCGPDrGBGc3h+KsN905hVJe72SYH3ifBnwVGy1Q6CPmhHOtr9TSCSbtgsUa70TRyx4kGMYZ6yShEvITCdGccz/hIrTx33ZM83EKzxxdKyZYrbCxuqwy5IzoIYhUU9gFTd4Hv9bEqZLoioFQl+qsrT46Zbc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=JYvDbu3/; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="JYvDbu3/"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AF2B0C32786
	for <ddprobe@lists.linux.dev>; Mon, 19 Aug 2024 01:35:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1724031353;
	bh=+rpZqOnD8nOSUi4T5iL4uCvtDmT0HDCiISOMBZaSwoo=;
	h=To:Subject:From:Date:From;
	b=JYvDbu3/yTjLZuR/cVa4X1ip7U93fLVo1335jEXpIsKNOpp0GRerhLA0KbnZxek9m
	 Ao8H/HUQH4/mKqwxL3U/G5ywy0tYVzbW4zCZbnhmRoHjH7HpW0OmROpbEw4FeQZqTQ
	 XJifRP1kOfNFD+eiFuTsOT8Dfci1niLCgCiOW7c2+ekXoYu+1f1S1PK/FORkECKpcK
	 oLuYQryQ8E9DpQQ5/vWV71ux+m26IsqAYJcoG9ZrPJ150OjHBUXRVbJwebCHPJEnbm
	 b3ZJQ8OYA4wPpmYWCPAAWUkTU4Bd9n5pqIspHXaueix6GMkJj+SWivuVn73Baj30eJ
	 D77BCfUuvisJQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 973B1C52D7C
	for <ddprobe@lists.linux.dev>; Mon, 19 Aug 2024 01:35:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172403135360.5055.1650895197262706531.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 3d99ac3972717bab3718d3b6845721f1e267ff8403ea96a7506a21613ab8f87d
Date: Mon, 19 Aug 2024 01:35:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1724031353
