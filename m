Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2B74125784A
	for <ddprobe@lists.linux.dev>; Fri, 19 Sep 2025 18:29:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1758306594; cv=none; b=pj5QwyzrLIb2O0YXGHzcCPe8qAZO+9pxtcRIgXsbV0THW8VLSwk+BR9Ew2PDx//XbS9NM5EXbOdnkSeu8tTL4IyibJS7Xv4L8+fKuCgSeRmp3GLDe3ggbNK9TpuEfCKmpOVV+DSY+qUSUL0lWML7nKhGOZruU72/GivhlebnOMc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1758306594; c=relaxed/simple;
	bh=kmjL4zuTpjzR9y2iasGd4ghWsS6q9Nlf+1fLekxUPX0=;
	h=To:Subject:From:Message-Id:Date; b=uT1oahrpkeQ+bQ3UDpk1RULlRGW85Bp1+p+dJsV9Yh/w0FlsNYyCvYdhIA2UyCSulTbndV+iJFX5g2J9OJDJFQKg/AvpRcborY+LWMl6PU4mfWd1MVB4sWDjTZARUsUQGwX0AnlVXZuCj19tqJc8VQygKBwigO5+YmWfvA1QiWE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=YDQeueLk; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="YDQeueLk"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A0043C4CEF7
	for <ddprobe@lists.linux.dev>; Fri, 19 Sep 2025 18:29:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1758306593;
	bh=kmjL4zuTpjzR9y2iasGd4ghWsS6q9Nlf+1fLekxUPX0=;
	h=To:Subject:From:Date:From;
	b=YDQeueLkXFMeQPIAq4Ru4W+WGVeu8syofj8YD5xmPS4JJQcRYNwoD1XAJDazGmtJS
	 Vd3dX4kEwPRTtSn0UB4rU0XjrBfyhrQg8c6468aOtYBT37+gMjYf2j1O92/Xsg9T1o
	 bU5LU33NHEgYRhIU5XQKmTNDv5S6y3FOnnKBSm6+aWy1zfkw7Ghdnq1ogZpExmSKTb
	 D8i0Gvl3Z/a+f0qcntdDc9lSXFRvLKSvJFw8ZGf7/LgpZIZkp1OiNELZZhtPbOYkyG
	 v6qumRiJnX/v/omVgkEC3EsFv5LVIWXOPDY6/5y+61JE67ZNOQW2h3M7UQor62hfVe
	 gZLigO0Hzwfbg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8F069CAC592
	for <ddprobe@lists.linux.dev>; Fri, 19 Sep 2025 18:29:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175830659357.29742.7525808185889792265.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 43338460f91ce70073b51c1723e128201f290234caec6d3184cd26743823808e
Date: Fri, 19 Sep 2025 18:29:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1758306593
