Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 35755284667
	for <ddprobe@lists.linux.dev>; Tue,  6 May 2025 16:09:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1746547794; cv=none; b=UhzVMe+ntAAIJB77Tn5tNpc9ONWGlLxuBb9d7nECpay4qsssgdlS6j2+JAuSbOkd4au7entv7IF/QD0YzP91NfnP5MrfkX2FdBbUOdfV+8HAn2PIcen1u1lOw6NCqEET4o4hORhZYm9inUopLonk0piyXj+IAd4G/MM4qiUqgek=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1746547794; c=relaxed/simple;
	bh=STYO/Ln+zLzgY6jYae12RTO7T4gNvHZhdu5dShYNTAw=;
	h=To:Subject:From:Message-Id:Date; b=qOfRUeWS2ecYqjhf+MQbMItCIzKUVUcdyT64boo1Xi2ryKWRAXwPcXrZDBvZbpZVZHsjQ+DFgR0u6pZcSvRwJZoYmUChyLUin4Lvz6hi0CrS8up5qVW9h23hgWXTx+sIYL6ocYo4doLFysd5SPK7O+XOlii3Xb/nlQ714K704fg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=lpEYIHzG; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="lpEYIHzG"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9C8E3C4CEEF
	for <ddprobe@lists.linux.dev>; Tue,  6 May 2025 16:09:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1746547793;
	bh=STYO/Ln+zLzgY6jYae12RTO7T4gNvHZhdu5dShYNTAw=;
	h=To:Subject:From:Date:From;
	b=lpEYIHzGMpihyKrJo777YtCHtotIrfd+XCTebtN+2c+XQp65AAgUDdeBx06SnUfCU
	 +Afx795aCfDeHExD4XGPGG8jGGtTep1WuoJOPq3mCjQ6DMm4JtjjN5NLtuixt54lE7
	 R8SX6SBMIJKMys8cUAu3HHXaIZCz4SyibAgeUttUl23pYHz+O+a4jkb98E7sgdgxhs
	 dUdUaeaQ5B2QYK71MCHxUYoKHo5RMJBxateNA+9sqRFwxpGfU8gL2Jk6dmYSQddS9e
	 +UZ9JKVSxApvKq3uf01rRVdAhGfcJr9df1zOAP8xQY6engQgLoZwGzS/+uswpASVsh
	 wSeaiXN/q9Tkg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8EE68C3ABBC
	for <ddprobe@lists.linux.dev>; Tue,  6 May 2025 16:09:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174654779357.17548.13491732323095289882.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: d65fbef7d36a5264b76295db1bd9f80fec20c33385444af5d1be3e5994b926f1
Date: Tue, 06 May 2025 16:09:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1746547793
