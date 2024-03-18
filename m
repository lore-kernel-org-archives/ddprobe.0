Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0076457339
	for <ddprobe@lists.linux.dev>; Mon, 18 Mar 2024 20:28:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1710793697; cv=none; b=D7/aHvi+ATQ446pNXkHN/nfidhqzF5D1FgJFl6tUSvtmX/P/KXrU4wWptV0uF/BkG3ff38awkY67G8Ut2i/1MJsmBGg/HhxsESH0EbOU7YeRMSe3wa+nJhnYh+vC3nY3/CrERUNrd+JE9xNz5r3suPF7zKzRuQ6SsnldsSZJWF4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1710793697; c=relaxed/simple;
	bh=112/PjTG8Vb3+SCqc6xWVaq+GgeMJEuZqIaU5iGgJRY=;
	h=To:Subject:From:Message-Id:Date; b=FC/U3jjcj7uEkn05YKIKN83KhHTFzaN125wAMRd1A5IPF/PD8lE6Ys6vaV3C+invCvSwo1UzfMtnsbPmqSCJYnSTKMJW3A5Huj+WmwJWb/8drI35j28ExY7ZndCmOC5PSj/7MBJ5QaEzJDPO3SYG91gYeN51a8DnS1Y5ICrbUKY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=tshjE8mM; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="tshjE8mM"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 778BCC433C7
	for <ddprobe@lists.linux.dev>; Mon, 18 Mar 2024 20:28:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1710793696;
	bh=112/PjTG8Vb3+SCqc6xWVaq+GgeMJEuZqIaU5iGgJRY=;
	h=To:Subject:From:Date:From;
	b=tshjE8mML1xHZfuq/4fnTq28beg/FahNOvsZXhqEgg4EoJr+y6XOHFH1Twlx/yhW2
	 6ppu1qpIADw2GiY5dly3ANQQJehhrHt86Zu+ZA0KRHEA2+RtwBqpnUVUfDzmCVE+s7
	 5yx/PKoOhSTjywMqZLE5cjsKUS1kdrvb1s/kuIG66V0X8g4z9rGWan2Up/xrgkwuj/
	 Nb4VQJEG+0fuzXKGOAYwda/ANU9xuDebktW8Ya8Ml/0+h6hBWG3C7D9YE4Zpo+eg1J
	 dyzyd29AIeXUYPezW7v9WMQXSUPyk1JAqm2lMnxP7nZYAioY+RqenZPW7tWMs1cx0b
	 U8FkgyGqQPHLw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 62DA0C54E58
	for <ddprobe@lists.linux.dev>; Mon, 18 Mar 2024 20:28:16 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171079369639.6504.8675011676190759490.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 62c4718e840b16f15a7dae8452dd5ae3c3f9430bbab1bb728ee09d04b622ee6a
Date: Mon, 18 Mar 2024 20:28:16 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1710793696
