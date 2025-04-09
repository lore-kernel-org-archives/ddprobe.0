Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 489663C47B
	for <ddprobe@lists.linux.dev>; Wed,  9 Apr 2025 06:29:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1744180194; cv=none; b=uJHbs52hlWPtCHM83PEfrF8r/ns8hHb7cClXgS3qnxe1EQetVR5h+Gprj8UkzCPdfBexQR6bBPGiDDahxQ0jQ9pSvu2VO9atmika2HbmpBU88D0j1ZrQx4+eEq5D3iJjQAfBnMNcrjbeaQQ+ve7xruXKf7Gpn/e0gE+p93Ckc2I=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1744180194; c=relaxed/simple;
	bh=uIEwTXKfTwlQOtVSUADjHY4PsdDG0S+Zi6yYca9RvS4=;
	h=To:Subject:From:Message-Id:Date; b=OBpaeHLYvS70Mbys69mphKnkr86lrt6jfdgnQW5RzqLcxSKT6/963ZeenUkThFz8SvDGORzFBPfbb2MqKbBguLsb5gLtjzzcgRj8MExDy+rnSTQiXKIc8t3bqBzVz4UXe42nsQ3bDDVx/9WFy+tya09eX8qTOZoI/bw063bSeT0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=j+xJvN7p; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="j+xJvN7p"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B51BAC4CEE3
	for <ddprobe@lists.linux.dev>; Wed,  9 Apr 2025 06:29:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1744180193;
	bh=uIEwTXKfTwlQOtVSUADjHY4PsdDG0S+Zi6yYca9RvS4=;
	h=To:Subject:From:Date:From;
	b=j+xJvN7psNCuq5L2TFChbmYciiTDKr6t+rbnElfPtdQBcLKp4WYnwURKEAtpNYThM
	 HYpxcDlfvn2YxGi7tWUtvXmXAjxWz+GZFeo+FnmpomAYYtYcpfcfrI0lN2cjZ+J8/H
	 40bl84qKTw86CwcDgbFC0SZ0TrLibPmetvyqXT+eYISBQxt2TFpGGuwf3/lC2rsle1
	 OeKehBosndNzrLLpSpYXLf9hL6GYkKJbacXfiNFM1V/8Fq3uj5HF+1uGGDhbwtXANo
	 ZmHZ4tHP6mlXF80nk4M5orATAD9hBiDq1jQpUH0GQhOMTS01s6hI5LgzKIoKeKfLGL
	 auaXoCZzu/YhA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A4FF0C369A5
	for <ddprobe@lists.linux.dev>; Wed,  9 Apr 2025 06:29:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174418019366.3491.15620993805952204640.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 8c28a973294156d65ea135ceac3be6089e06524d17910bb419d32b67bee7d12f
Date: Wed, 09 Apr 2025 06:29:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1744180193
