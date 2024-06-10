Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5AD4E156E4
	for <ddprobe@lists.linux.dev>; Mon, 10 Jun 2024 18:48:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1718045303; cv=none; b=KZn7Naud90wvoYSjvNyhrqbfP/eO44Bim12LHwjj0mR5dffZO4YvB9yO2UJKnh6hxD16YR2BtQ7muUGNoYMnm46K/fbRwVZeN1VFNU40hrHmkhKY1v5LL4pwrKrml/0hSHqccrwIL73A/nO7zNd+UhdHlfCBl5JJvppWtw4oIA0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1718045303; c=relaxed/simple;
	bh=gTNOHUV7bPGtsISodUFKn2NnCx42kO605bLODgLZlhA=;
	h=To:Subject:From:Message-Id:Date; b=dte/8rSu0DvhgdYAlWuU3Kiq4IQHTbz5Mu5OLUPGD7TiXzyUcqEFECl9LSTwB2Rjv3f3Mn4lM4i9rv8kUGWwwWowWhUjWNZId01LUGM4Gmdt9JDhSjvW98Ei0sg8YF24QZfLFhCNjnRz4GUDJRT4/IX6ke3xTxVO5lrziECkm68=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=u+CnvOGV; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="u+CnvOGV"
Received: by smtp.kernel.org (Postfix) with ESMTPS id E1A25C2BBFC
	for <ddprobe@lists.linux.dev>; Mon, 10 Jun 2024 18:48:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1718045302;
	bh=gTNOHUV7bPGtsISodUFKn2NnCx42kO605bLODgLZlhA=;
	h=To:Subject:From:Date:From;
	b=u+CnvOGV67KTQ4ev7he8qdvdV1qfcWwcvcjERGB6HIvJMkLNDVrJGZfUF45Hq8bE+
	 LyykTH7P7NIqfO1WAkwfuzJ01j2cBfj+hng4WW/rQMg7JAJuNV/03INIx5sFUrbps7
	 QGgBSiYQLAzcjDc7lb3o7B7AzSC7TCbBnfsDBz3GawrOivk+ltlCguat45iv65Fuox
	 xmUgYOHBoW3awnOilKjXnHEWd/5eAvcQ5Ii/O0/rRKpbmLcXBnnwtUSdbl6ORGTo5T
	 72zEGcmC57doptiVOS3vMKAQzYqymjhTj4Khun147z+zhNHp/6Xae2wI8cddITlHZo
	 uF6N7J7bItRlQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id CAE76C27C5E
	for <ddprobe@lists.linux.dev>; Mon, 10 Jun 2024 18:48:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171804530281.11943.2293735561181977700.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: ed55276db0ce8c183c3e2bf446ac47c70a86b6e2be9a817c48ed08eb68a4d9b0
Date: Mon, 10 Jun 2024 18:48:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1718045302
