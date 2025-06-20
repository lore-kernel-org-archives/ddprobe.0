Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C63D81EFF92
	for <ddprobe@lists.linux.dev>; Fri, 20 Jun 2025 05:39:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1750397993; cv=none; b=GMhwlFwwFFuxrH16sjckOuG8zsmz9dw5oLXgjf0W/AMBjQ5GA5e0B90F5MXVX6KHV0A3qmxJLuGd7wtSC1TTIXQimn+DD0cDJ2/ppy6Q7F2vf4wRsJdFJehFQgNdzj3kUjmuzmJ0sbQJNwh9K3U+BBiWmeZxnlCtUIXWioiMc9U=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1750397993; c=relaxed/simple;
	bh=P96HEPGD6yomJBWWXkujuroKlVKt116tx9E6qIsCKhY=;
	h=To:Subject:From:Message-Id:Date; b=gnZ7n9tg3nDWRiy8jr5ToITcYOIucxoYQDoF1wCIEx61mzITWZeKcCkAxR/B38iYsbz7FALb/w39WyqmUpF29u3JNTFv3qWER8xoMfANrBfSQjQgMkZW9eyrbyuPqd1YQtImsy4dyUUD/U86m6dzE+Ph2Chk3z+85P3lCYTrQo4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=LvafTSKl; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="LvafTSKl"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A642BC4CEED
	for <ddprobe@lists.linux.dev>; Fri, 20 Jun 2025 05:39:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1750397993;
	bh=P96HEPGD6yomJBWWXkujuroKlVKt116tx9E6qIsCKhY=;
	h=To:Subject:From:Date:From;
	b=LvafTSKlbVQOmX90CxstmehlWH16prwCyX4UyvqbOZoxDDTv9Fap/DBiprPf10KfO
	 2u9Wt7zyJWxK9U/njJcaJ0/xsWZY9ZcAg4sCNb8PnoHv9H4yu46ftqzgIuxLU/tojW
	 7fSXNBAuJdlAxV2HzCAtxemhMmso1dwtME6X5Zn3CKpJQtwS9/jv/IFxJ96L9FMUq6
	 XuwLI/SNeQMP9outiTmXaXn/T0DWPX/S6X/i4B2HwdmIqQPzqtp5RLJWKTaI3x/8kM
	 ocjtXomC3gYNMJBY8n1HZxnJkRRnQNvJ9C5/Wbf3Bp0l/dXMded1yjFnf/zzTVb2NE
	 W/YOi8hxXD2ZQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8EAFBC7115B
	for <ddprobe@lists.linux.dev>; Fri, 20 Jun 2025 05:39:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175039799357.15068.226381731427645941.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 2486d65ab4650c2558e5d653248b741fbc8722ab540b85a3251dcba16dfc4830
Date: Fri, 20 Jun 2025 05:39:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1750397993
