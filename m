Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 55EF1166F1B
	for <ddprobe@lists.linux.dev>; Fri, 25 Oct 2024 07:25:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1729841154; cv=none; b=MDpYCnbcykALZOPi0hV6aIWd/JUy7Hogvkq4zMH78kZ/fYnroDmH3A/C+0s8HFhm/RvWx0erYAnie9IfxHZqxaGOB6AQ6p4rbGbSZxG16V/su40DD+7ZvJ/yI9GLE9wh3wqb2rfbeueYbpDpE7VxJxLRQ4vXhelh7mNa6/N36Jw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1729841154; c=relaxed/simple;
	bh=KH6JOpEsFMHDIgAZyfWlDrhwuWwjKwPqSAjtWuUzI/8=;
	h=To:Subject:From:Message-Id:Date; b=pYoRbw5GuNhaVT2OL8w4bIj8hAyVroEpIKYpKLPmohDAsSvyPFoxRkv7ePVOQ0+yEQRYLl6KFfKa4N0LZ8CeSSxhB/d69g//B5UVPnDQcmBsE23uVDZw5SR+QtrNV0MrE+jUhaPBmWKBYjDTb9jwjg26iOVgbOl63zq870x6Lc4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=APA5vlUW; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="APA5vlUW"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B30D1C4CEC3
	for <ddprobe@lists.linux.dev>; Fri, 25 Oct 2024 07:25:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1729841153;
	bh=KH6JOpEsFMHDIgAZyfWlDrhwuWwjKwPqSAjtWuUzI/8=;
	h=To:Subject:From:Date:From;
	b=APA5vlUW+grUdjivcBOJo31nqu80biFbwEweW2k8zghfVyDQqGXULhAk4uIeQ+cW/
	 TxowsvgM0XhUudSOOWTPhbiC81y1wdlZRVOn7hi9lWE/NoyvsLPZDpPbjRogce1+5U
	 IbmExczUn5CljI+202eW/6Va6n1KSKRtydJC0RuleJJu7cUNbjt8Vb4hJpT8xeT8Cn
	 +ya/hkRVo/5ByohEFofYjko8n6MCi0V+ITdRjX+shB1ZO2NRn/jPrbvEjDM9Zmgl9W
	 vpb7LcUG0IvcceVe1he0b+R1cWWSdszD+Qlwws5IKCZkdg47El9FZyG3uDC+6R0dwm
	 TSe/WAHbredCw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A17A7D11704
	for <ddprobe@lists.linux.dev>; Fri, 25 Oct 2024 07:25:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172984115364.7485.13541099120009589332.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: f15d0783172dbb0738ac1ff61cc766a2bef9907a5cb9c5ce8d9ce98c4979e7b7
Date: Fri, 25 Oct 2024 07:25:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1729841153
