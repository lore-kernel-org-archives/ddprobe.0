Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 587FC74047
	for <ddprobe@lists.linux.dev>; Sun, 30 Jun 2024 22:04:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1719785063; cv=none; b=XTv+ntgNiO3kKfi7CX9em07hL5UKTIRO788b/m6uVPYZtPc2fnggaWTRpTnj1TIfWl8lSjgfCIGfajWILhZD7rBnN9wKqKRmlod2EHIdKTyd9rM0aIqKSp62997Lmq4yOFf7xmWBqu8bHWswZjIBHO8+JSaUaPLM8gb/9SniSqw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1719785063; c=relaxed/simple;
	bh=RoN0H6R1Ylb+OclfxEDcYF5kWI4kjJ07PlgC+dxnNbM=;
	h=To:Subject:From:Message-Id:Date; b=mSICd8utWJajqQI1uyOqssd9cwQtEEx0nnqbuDsJ+lSTaABE/5TsyBgsXCjapfogbKA55YCkMidNa4F+LJ7ZtOmFjxStrG+59Vq/wJaO8cEAtDYga2VcAqse6V7bW9WV1md+vnzPKfJJNu0axsA4NOADsi8iKH37xi6P7ZB2Z4g=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=UUK6hgWJ; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="UUK6hgWJ"
Received: by smtp.kernel.org (Postfix) with ESMTPS id E04EAC2BD10
	for <ddprobe@lists.linux.dev>; Sun, 30 Jun 2024 22:04:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1719785062;
	bh=RoN0H6R1Ylb+OclfxEDcYF5kWI4kjJ07PlgC+dxnNbM=;
	h=To:Subject:From:Date:From;
	b=UUK6hgWJQcSVuU8ijjGv0SEa9KDWMsF+kafEmfDTKnCQrgBF0YWjsFR6x0eLNVwe3
	 euZsY03BwCfaUKWYngrC5PsIxWdDxLuDXcurbqB2vyQpiN5msWi189XAFR5Oxuh//Z
	 yumQ8fJacCf2grTp8T3AIKlGI21gI8OxjD9tTj2HIN6ZYYJzK/CndfUBelQWDuNoVT
	 18qC/8dUyFnxOUyATLcN8MQmNYOvtH8qHWmhCjawD+Zp7ysBJSfV4bQHRovY8aQsmD
	 2iVaHDr4zw2njSFKadwpNVJgNQzzFb9yQPB0v+NKczeOVjAkXXZ7rwvhzuEiju7THJ
	 Ybq2Gbv8NR87w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id CDA4CC27C4F
	for <ddprobe@lists.linux.dev>; Sun, 30 Jun 2024 22:04:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171978506280.1518.1930622438888104424.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: e31f7fc13b6887a3017f7b5e7807ac4a568ec95366039820a52d53d00e815334
Date: Sun, 30 Jun 2024 22:04:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1719785062
