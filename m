Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2A3B21684A4
	for <ddprobe@lists.linux.dev>; Mon,  5 Aug 2024 20:05:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1722888354; cv=none; b=r+NpHGs3y2TWjTELAQ67Nbc6zqMqPh09YwJo2MmFXmVyQLbPIGMYMsQ+67ueB2g/CswyUkoxhK036CCG8cJ9Zy8g57G8p3zjA5iqDYAR6f7euEyKHAUh+YZC8jCFzy2SP4A3hx2lfwn2z/aIWYDwGMtenZQKnqXkE9jJvnAY3Uo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1722888354; c=relaxed/simple;
	bh=6e+iaEj1JS1H/E2nXFeKJrHvDpotMdSxqdVSBkcNoq0=;
	h=To:Subject:From:Message-Id:Date; b=sZc5fNc1TpXcDq5vU2bG0BA+2ay4CO6ggejhwD4poHwfPpf8YiKstyFVhyJRu6PGSpMQbgvj45KQX3cfayqI/mo9T9NosxO22TB/fw7QrLx9HjjFD6Gv/auRglKMpr/rsIrghU9UplBaL40RO3XtwOcfexIp4DTWXujSzCLs8aA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=JJEyU4k6; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="JJEyU4k6"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A4C38C32782
	for <ddprobe@lists.linux.dev>; Mon,  5 Aug 2024 20:05:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1722888353;
	bh=6e+iaEj1JS1H/E2nXFeKJrHvDpotMdSxqdVSBkcNoq0=;
	h=To:Subject:From:Date:From;
	b=JJEyU4k6Tn2SZB8OcCREEG8vVe24kYfyudrIyZnudZ13lA8jPOVhnw4czwaZ67pyO
	 Oj85k+iUCtSaAWLe6yxH+HXdk4eVg+7VE33tTyaRjJt3aPw7jSiEB8PbaDnrcoQZb5
	 kKVkQqGEn5ftqGXVSzaVuFbW3OMTcx4DfZg52U2qoNZpEdnBpIn8oC+NxgR4rNTr6I
	 gVR1zn/V5/SeDt/atjxLyBb0Y8TKAHbcQxdF2v7GndlL4G9uCjLheMHs1h/zARuC3M
	 /54iIzfRtu1Gbk+uQmNh1eZno1jmT0Rgnikgi5ROPwhcrR3rece/B3BckXm2fvQIdc
	 v5kPReDECW9OQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 939CCC3DA4A
	for <ddprobe@lists.linux.dev>; Mon,  5 Aug 2024 20:05:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172288835359.5326.7399865485067505045.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 58f82659f11a1a707cbb1b4b724b01b6bd0b90dea29a34a7bb17363ea0b10a18
Date: Mon, 05 Aug 2024 20:05:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1722888353
