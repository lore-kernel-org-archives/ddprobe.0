Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1F350274B23
	for <ddprobe@lists.linux.dev>; Tue, 15 Jul 2025 07:29:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1752564594; cv=none; b=jXITVa0MF+5amBw4RLzOYM3ghrwpyaGOf37Io6S5ta9SpWRhH4iTMyc7x5U6ZuVaDqsTjK8wN6gTEvVW4Wp2RzkHqBdbIZQQa1GPjeTZOaWzetqP1JefJgA+qC2KehxU7Gq5vCYX6TANOItZvfjcoEp18PX3Xy5fCc0PurzOzeU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1752564594; c=relaxed/simple;
	bh=RurzMqXpxEmKkWcpXN32LZcsmAmOyt5uHMo1H5BjlyY=;
	h=To:Subject:From:Message-Id:Date; b=NErF0vfVU5T5jlzZkXiBpe/pF9GimOl5aX8QwuMp90K8diJR2nzThAXKBZnqniw2ef+FGnuRllTOSlMZlLdH4+AlpbiWXbudkztzEvifnEx8+8F3pnKkUdIECjOMEWOC/tMBaI2Y5JJB2RI/RR/r6Aby2H+V2xnQ95Ci7qA4DW8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=B9xFEBPD; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="B9xFEBPD"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A2F6AC4CEF7
	for <ddprobe@lists.linux.dev>; Tue, 15 Jul 2025 07:29:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1752564593;
	bh=RurzMqXpxEmKkWcpXN32LZcsmAmOyt5uHMo1H5BjlyY=;
	h=To:Subject:From:Date:From;
	b=B9xFEBPD11PyBwQCNSV+Ov4GFxzrOZNvXI5UzJ0ZsFK3Up1zlHpZ31Oq9YJAqQUAO
	 uY2/WQoBGN2fcvcwjGfQ/KcKKNzfwwqEe3s/6sro6cNhv9vTjSttU/6q7svNm3fD9A
	 bZBt+q6gw5+NWGFcwCMLqHsPUqm02U+KY1CCGWx7b5Tkoo/odzXOs15trxBwHvQIic
	 10c+oF2wxYAbbGLWen548bjbuRO8G9IpaAklNZmUk0bGUToe3kfUquBSEasa4rjmIn
	 ICMrAu5nMt8UtU4zKRWougxwxSV0Xvw1/8NCwK27RVkGwdSwnhLVn1tbmbXHG1GOwU
	 Taq8jREWlySaw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 90019C83F1D
	for <ddprobe@lists.linux.dev>; Tue, 15 Jul 2025 07:29:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175256459358.18344.18067534792683682708.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: ccd7cc66cf8a63225612b9092443dbbcf5561fca3d5eb87d3ccd4d404b75e599
Date: Tue, 15 Jul 2025 07:29:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1752564593
