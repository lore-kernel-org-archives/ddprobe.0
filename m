Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 444D4418346
	for <ddprobe@lists.linux.dev>; Wed, 12 Aug 2026 10:10:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1786529434; cv=none; b=YF3nZZame8BhfFfWghWnJH2d5d4VZYpKEQU2CDx42y7uDuMRc0P/UGUMADwff4PtvVQu9pcmI1dUg7bMPNWMQGUsRylJ16B8PoBIYOCtuqLk4L6lueendFPtBgWFmBRbnV78hJUd0U6f8FP+NZJZdC2NseAwtoVD1P7jQMQrj9M=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1786529434; c=relaxed/simple;
	bh=88zB3zljrIo+EiT5sQUo7qhjzfYeZvmhqsNivBDyHQ0=;
	h=To:Subject:From:Message-Id:Date; b=f53v8GOxE2UXHXog9JB38ft1qOt1reWX/5wEK0SiSqhGj9d5yEYSxO57hAxvW9GEvzJA/7yJi0EP/uMFgFYY9U/l92Pwmw/tH9cjLvjmMAXQYTNaRAIpQkNuCBmO2IiYFKfEkuKBwCBXdvWzsGAF/z8tWKoYBGNtq97laFmF9+E=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=kgqkRfSF; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="kgqkRfSF"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CA176C2BCB9
	for <ddprobe@lists.linux.dev>; Wed, 12 Aug 2026 10:10:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1786529433;
	bh=88zB3zljrIo+EiT5sQUo7qhjzfYeZvmhqsNivBDyHQ0=;
	h=To:Subject:From:Date:From;
	b=kgqkRfSFo+qIz+JlpSgEfmVMfAaftNfC6rD2PrT6dKhODVg2HcQdoywVBArVCjzOF
	 g9BCUOANXS+WC2wFvaqfJ+K8HDpdLLZKY1tOAlhoTxy7qPVBU2HcTY1TKJddwdHdQ9
	 geqGWwoI2aAm7MOpL83HuBhzMYiPzEPxC0vHICE60/9ClBYhlxseP5KsntH9pPizTZ
	 zwLHyQluaPbubGMI20wIrrgl/lCMdfNixfEAPferT57Q+DDAGFMRTa+FonfbxFkA0Q
	 6JHBtgk5zS/DvOZwANoA1eZ66jC4uw/FjW44k05Do6lekzxARUOLN7gRkXO5wlKKPF
	 Fdzd2vl/KjMIg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A9350C5AD5A
	for <ddprobe@lists.linux.dev>; Wed, 12 Aug 2026 10:10:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178652943368.15070.13056285324129927123.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: b2c02f9091d497ef3bb7d3b066af0e51c1be4d0a4afa7789b2e7c49d7f401a6b
Date: Wed, 12 Aug 2026 10:10:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1786529433
