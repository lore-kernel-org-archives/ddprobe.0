Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2A407221295
	for <ddprobe@lists.linux.dev>; Thu,  1 May 2025 23:19:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1746141595; cv=none; b=BBWgK7a5C/ZvG3gWxmdVdXl6v3Pn6iWZdTSS8h6rNwxpfbLXzG3h0/79OOaY3LyfcDuoVgl08Q15snhWO7DodfxmX0Pv0IgkzouvWf9S8eaYmapYQTFKRi2pyFIXdjrOAVqjxzf03B+z9dYwdV5tzdN9sZYLR9jFQrH4orWq28c=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1746141595; c=relaxed/simple;
	bh=B4x6vlFkDQ7YvZ1H1qDT2ZVz8yYLbYVFp2Sg7hxLt6g=;
	h=To:Subject:From:Message-Id:Date; b=lEWtc8ObJnXZPMhW3lY1ioG/gxEpg2UoIosc3KuOVxMiPqHCWrlX1f+VEfGJLVRRfL/LouE/yZwEfJy0h/RPCER96ii39bcFXrp6SRBYoHymNcsYtpTjSQgB1nhIqSAQXvAelBHzvEMrJTMtuZLRpH7QHaRehPW5fM8+pWfDT7w=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=WqFYzVbh; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="WqFYzVbh"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A13E5C4CEE3
	for <ddprobe@lists.linux.dev>; Thu,  1 May 2025 23:19:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1746141593;
	bh=B4x6vlFkDQ7YvZ1H1qDT2ZVz8yYLbYVFp2Sg7hxLt6g=;
	h=To:Subject:From:Date:From;
	b=WqFYzVbhyW+QpWOwNKLW0TFO4XWOABTR9O3E6Hj/YglKCsAIpzRvPl+KoMjupmH/U
	 mfsgkPimfjdcW/wirzOnwbaNu4npfNyJHmkAjwGkqHeKRCa1mOKHl0O/5QiHW38EK+
	 IqDGMBv30SqJG6VhTE98GlDjUIuFw9LdEc1RJmFWhipPjIXy6sJg5P9geW3/02zD5v
	 fIh1wEH0v64E42a/eW8O6h+WCv2Ya5jmTF54Br/vHyB4wxsgtNEnrWaHNm1ZYeoQBf
	 rvZLZqr0Sqg2fnXAHWb0JjeY3OACfZ2WuOTxufQIhUIG3J+7jdIsHx8Ce+nAuzufxO
	 hgC1+ecU9tjLw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8F508C369DC
	for <ddprobe@lists.linux.dev>; Thu,  1 May 2025 23:19:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174614159357.28811.7754811818952293454.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 40fae0974334015a85fa6c150178470ea08b91d350984e3ac61ba0cf86046e7f
Date: Thu, 01 May 2025 23:19:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1746141593
