Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0B5294949FB
	for <ddprobe@lists.linux.dev>; Thu,  4 Jun 2026 16:54:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1780592074; cv=none; b=oHykuUZLO55HT/RQ/MydI1giG3BetHLTcff235zbyXTFwAm0HQtoSHpVuO6qnaWxZdM0VdbkYzSQHeU0+oKPVxCq4Z97bFt3+h+9eKHcFp03EW5ztBQ9JM2CMR40of8du184zKU65Bw7tdNxXoi3/a1a27s0h/veBstbYqydV3o=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1780592074; c=relaxed/simple;
	bh=uYDxGBIwaoblu/PNYenb0vLrsd7xmLzMQAe5zU25XNM=;
	h=To:Subject:From:Message-Id:Date; b=KecEoHYEHiixuL4M/mxFueMpcoiFs/d9ny5KcNjCeoTt2LrYfDlHkY77U9quH7msAv9LndLgsbaYOFvzqvZPBt+CUGdUUH+hiOUkcAPEazW1kQW+o6BKb63KgafqYvsMSb3ALAqVI3KbY1bO6j6lT8ltXPSM/ywpKQJYVvFOnJU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=iN+Q9iuk; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="iN+Q9iuk"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CEB58C2BCB8
	for <ddprobe@lists.linux.dev>; Thu,  4 Jun 2026 16:54:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1780592073;
	bh=uYDxGBIwaoblu/PNYenb0vLrsd7xmLzMQAe5zU25XNM=;
	h=To:Subject:From:Date:From;
	b=iN+Q9iukBlPCHNDComgS17owWo5tYQ99AmfvtzyunWNRSfhV8xVWTySIA3DvMhl1a
	 a3kUgSPFBcLq5x2dZoEjrvBuBDn1vv5VwXcE0js+6cnFQ0iC47k4nMfNKZ/iYvycje
	 XeR8vRaigywVlqwNpSDrAezt9LNpt5xRdKjX8ns/KkGfCBWqZGy5XbC29YptBQ7f+m
	 67P8c2iHcO4mL/dv03eNm+q6xW3lqF9qRyY9ZFxMgf4EcUYVvkt9xFWOkPSMKs4UuX
	 R0Z2iut4hq0N2GEL7CItld6whf8LhYb4brRPWzfjRPWi4fdn9KrEss/kYuN6J4carD
	 ZOEVnfLKEoZ2w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B2613CD6E77
	for <ddprobe@lists.linux.dev>; Thu,  4 Jun 2026 16:54:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178059207372.21690.9987213405954648387.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 4e8b6e775cf4cb7fba171f18e6d3b5d5e404027e57ac2744f1e702dce82e8a5f
Date: Thu, 04 Jun 2026 16:54:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1780592073
