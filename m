Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0EB741DFE1B
	for <ddprobe@lists.linux.dev>; Mon, 28 Oct 2024 20:45:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1730148354; cv=none; b=oPl2BWr7chjKTjPOuDUeN+MDWdnz8GdjRCa5X5F/+MrBhZ+GIxDb5icvkBu2jVgoELWRE92hpal570QMBJ0/MVo1XwVBwrPSOSrB4NOzdX9NBy78sb41QryNp55mOQdnLMLS7rA5SBlMzfOtcP9z3rhFeoScq0GKR7eeX1TH784=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1730148354; c=relaxed/simple;
	bh=7NwOliBcypeeE0J3lyUiZtlWf6SjO4Ze5AtU9kPDYw4=;
	h=To:Subject:From:Message-Id:Date; b=U/8E81klKOrQ0gmbl4ODMlajSV0NrXGvRKWNiK5mPAkJc6f+OsPwa4Cn2zkJJyokRNWAmBu5qnbeXw/oK0VGWNrCn0AUUXKKIWbcfVSb5IrE9AALed3rb1sFwMaUDHX8x4gm5zFT1FVQ2w17x6lLYnJizdTn7Dkl/CYLjhvNnw4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=mXqjnifC; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="mXqjnifC"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A8D60C4CEC3
	for <ddprobe@lists.linux.dev>; Mon, 28 Oct 2024 20:45:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1730148353;
	bh=7NwOliBcypeeE0J3lyUiZtlWf6SjO4Ze5AtU9kPDYw4=;
	h=To:Subject:From:Date:From;
	b=mXqjnifCBcVUeQcf4JZjkG4fAyInVDTWEHl8lMThiiS8UZJ+EWwbcJg/WkZptQacE
	 UdAfxSGfHoC8p1/yJR2kiLdphZvtIeuXiS9KeUAp2iM358uddF6b6XqNMgQVttFbp9
	 d9rapLSNzwYdUetQzBSCTmu0x+/6cGvct/6foSUgWY92K6gsbjQ41xNujUhVYx8b9x
	 kkK4oU8nVx6uVg/gp/5P+XxS6/otvxoscEVciJoW8hazSh8o1vCft9+c8T8Xx+H3pJ
	 VgTzVl5PCX+TxnPOPtUHXK8L4qDi0XUggYSr1PThU5DXmFNmXmsXBFIIotb6bX7Qcz
	 DTp5HCSMeTBiA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 96C90D5B154
	for <ddprobe@lists.linux.dev>; Mon, 28 Oct 2024 20:45:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173014835360.31882.5314637376476647221.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 1b095e0cf75c31d702b48359dd2a691be535fce2ccc54b9f74013922d445807c
Date: Mon, 28 Oct 2024 20:45:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1730148353
