Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 50341819
	for <ddprobe@lists.linux.dev>; Mon,  5 May 2025 01:29:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1746408594; cv=none; b=aBllmNmAYiC0Oit6tQjmceqruWADUPEA4/6HR2bD6yw7KHuAvDBGEhpmq89JOWGKK8BPKkSMHrI4qNA68BtfM3/hJIsKD/Ve5ht0Yzo0M09JknLdB9CSRt5LkPBfSkJRNAuWNvVzG3TaLWyWoV//bqU4dyDH2Y+Kq3Q6viNiyls=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1746408594; c=relaxed/simple;
	bh=tLPthcLk3p5WQOVYq92W/ig+iAT8f6IuBocryHv6ULo=;
	h=To:Subject:From:Message-Id:Date; b=C/KrdOBTz4cdnkXRqCHF0vFeQ3YMOUM7gwQjF2i6Z4fHYc2C+OFIO9JCEoJ8uFoq2gnL4rbmaVsDd5XzUQB7nC0MZMTIYLwG+jLI+Vn00vi7wJoj7r7QYff103hHPoRzLhOEqKYKz/yzWZnimOBNswzn6BSAl/OT0Pb+/lCNz7I=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=EVTIbh62; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="EVTIbh62"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AE7C4C4CEE7
	for <ddprobe@lists.linux.dev>; Mon,  5 May 2025 01:29:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1746408593;
	bh=tLPthcLk3p5WQOVYq92W/ig+iAT8f6IuBocryHv6ULo=;
	h=To:Subject:From:Date:From;
	b=EVTIbh62CYjE0qGKmi2Kgf8zNPu2vGkF0LvLHM2maiS2T9/ThnNPRD6Ska3dpRts3
	 rkwukvafRs7wp1ypAAaV6BJGTQVRsjGOUrVQMyUFNEec+fAcOQgLz8WoyO04pL9Xs6
	 UcjslH9tyjLoPYbjAaDnQ/K9YEL4HT3xqS5y+kXSkPySUDTWQJEijVZMstLctjub0y
	 xri8iGqOpqx8OuEV302Abwkt0Ui+aYtx00Qf6oHmPa0xqawJIVEkWq7PKnqrTn1aa1
	 0HIRNFqS3fftjrBqCLo/4O5ejyuLUIxXs+fg8S3w7wxrc85GdQ/ECuUQMhL+J4VT0j
	 SIFuC1gaSZ+3w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9B4E6C369DC
	for <ddprobe@lists.linux.dev>; Mon,  5 May 2025 01:29:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174640859360.14160.10711951246012779774.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 06472b978bd9d9c3ce0f2fe1d230926124285c63cdbd630445ec1f52dc9ceeaa
Date: Mon, 05 May 2025 01:29:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1746408593
