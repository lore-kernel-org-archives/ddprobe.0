Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 10EAB2260C
	for <ddprobe@lists.linux.dev>; Sun, 20 Oct 2024 23:55:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1729468554; cv=none; b=aYL1av6jxZczyQyeZsRvzI2BRZuCKDhDuYIuVgUlc58cPJkYOtUM59waww2AdezVUCWzZZfURCMYgEVDXerlfrQpbSEL50yfQFyUGK2kgP9DZey90GArvTVm5o06vYEIuomLxEEEZagdOkhQyW1m3cr3Gney11giyNlDRlwuI4k=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1729468554; c=relaxed/simple;
	bh=v7BQySQpTx/bnGNvJBmWw3NERJjSCjHt1zsVuAloX/g=;
	h=To:Subject:From:Message-Id:Date; b=T4ZbFPoVgf+qUsZ65FQwqQiSe/oMPKt0lrwKEPrWm59az0d5gZcZO53Br2sgvGbTMTxWZM/DifnECdqSTSSw6eZzvE5wNrScGdu8xOI2d+9zjHdOcyShKYW3dT2qM1ipauNIXbHQZSvFb9BFRNhOdg9/eWClGPIjf/kODPQuyOE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=OZxg2ts9; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="OZxg2ts9"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A6C10C4CEC6
	for <ddprobe@lists.linux.dev>; Sun, 20 Oct 2024 23:55:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1729468553;
	bh=v7BQySQpTx/bnGNvJBmWw3NERJjSCjHt1zsVuAloX/g=;
	h=To:Subject:From:Date:From;
	b=OZxg2ts9kMPmVmkEPJmbADCUmVT/49w2yn17d/hIeT7qCmkq0I5Y1dUVMBWfTd4Y9
	 Dd/sIlutw645/zYLVuwwZeH7a2lb75JY3ngLTPKyZn8UaYUaTe/yxBBGFu/cGmsA4D
	 rjOe30SVZEK8m26q8g0jeGv+dUUmy9BE0OIP6fkIINH+L4Q9xzQiFyekKaG5HPu+BX
	 Y3a2ROYedcxAqeYxtxtTD6/tdTPSTZvwkZzhrk6DD8kzyOGJ+ZQCeQ2bi96WsvYeg8
	 uChEx4fkm3iNWpXRMUmYi/hngOHrogUaRBtYK5f4uE3jXBwVo3/CiR3dNIC/jwg74A
	 JCNUnUCvjKQ5g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 96332D3C935
	for <ddprobe@lists.linux.dev>; Sun, 20 Oct 2024 23:55:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172946855360.30722.1899603282335366188.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 73f4eabce29f7919b8fd70b9c15ee8e3332c5036c0394471fff5356c2543f6af
Date: Sun, 20 Oct 2024 23:55:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1729468553
