Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D30B714831D
	for <ddprobe@lists.linux.dev>; Wed,  3 Apr 2024 13:28:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1712150896; cv=none; b=Al6aOnEZTIDTkkersNCg23l7SaRX7tm7Fkzfr41qgcMu5yvnDWRElcmJ7NFh5lYo43k0jUSFJO+xY4OE9g299w6jHRhJaOr089RWjCsR8yUEmYFO5tkQFfCzR4xA1IM5jgkg9lxMq81L5aLiZUiWbUlhlBK3OpbL+lRUDH480XY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1712150896; c=relaxed/simple;
	bh=MsI4Khe+ya98eIah2gECJs/2jaOnyHgvQZP/UvtIUeE=;
	h=To:Subject:From:Message-Id:Date; b=Q7PNp2zlvNmtQ7DUtBNPpOL4w/RgutEAnYnteZVbGoOhfPlsbMbfK9EW2nU2Y9xn/9ejuYr5RYQKV9Bph2OtSv/N0cQUotYPn3SUxbtAPvlun7LWSBGqKUuZsxY2hVK74nSEvTyecHlCuvaL4ssb9V3BiGh1T7p1wpz3aK7lAzU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=lwDdOdBu; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="lwDdOdBu"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 7011DC433C7
	for <ddprobe@lists.linux.dev>; Wed,  3 Apr 2024 13:28:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1712150896;
	bh=MsI4Khe+ya98eIah2gECJs/2jaOnyHgvQZP/UvtIUeE=;
	h=To:Subject:From:Date:From;
	b=lwDdOdBu0KltuDGb13LkxnIhYVNLleT3lhyeEltLB+QvFTeXr9YvEdJevyJbgybMN
	 HhZEW4EN8oPGvgkM0kjmmlYiATtPzwsYf8DGig5r78CQETWPW/uLsNRySn2jc3qVuS
	 05C1FE6zUW6kFI2e4FRLC8zzzB/jdNrPmCWHyLbOS9iCoM0TGJY824SMl/S+GStbn7
	 Urd9jrO4INm9L9l6VhtN07BMAoo8O59W6sFVNSNnQScmHH7OI+i+t3e1UT7+WHbPui
	 lKkXFndrs4eeFohysuivND25VOIsQBWh1oQgYqvYKwzS9ViSVv6nXxgDcpADfgow8d
	 2cFSImFK0RwXQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 60657CD1288
	for <ddprobe@lists.linux.dev>; Wed,  3 Apr 2024 13:28:16 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171215089638.17462.18108597115167880816.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 516adf6f49841d776f196ec4632c79c5e4a567e3f7a06bb16a09593a9a09290d
Date: Wed, 03 Apr 2024 13:28:16 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1712150896
