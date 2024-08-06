Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 21FA51BD02F
	for <ddprobe@lists.linux.dev>; Tue,  6 Aug 2024 08:25:54 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1722932755; cv=none; b=iKuH9cyezPgmW/taKRVCSRvNQG6obIf0YtxU+npWu2Me2GwEIX4ow2mdfVVdHX2TIfKX5anapi+mdAh+G7R7OiEtbBZaynYsjTz1t8CBWl+B//Zu8mJg7VVrhFeHWRV23nrErhkjrenziJtohWcD3ArRTyfDLSCUChIXt/pn3zw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1722932755; c=relaxed/simple;
	bh=7P3j/NBUuSXWNaifvPplc9YmkbwG2hop5fjDG2fjozs=;
	h=To:Subject:From:Message-Id:Date; b=bEnvcLO45B0l0PVko2uXiwA2TFkdQuAP+5Jrjs/2w2x/btHW9CAdwnl8rBrqrLt0NbqSCbFgDyoy7lZD9LtAzSSUIgs5ekA3VmkmAkV1V/pSVaQvx13G+OzAb14ECKlpwzhTQ+KYBkyBrmPRVkPlBuMxpye/6x5j8tfhACmBQGE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=QijchUD0; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="QijchUD0"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A27B4C4AF0E
	for <ddprobe@lists.linux.dev>; Tue,  6 Aug 2024 08:25:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1722932754;
	bh=7P3j/NBUuSXWNaifvPplc9YmkbwG2hop5fjDG2fjozs=;
	h=To:Subject:From:Date:From;
	b=QijchUD0XIwFHwzr/IQTGUeDYDsCoNx1vV8TLM3HHnxRIPV+GeGHccL3hmVxL2Vqv
	 1dZfPIIDh139NTudoKO0zCP/kzC7Msr+Mh72AYKd14pk4SDbXYCtLE5sFGbWGgbi+s
	 NjqESPo6C/RUaKxcHglj1C3UpvkJQAwpM4OJblqKJNQsZ24Tbk3P0ofzq7fyLbg2dL
	 NCJCud066rQRmWRv3NSphgspakloxanl+wHLdThrj6A0WS9TterwOBDiYo1AeY5DbC
	 x3Ql0yJOF1q7ysxNUGkzLtUrqNP1Iu5jNY/J3fHBeWHoC3wZW1Z/FFuhkWKpb9pUJQ
	 K1iUXftA9gbvQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9299AC3DA64
	for <ddprobe@lists.linux.dev>; Tue,  6 Aug 2024 08:25:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172293275359.11673.797609461994385520.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: ffa878a56c570d88cfccc9385788f503d7e4de4c08cfa9c6dc0aac76b40ac05b
Date: Tue, 06 Aug 2024 08:25:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1722932753
