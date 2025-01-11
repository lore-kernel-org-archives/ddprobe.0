Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3EA811F16B
	for <ddprobe@lists.linux.dev>; Sat, 11 Jan 2025 19:55:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1736625354; cv=none; b=mXa41Weh8CW9L5rHqjSnCJ+Qp/g72WbGlCYvnfTHQ+at72Y8IdtFwC6tqOX3LTIFHyQ6BVVv7Ryqiz8m6et5A2PtrigWEM0BloMxsOwvhaeVYsyFGhA6z+F9JwbCDswAZTLr6/ClKYX7BK2hdEiaqJshSRnyi9NvEF9fPbA9s5s=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1736625354; c=relaxed/simple;
	bh=HEmsSSk3Qmj8ok94zdHUWBb0BUIXHHlhN+LD5YJDySE=;
	h=To:Subject:From:Message-Id:Date; b=tT4dUqPhGi8XA94yeVotg0bOysWpoAOpAIUdZ5vW8yRPG4CKfZQMJOFJLqGadf3POhZm/B2yHxvX0BVVQRXPeLpjGF0r09k4D1hlcxG97mlgmLhjBRkMLtEWVr45NdoS+sWKN4Jz0Eyn7SXWRgt/1xJW9jGqrhoT+CD8Nr6tLys=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=QHS+xhbz; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="QHS+xhbz"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B6EE4C4CED2
	for <ddprobe@lists.linux.dev>; Sat, 11 Jan 2025 19:55:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1736625353;
	bh=HEmsSSk3Qmj8ok94zdHUWBb0BUIXHHlhN+LD5YJDySE=;
	h=To:Subject:From:Date:From;
	b=QHS+xhbzyxkBNynnWAwweSHf7+qNqIhX0ZBRb2w1ojLJZ7NUvchiIZ5glEEsMjA9n
	 VydY6AtvjAZ/UvGbfVy1IEZP7ArtFdZXn6xHxpjB1nDXYKw6dRQZLOUlZMU7cIsD83
	 vIRkkxCpCf8mwYE6E6Pwz3oNm0FPL7lFP/9R5S5jcl9xcv4EU/wPYr4FTwj12xPGk9
	 K6OzRiL67UjWeBy7qk+gqizKf7a7ghKgpCpvIHlFBeprMWrZDxBxjiEFwdaguQRwq/
	 Hgtg03EOK8kd/UVCoZhIrKlgDGpjJwZZCYqexiy0Xwm3Ntdx/k18UOklgBrHxozStV
	 PWJOYs08Do/dw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A33C9E7719A
	for <ddprobe@lists.linux.dev>; Sat, 11 Jan 2025 19:55:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173662535362.31429.7165468250270667971.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: d8e4dd1455845330ca954ec0fd8fdbb555db68e096bd41470515fcfbbb4805aa
Date: Sat, 11 Jan 2025 19:55:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1736625353
