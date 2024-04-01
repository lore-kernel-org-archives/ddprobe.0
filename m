Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 061F948CDD
	for <ddprobe@lists.linux.dev>; Mon,  1 Apr 2024 19:08:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1711998497; cv=none; b=sLYiTKm6nCu9L8KUc/ivFdiyBrg7xCRbNPlsl1hVAkxd4bGtUNrsMm37N6ON/ajHF9obCC8OOU42vVFRwqf8A3OyYEHt9YHoUKyxuVqjoocGuiVjPkaV2pC/5VRWYSP6jhmuf0Scx19jByhEBPfIbilvz0ojfomfIkeewJzKZ7g=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1711998497; c=relaxed/simple;
	bh=dXItl3XuW9ETMsbV8B+8X+J1oQmewxE0QaOEg6gN8+E=;
	h=To:Subject:From:Message-Id:Date; b=BYMlFCpc4fEizQHEUur/mSzP38SSV35g/Rom5wJEJh6D+QJ2KAKeoY0wMxPL0pYfREuk/BPIAkXeEhQmdEHMKddU1xicifdgf1e1qcITDHZyMseNKQQSShLUebHJIqDcVBJcSiMZC/tOy5cCxqVRIFCqAudP0jZOUk9doZzSZ0g=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=XnU3fql0; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="XnU3fql0"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 73734C433F1
	for <ddprobe@lists.linux.dev>; Mon,  1 Apr 2024 19:08:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1711998496;
	bh=dXItl3XuW9ETMsbV8B+8X+J1oQmewxE0QaOEg6gN8+E=;
	h=To:Subject:From:Date:From;
	b=XnU3fql0oQeSdnQTadEHBoHRncoJ5d8a5w/k+2pB2ollqIEmjLBJnrH9c+yF9Hamo
	 Aq1EGfQGrnBzZ1t3vvX7llXg+pVDhLpH37PJEveDTvdncW9SgOdgDv7kdVCZi/YdB5
	 ZTNZfz3ioYmbuvffnsDMu+EbI7s+xkd/T7ypbURC7F6dX0Op3YTrmTW9hj2b/LL2IQ
	 /HgJyLd+ayWkEAIkSRnWPip/uOgKuzemwAzk0E2SkjZ1ZdMBHPtXD7nGfvq13kT/nb
	 wc/T4FrZaKJdUme4wbROCGj8DlJL+GHEaijMIpqPP6UcZOvJi683DQNvw43TxCOhLm
	 gm9uf4qWa/UtQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 61038CD128A
	for <ddprobe@lists.linux.dev>; Mon,  1 Apr 2024 19:08:16 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171199849638.5589.16338254202520803344.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: f4695385ec019420d21d54e0ea4f7c2cfb4a5a2995aa17924e3ef86aa5abeda4
Date: Mon, 01 Apr 2024 19:08:16 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1711998496
