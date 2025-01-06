Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4D067184F
	for <ddprobe@lists.linux.dev>; Mon,  6 Jan 2025 02:25:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1736130354; cv=none; b=Ut2MgDp421QWyGBEbjfYo0XYRkeoAtQ9SKKV0iE3iW0ptyp7oUYwpJyqhtRB+xEv734kTTd2ZqKJB88dO118E4UqPSB6VE0xAHB0WwEvmjPt/I7pzVkmcoq54/DDoUJskCd78gOMcUBgmsSHlk+Kv+J6HDazpK4XZfciyocndYA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1736130354; c=relaxed/simple;
	bh=W+oEcw0uw3I+j34hxGjFNBr2aJdA8pvZkd/LxrmZDs8=;
	h=To:Subject:From:Message-Id:Date; b=nNnej4gLpxBYFijkiUexixTfLB3p323i45KdCtYRs0VKR19hRZR5KFmoXlxq24ato+8KakXIPTrEWTWIU7JguzC/QRhHFOXY2lqyrsDjeWVEzGUpUz/oW/iLAcyYaU0zR1wjeUew35QxWu2p+X9ir27q06NKynM78HMBkX1qz0Y=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=GWcR8N/z; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="GWcR8N/z"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AE0FFC4CED0
	for <ddprobe@lists.linux.dev>; Mon,  6 Jan 2025 02:25:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1736130353;
	bh=W+oEcw0uw3I+j34hxGjFNBr2aJdA8pvZkd/LxrmZDs8=;
	h=To:Subject:From:Date:From;
	b=GWcR8N/zK6q+DQcc0qB/Liz1CiEaszwlnPv6Td52pAkfXIhFM6cXg3EYV55YzR6zM
	 OkZjN2HsBFPjVudmv8egvuMkOsXlUzagA1jBL9TZNB9sV30tv4wr9cUQVeW/ft4S+Q
	 PSPXzW/OUn1/IbtIN95Qalw/+68H4PM1bClzVJYGIreQcrRXFWlO3Lr6FRsgW1td6r
	 a9Eo+N1AZpS/HZqKId7TC2pNgeWxPs+aOEj+G+FXGvQ+0WIrxh2UNP+psDy/9eBA6U
	 zqw1Z+/VQuty6kDON+p04X+XX+9lkj3QWbNtQ1SvMe8bu7DJerpcTHQXxVjYDWiSpx
	 ePpGqrysZkzRA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 96199E77197
	for <ddprobe@lists.linux.dev>; Mon,  6 Jan 2025 02:25:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173613035359.8711.3653769024860687316.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: accdf4a0949c73b12212482c1a0ce6401e3a6e5b7113acb5843c387cab75363e
Date: Mon, 06 Jan 2025 02:25:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1736130353
