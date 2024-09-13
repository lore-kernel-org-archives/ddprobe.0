Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D3D2B2B9D2
	for <ddprobe@lists.linux.dev>; Fri, 13 Sep 2024 21:45:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1726263953; cv=none; b=XkVbjPzqB80Gglwqtavsu30PsZQH/Q3P4BRpxE9AsSC5wJbnGClQX+OB1T1nlgAsis0dBvApcExFt3ZPgYZNhd8DXF7ZmDzOhtstG1/1rE4biU0ydi8kw8k2exBYtN8tvmNm/eYxVXH8C4kF74iES7FCngImacorhkOXfeB+4v8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1726263953; c=relaxed/simple;
	bh=moJ0J+kvCs9uLHqIucwbbjFxCS+Gvs80ox8ZmY13R5M=;
	h=To:Subject:From:Message-Id:Date; b=NEGo4iIGY4lV4szJFrSOcHu5MOLjH8Fau4WtHAOoB6DIxtvr/UPYlZWi39jpmvwdqItWni4Nkz0l4KvchOBNCeO+0fnkSe9BdCU90s0C6azVxgDnBfhnt9xvzHnWldM5S65iz7YZdZIp+Hpa3bXDKg/48TaGgdS/pbVdRf0wpew=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=r4a2PIVc; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="r4a2PIVc"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B2E4CC4CEC0
	for <ddprobe@lists.linux.dev>; Fri, 13 Sep 2024 21:45:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1726263953;
	bh=moJ0J+kvCs9uLHqIucwbbjFxCS+Gvs80ox8ZmY13R5M=;
	h=To:Subject:From:Date:From;
	b=r4a2PIVcskJZ6VpoNbfoIAmKrdAdVw5o8Gh44i6U0TSAbZnOqJqjMGjeWvuHee/Gw
	 QdMZ3AyDIDzEQnnJ21RRwc4lCX3Y2N2y+53Xnxi1RTomuaADXxXG561qQFZt2QKGiL
	 B3Hb1RbRgWTG56zH/F9xhYz1o1ev7IGXBBYmV+nioaE0lTxcvxC6nkLacMzyN2Dvbn
	 83q8VDP2//xmpJGiVhDqvxy9UdsQyWxOXtqPrc6+eUzoUeKtCIk69zPLRvFqKyRoVt
	 S825I3SDjOYCsALFuknT1OC4yi6Wqxu5wG+oczH5pQXxlheEi5LDQNm34kLkhp9Wva
	 Vv1IIZ8Unn8CQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A2E86FC6181
	for <ddprobe@lists.linux.dev>; Fri, 13 Sep 2024 21:45:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172626395363.5233.12367891150600973170.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: f31b49bb87e225fe17d604d74b57926f5e3787ecea81ca153495d28771c3dbae
Date: Fri, 13 Sep 2024 21:45:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1726263953
