Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 170AB1E4AC
	for <ddprobe@lists.linux.dev>; Sun, 21 Jan 2024 08:58:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1705827497; cv=none; b=SSyqmT2mqv5Uyj/m0p0pq+XzLxAb7AL2o3li08/xRY4yNvurFt0hel8VyuRjrxKJ27Ni8U6uGOwgm4mKywcxFOU2WfeHn6XBe0agx4u5PX/Xek2pRD//0eKNxyhHJSVv3SuTx2Q5RRahNR2SzyIhs/6YmSqDo4fipFgQinPkzSg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1705827497; c=relaxed/simple;
	bh=qW/fudmhGPogjbLjIn2k/OzaqZgcc9AOeL0pDeHYafM=;
	h=To:Subject:From:Message-Id:Date; b=H/6AtJ6idhnUg47IJt95i1ZLwnx23vnnaD40LIRI0YeiZnHNXJdC7v7TQVtobl9JkuIOBm3ji0+lf9Tk4+Lifgr5aNyfwaZaKnrW5J5F3l3RZuDbzPgaDo8R1p/Phym/6WOW+CpgTjZLPS0Fien5nejlJc9oTFX1lIMnsi83gCk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=PTa0w9hC; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="PTa0w9hC"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 79436C433F1
	for <ddprobe@lists.linux.dev>; Sun, 21 Jan 2024 08:58:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1705827496;
	bh=qW/fudmhGPogjbLjIn2k/OzaqZgcc9AOeL0pDeHYafM=;
	h=To:Subject:From:Date:From;
	b=PTa0w9hCH2G2tsmiu6PvDP7XopVmosUiF+/M5y9mPSljg5NOACf//5pJUYjHVskB9
	 V1rod4OyhZzMr1s2pkqKIDg1rYA6nisTiWeI5fjhYB8zZX78H9pbvCJoQeKdpP7YyW
	 mFKSlNPBjzx2twc7FMHFkM3Ke25WQXiGgxBAD5utxFJql8c+DvH2O1ncTA3dZMQbVw
	 NAvAXY8uPnTJiVXbw01jDLvAVqBi7DLyj4pE/QzaC3KlRYUvnsRXJGPYu/bYebxlmw
	 nCbCE6OXNSmaWNh3o1us7yoeOP6LFkr4dgLWtkwdQgj5gTSZbjyJt6Ql1tQX7Fwbw7
	 uBD9ZITBAAi4w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 60DA7C47422
	for <ddprobe@lists.linux.dev>; Sun, 21 Jan 2024 08:58:16 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <170582749636.24371.2523942334083766801.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 56a11ef43ed958d314cdb4515f4a1b445c0d5057018f28bb432f871f14b135b6
Date: Sun, 21 Jan 2024 08:58:16 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1705827496
