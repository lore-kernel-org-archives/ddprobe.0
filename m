Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 247A5FC0A
	for <ddprobe@lists.linux.dev>; Thu, 11 Dec 2025 06:02:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1765432974; cv=none; b=r+qxfx0dGUMPf3JG1UTkKNIJrZBBfVpbQAGbCw/CwJMfa8r38uDZ3xAoXGFfqSlMOfE38celDaw6PEOa/kEe/6bO+ACSVVgFn1nGTjxXIGe3jGR+IUj0O1UcBztfnon0Si3CEFMcrJS9f1fLKkk9n2YzaYo+WX/IIqKVfwrlO9c=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1765432974; c=relaxed/simple;
	bh=9gg/tr5sFUJxrXFTHzYvkRO7Lya0KZyPBgo/gKh9aTk=;
	h=To:Subject:From:Message-Id:Date; b=REuvJREmc3a9spWN6DiCXfxQnN1QiUolUUYfrYLZPD29MuphWEOoBf0YbzZo77DYOaPQLUTUle71GsHiToQ3EZouxqaaWEYh/fj/F9z3pFg6K+BVncnfCf4NdB5CLq0KilJLME5icqgG9hKcihxDkw4M9gnfZzAW25W+XPbudYs=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=t4IEr3Up; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="t4IEr3Up"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AE903C4CEFB
	for <ddprobe@lists.linux.dev>; Thu, 11 Dec 2025 06:02:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1765432973;
	bh=9gg/tr5sFUJxrXFTHzYvkRO7Lya0KZyPBgo/gKh9aTk=;
	h=To:Subject:From:Date:From;
	b=t4IEr3UpiTp5K95s1XGOfLexOpZwU+tv+G/9hT1/p/w882WR4iBcdDkYow+Blu0AY
	 bvEf1kCW5+JRaIKhPqfYnt4g+4rF6PAAAxm7m65Qeo52sTgeixsZa+U6gyfE1ScRIQ
	 L3+eEoHR//XlSl1rk7NOkGhStGU9gFV8ssiarU/GkKZpj0bBqMvChffFiyvzVIlD9G
	 ocZqjBtG4bk0ldU8EO7fJHHv6maPjs/dNvsHJTiAsqYNXEB+/0rU0p/TwUYgv1Z6RY
	 Vi/oIkUUNGvXls8pzFIhnJTstELRTgXnrTzLVnH+gqx05udPNRJViXtzC9JdRnuLRX
	 Md+Ra+kuKqkUA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 96B28D3E78F
	for <ddprobe@lists.linux.dev>; Thu, 11 Dec 2025 06:02:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176543297359.17678.3450011233746827123.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 673e19736d724d3eef7bbd007c6221286c88cec272d1526d689fc94d2443ed76
Date: Thu, 11 Dec 2025 06:02:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1765432973
