Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0656732143D
	for <ddprobe@lists.linux.dev>; Wed, 14 Jan 2026 16:23:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1768407834; cv=none; b=tCNlfn4/ikT/C+Eh3pqkIrZGIqFa6aUBoSSRowkH8T6Ouni2TGqpOlqOcvoYkqr+0HhUo8h8TBkdsPJpXejx1GugcYYhCjd5aTzY/sdwgmWcD/977fSXpAsFvFzBrFthHdrxsMeL1tIt+7n9JpiP7/FgXXp8C1m8tSh2ZMGGp6M=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1768407834; c=relaxed/simple;
	bh=4PcCbeFdwyWs8pFIfSgk5nuyUp4cG14h9BZaKxgMOA4=;
	h=To:Subject:From:Message-Id:Date; b=kEdIGyY0lDtFD8l+DQryt2DoYe9tUYIif0xVEmMV8MclBdRmWttDAkZFhiCwNxJZfltZp9w3gvZEXh+E8jHuG6AyVIMpXlDF6HGOCHOJfpwkQT8Nk/YSBWSgI7c7sYZx11GigBuP8KVGQHPH5KOJlKFC+mdz0rIrlTG1nOOWcs0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=NFVt8Ceh; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="NFVt8Ceh"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9CBDCC4CEF7
	for <ddprobe@lists.linux.dev>; Wed, 14 Jan 2026 16:23:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1768407833;
	bh=4PcCbeFdwyWs8pFIfSgk5nuyUp4cG14h9BZaKxgMOA4=;
	h=To:Subject:From:Date:From;
	b=NFVt8Cehsft3VHkKtzISsiZesSZ+jVUSWQ2Hj5MpFdZ8DM8hJc8HzI+OyWvsrxixm
	 WqJ/DUfmM037TB8n3hh7Jqlm//r5QelG7yAHFIQ6bEi8ZoNnZaYNzYc451Com+BsUm
	 FRrq6IaKOcAJJ0iNo6qrWN/WOKtBVinhgNTIMiyBPkubs/qnJGxbi8IY/aHQrJDHz1
	 lH7GlnEaGpzB/6GNMmWfqxCYLGDl7uWIS5qYYYMtHVNrBrDzwNYbmBdtM5Fd7qDo3b
	 AzpHLOFzPLho79rPkIqiFEmtrsFLea2t0m9woQedgfCUJMlGsPo21gqMMGb7CLwA9x
	 tSV4DDokcGRJQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8FB90D38FE6
	for <ddprobe@lists.linux.dev>; Wed, 14 Jan 2026 16:23:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176840783358.9711.2628531206980889617.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 49cb3d8c849cccefd47596f211473a35cc464a88314ee70e0322ee70d7a16a1b
Date: Wed, 14 Jan 2026 16:23:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1768407833
