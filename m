Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6292514EC7D
	for <ddprobe@lists.linux.dev>; Wed, 17 Jul 2024 09:45:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1721209523; cv=none; b=P8Vos+22It57BV1pGK1j54i4dBgfW1SPZgmlsBO6yedZunT5nR5V0xsBwhAC+u17kdXB11/tJTQ1y2UMZz4Sq2k44111Q7ZAKXYdIo99dpQJ5NTkIn3Wi4uQBAOfyJsBetI1NeTsJHgrkgQG5e72i/13SyqNQpLA7ZYOMv0jm3I=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1721209523; c=relaxed/simple;
	bh=EpTcbk0ITYI5Euoc22kX8FUcooc90LT9EUTYWqZSqbk=;
	h=To:Subject:From:Message-Id:Date; b=GnmBDbiR/2QjjzCvV54j1KRoct8bv1u9HKoV0nYZ5CcYX/ycV4W/eVAsIHCu/WOw/pFVbdffJdaJbzwfqrhCcCukFLItUB1KUITV2rwYmfOP2gA8bOvHn2/y+KgZHyIVNM1z5/dDmA36g2okDhGJguajaXWeaofLJwwq43DF0Os=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=mdl1osjH; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="mdl1osjH"
Received: by smtp.kernel.org (Postfix) with ESMTPS id E4A95C32782
	for <ddprobe@lists.linux.dev>; Wed, 17 Jul 2024 09:45:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1721209522;
	bh=EpTcbk0ITYI5Euoc22kX8FUcooc90LT9EUTYWqZSqbk=;
	h=To:Subject:From:Date:From;
	b=mdl1osjHb7dYAoI2EyDCca7jtUUzSkYAHR7t+fdwxdMGWdtywss1EG7+NmAY01KK4
	 mG6bZiCaPF24iH1yqLjUF+SUpvYwH5tkv79UF0fTlXQc8nV31Rava1mssvTGzkC22n
	 BO0bxxcGi8TnqNYv1UWRu9uegl8GGO+36cANpHMh46NEuyeEaxXlZpuXdNZcNlPOKY
	 hms0jRN+rHRzh8WhQuU2vNQFvnBcZoAW1Bf11he3pe88k5C7TC24YJDM6UnrjUrOcu
	 xxVzf8FNem30CanL5U8Q4GOkITUi4PpsGvClBPayYsNfWVUsSsoWYwonQZ6kdGttvJ
	 gJVtc4W6zq+Dg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id CE4D6C3DA42
	for <ddprobe@lists.linux.dev>; Wed, 17 Jul 2024 09:45:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172120952282.11420.9647070842312814781.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 13751fb7cff0a3a51bfb2727790da06c9f69cf9f8cf9a9438398a30d55a20eb4
Date: Wed, 17 Jul 2024 09:45:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1721209522
