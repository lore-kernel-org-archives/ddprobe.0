Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 30B9F222584
	for <ddprobe@lists.linux.dev>; Thu,  5 Dec 2024 16:45:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1733417154; cv=none; b=k1L0QWxRKuKP/P1d5pwXWqVmMnk3q7vvBdmAeARwvBsWvngv1FI94g41uvZp3LZAzKXenLzMyG6ZoLF7UDLZ0y5KQ+3kvF5/wsYvErbz2dLtkhmHv4h40tkD8bcERYI/e0RT7aIjsh43+q76diruiWo1Jk3bGqnG9831ZUcUY/s=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1733417154; c=relaxed/simple;
	bh=sdDJLdRonWeDHPQoVkSXmZKflOi+wkgx18z6u3YxJyo=;
	h=To:Subject:From:Message-Id:Date; b=DMQMKdlBGUD+7SZuIf3jol30unZL6FFKmQMtbxaZOnCDzHZ63P+0h332PN5At64JfEZOoVKj4lOdEu5HqU9K1SdOP8f/M/ql7jjsBSf1kJW7AEpz47tzGn9lCzep3HeyU7SaSGgqo8JcZU/SCyAMr04JMciEcB7IgnwsIq1NEjM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=heY1S9A7; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="heY1S9A7"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B7AD4C4CEE2
	for <ddprobe@lists.linux.dev>; Thu,  5 Dec 2024 16:45:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1733417153;
	bh=sdDJLdRonWeDHPQoVkSXmZKflOi+wkgx18z6u3YxJyo=;
	h=To:Subject:From:Date:From;
	b=heY1S9A7/2wYd+/idQILM90h6pyT6xjlLOQrqv0/D86hNqjoNE8zFNO1fRanFpgoU
	 96A8luuVStDmuxszZkaostzBHjypKVqh6J2i9a4zyfjBG1G9fv6O9V9Q8eHXhJXGVd
	 e3z9TTL39RCG2zpoW3VDCLR4ZpJAY6v9xjChqihEYl6crjcI2lCThuFEadWf/4EdgD
	 sg6PllLk5HYw9EjATq1h/aefprs3+DGv9oPwGdbWDmL8LhUTpVZ6HnO5GfIiBxpSU3
	 X2zQ/v0dp11rZLSZmWmuxzW8lkHbMiBkDaKBibsb7dtKK6m+cB8APnK6F6kTFMSFEs
	 Lj1g33aau3HpQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A3F00E7716D
	for <ddprobe@lists.linux.dev>; Thu,  5 Dec 2024 16:45:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173341715366.11552.9213464518921415941.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 13c7e1dde4dfea9b7d006d1cefa8282ba819bfc701739fdf81d79ea4f7fd9725
Date: Thu, 05 Dec 2024 16:45:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1733417153
