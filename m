Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3EC6E54763
	for <ddprobe@lists.linux.dev>; Sun, 21 Jun 2026 00:36:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1782002194; cv=none; b=Kxku5fL7Ad8YwxNnhxJBIrFXEOIa4w4b5rlpp4PZWRAzI1z7jE1s1PSjKVIstXhM1wUWhZCkxHwSxMzTk0d6dKQYJUKqz3fncOGyp0vl2UQ2TqcPpX0LyJKWmKqgGY/SFQDbAoA50/ePvU9HclcDPr0nNOU2rHQFS346yhIm9GY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1782002194; c=relaxed/simple;
	bh=kP9vlV5vD8b5qG/CuX+2DJ2HFcBoC7MxUI+Sepvw5ig=;
	h=To:Subject:From:Message-Id:Date; b=XlpaaQN7Pn38B7BoQ7nG3qdhlxkJjUiKOMb40DXcYF/kG0lZFaBg0or4YT8z0eDSpDLr+HqwwXkI6ZXTzMGQIG58Kod5EedIVxrgVZ08ZxeDCCrGbv+mka/Hst10TGOWdNdTD0W1qPgY7KmPdEpuJzUjPeHzIhSn3QPpR1l6vUs=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=WHMZW4Hv; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="WHMZW4Hv"
Received: by smtp.kernel.org (Postfix) with ESMTPS id DF9F3C2BCB0
	for <ddprobe@lists.linux.dev>; Sun, 21 Jun 2026 00:36:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1782002193;
	bh=kP9vlV5vD8b5qG/CuX+2DJ2HFcBoC7MxUI+Sepvw5ig=;
	h=To:Subject:From:Date:From;
	b=WHMZW4Hv4DHBngWQtIN7OTrIOXygtZiKGZjk54wlEzJZkd3SHK72+yCJYscvnhuYW
	 ImOfyMtRZLep7OHP1bQvgoIpj+kjbRCo4rVXme80kgsYUHKjm0M2oJ4krWY6eS7yHk
	 iL01EfJgT98bG2ecZmz1ZFaUIxQyD9Nzh+WsisyXF0qGFuUyA9Ctl+uMqk370cYwtn
	 lylADPWlbZOMOjHiCGwMC3hyhwkTuyJkraKGEzeuVntEWGkqMLiVpAUXgwFOM+Z0Hu
	 +0nMIC4ko8KnevKQG3NVAuGUpxV0oIlTauiTEWyGC7oEWWi8yIxl3coo6tDhrZ9d/n
	 aa7qbEefWSpMA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B7898CD4F26
	for <ddprobe@lists.linux.dev>; Sun, 21 Jun 2026 00:36:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178200219371.30193.804885227117965185.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 340f56f7eb77a0071c74dafd08e470cf10749b6673220354dc6c678359368333
Date: Sun, 21 Jun 2026 00:36:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1782002193
