Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 240EA149C6F
	for <ddprobe@lists.linux.dev>; Thu,  5 Feb 2026 01:43:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1770255834; cv=none; b=LETYUMGPlhecGWvbrs96zKBXUwjTBlNAgNVjHSyyxivyzlRpSZ+tdwALj14/POqQmNtUrmhw3lpShrdYY8ueuIc3QmAVB+KCldVZJat77siIjk+3e4fjUQFHUfyjppVez2bmHzL0vR+47F3iWZYuUb7erP5XAfTxcF4DAS3AoIY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1770255834; c=relaxed/simple;
	bh=zwHgIzbVStXeZea+6IQpcwyha72QGZjzXr7aZjbGnuw=;
	h=To:Subject:From:Message-Id:Date; b=dQ+JICTIHdWW7jmREZAPs33vsMcVXXYBVBJW7Lb+CdG6aBz8SQvVLlWAOkc9xm1C0gnt2+LNymKcjU6ZKR7gFDLlG7etUx01G52JTv11cFQRWzF+soBCgGrtaP26rUpRYhCCLo6UKiuUwXcK6zrHYiWuL1kjiP3elgjRF6aXdmQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=jvZroOEE; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="jvZroOEE"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AB20EC4CEF7
	for <ddprobe@lists.linux.dev>; Thu,  5 Feb 2026 01:43:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1770255833;
	bh=zwHgIzbVStXeZea+6IQpcwyha72QGZjzXr7aZjbGnuw=;
	h=To:Subject:From:Date:From;
	b=jvZroOEEYLq5lqYDrYQc5QI1PX/CJCuRM2RsZMNM9zQTLmHk2xl0jZxiEQvbZ230N
	 vi7xORUpSNZunHb8zr3HCs0xZ6TWPIysat2QRJXYIIsz5MOm95kE6M8rCxkAY9FSq2
	 4/CJpYq5X4JT4W49Kl6YZxuliwxIG+Oa1xEnQ0a42w18gNWpBrxB8p9j2JwylnDH6p
	 jFITdXnITesMP7chFeq6dODSXzx8+GqnsoNXo5SlQrxllpTdbr+ZNB9N6QZEwDhE0Y
	 KNmUxbdPwU6MbRDWBiIr+70XwvII6HX/vQlQQZ/4b+sNagDpqiikGukyIy+3lA+mZk
	 cPsQ3fRlZePOw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 92E1FEA7951
	for <ddprobe@lists.linux.dev>; Thu,  5 Feb 2026 01:43:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177025583359.8950.16144179504234416286.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: df273776b4cbd52f29fa5ff93e9beb96a7901d99f725d6194d3b05857825a1b9
Date: Thu, 05 Feb 2026 01:43:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1770255833
