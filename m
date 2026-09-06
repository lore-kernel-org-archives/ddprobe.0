Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5522030EF6C
	for <ddprobe@lists.linux.dev>; Sun,  6 Sep 2026 01:40:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1788658834; cv=none; b=OBdV4vhQxxvi4jp93WBD0swObUGCBPqnvaUKjg053auXMjrwGp7PO38NpmLjl4b69uxvtOya0Ai0t8b/awPRDI+Y/0MJ887u72Pi1Wif2XdJU612tzclknP9LnUG9ZW5ySBxh8Bduixwvixx9H23bwu43Ui9zvUz8hJ0lA/Jobo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1788658834; c=relaxed/simple;
	bh=Slic9oX5W0A6PByVLcjeDO4B5berNbdGOjp3Our6AuY=;
	h=To:Subject:From:Message-Id:Date; b=Atv1BAqrYhrlB2Mqcrd2pC9FT5FZu11AeEyXqfHoHhIlgdKvCb5u03y31MD5ffU6huBZkAE+825JRTOcu6oP6XxRkY4ULuSI8NlLhvHWn2ANqunpjpeGcipY5jU4oNdXAjgtRqiu4vtccM4WH6zadP4TUrJOvHkRFMizav+WRiI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=fA8Ty5Am; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="fA8Ty5Am"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D54A9C2BCB3
	for <ddprobe@lists.linux.dev>; Sun,  6 Sep 2026 01:40:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1788658833;
	bh=Slic9oX5W0A6PByVLcjeDO4B5berNbdGOjp3Our6AuY=;
	h=To:Subject:From:Date:From;
	b=fA8Ty5AmuwDApjVJ8aLEiHak9aJdLyFKUTjUAJy1VeCverx07dsCAxOWq3RMfJn3O
	 pjQOGaZt2hNsw3Bjkje3sUSZqzBZ+nGZFPINoGc287yucRJylfTBjDin813+tSOV0o
	 a5TD2uRO4puG0qR9uoX0HA/Kq/enqNtoC2qIzW19iFOc9Q2dbMUgAY4IKYFdi8Ui7X
	 w6q0GtUDzhh2gaJ+3AfOfsdKsmuTCOFI/dQrFs71Gdc2dBeDpMcC+j8E3NQKCaxJkS
	 sNxwoVHieOMI+eTkqpMtZvmFryc6RsP0vKNgoHqurDK57HSj+KgZRqyjg60mY3poF9
	 QynMbqnVP3mtA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B2807C624DB
	for <ddprobe@lists.linux.dev>; Sun,  6 Sep 2026 01:40:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178865883369.8070.4259045074829896397.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 3b7b7f2691c73e0243a1caef730b8d492ad02898552ce91fa97db68e5653874e
Date: Sun, 06 Sep 2026 01:40:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1788658833
