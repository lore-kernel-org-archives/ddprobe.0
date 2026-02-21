Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0BB0D3595D
	for <ddprobe@lists.linux.dev>; Sat, 21 Feb 2026 01:04:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1771635894; cv=none; b=UjEwmlkt5ntNXDZ/NkpxkEwy/93sz+OhpLb22euWF16ohp0Cv4yokDIAjFz9/jqAeTplZwxFwIMwBNwHOXkqz0G3tTO5OFmXMTR0odBpnICxjFJJa9+JORO+rM6kCZ8DDvZsmPnrR99dW3NtpW6CwnGTDCPqj2tgHmogz3Ri3rQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1771635894; c=relaxed/simple;
	bh=xE07avD25Mf52YJx6lk9p9cYWdTLjgOMkRvIPlMWaVc=;
	h=To:Subject:From:Message-Id:Date; b=DESwFWVxK95BVYeRiX2Ug4+y0/c0FprdInrYpIRxl+y8AQRZhuxrmnEnARVv4zjp49RKLmlBsevABeavVBBmqsmyJW0x7+BfwvR0ax8aVLTBbY7Phi67TQ887eNeWt8BVgXKTbOggM7PzdmGMaQK3KiMda7L/sfXTAsoOsiMsms=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=myVWxT0x; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="myVWxT0x"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A2209C116C6
	for <ddprobe@lists.linux.dev>; Sat, 21 Feb 2026 01:04:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1771635893;
	bh=xE07avD25Mf52YJx6lk9p9cYWdTLjgOMkRvIPlMWaVc=;
	h=To:Subject:From:Date:From;
	b=myVWxT0x2iE+Q0ilMx28ERmXNrkkaIx8AGteK+BOxKJgyTXeq4Jv53X4uEk/qUbnB
	 6iBU4G5KVBGkFqMB6wKvmwiPF7b9Hi0GVHSqxs9Gppkh379zKztb8D6ZmK8LqRdInl
	 9o5x/NwA53CuHAHx9NLqm373F3Ej5Is6eiKdzoOtlo+UN3i1rtCXqNeVxjojA33fn/
	 /wr7g/WWfn8kNqtHNffnronjO18hxjvy4L+JY8e+pULa4G4IgxaisW+4PKuRnD+YHy
	 l4ODbrqeiKcP22WvTClKT+UBgkqz7qO+D0wGBplm8XJgGOAp6WHuXgafoecTkBjJbA
	 ZbFCY16Cpk9aA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9218EC5CFF1
	for <ddprobe@lists.linux.dev>; Sat, 21 Feb 2026 01:04:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177163589359.7316.14096689674237886145.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 496c75cb42d966a8ebcba120f2815e1614b61ef087bec04334facf91106bdae4
Date: Sat, 21 Feb 2026 01:04:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1771635893
