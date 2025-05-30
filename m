Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id CAB1E1CD1E1
	for <ddprobe@lists.linux.dev>; Fri, 30 May 2025 20:09:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1748635793; cv=none; b=pwQM05mchjMaO8ev4jZnMXPMRUVzeLIUANCMBMMvbNkIKeQeIOkS77HxvReCAzHYzsrG1tMcvR8OETrptbd5tqaqXxtdRxeZbJBLsE2brCkCH+7MacRF+Tvtd+Ups0PJ3lNM2BiJm22/IbHc2csWu2w6eY4s9b5wUpP63SdYTc0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1748635793; c=relaxed/simple;
	bh=RC4MS0IcHr/GOOC+AyZdhfGAQERfqPvN13PNsk0jzRU=;
	h=To:Subject:From:Message-Id:Date; b=UhNMvKhD6M86CjvgdPqfNT+uBJ8yfnp+nijE13AQ892Nb18sy9ei300RXekvw57DyrZm9nIWSlaCsBJhSdJuZLrArh8DFkiZ8a8EIoY9Lmc3b+7OfXPyyjZ0uFbk8XLeKxDy9X5zSVhWq27tkr/Hj8WcuGPpt6+lDWMWt3Ca8Cs=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=holtr4t/; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="holtr4t/"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A2FC1C4CEE9
	for <ddprobe@lists.linux.dev>; Fri, 30 May 2025 20:09:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1748635793;
	bh=RC4MS0IcHr/GOOC+AyZdhfGAQERfqPvN13PNsk0jzRU=;
	h=To:Subject:From:Date:From;
	b=holtr4t/EOXdcLgMDEzQjBIS9xecuqxFu8gPH4yBG4rd2yWwV7VlBwK5Jzi6GVjXy
	 QH62b91FRu+2Vx+U41Un0H4w6AjOGsjED1aWYkP0wUg9tXJEhBHOIgyU1VUB6MxU11
	 Yk50p3ODQrUqwmGuTY5pCwtd6TjI/PwRt8e6hph8pqLVuWpChueBOkV2o7OLql3L9L
	 /SGOjl35q5ByCTLzjJL8Rmdl1LmJvo0ziUFS7BSyaaePAWVvFvw+3MPa9TYk3r7JXr
	 AZnNKjghvHvANwdz3X+UizgYAi3m8Y16Y9aR2xOSbNrzqjz5/Fkxgyoqiq6cXgS6fM
	 D5E1Pix+E55Lg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8EDF9C5B543
	for <ddprobe@lists.linux.dev>; Fri, 30 May 2025 20:09:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174863579357.32412.9855077302716473874.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 9d0c16e898396fab39766b8c24f2bfaa6938ca41d12a53d5df15cd4bb9789c5d
Date: Fri, 30 May 2025 20:09:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1748635793
