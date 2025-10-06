Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 47DF94A21
	for <ddprobe@lists.linux.dev>; Mon,  6 Oct 2025 00:09:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1759709394; cv=none; b=PdfndL/cG/RupzGVbM6fmE6YKoeSgWFqqz+TZ+cG5a86xCXvaRX01ylREbYnwBNY3ETMAAkBJO+WLC/CxCSoD4pPZIsb2vLUrOpV+0D35N7VaLNaffe9EOxlrTCavwQ5bgL3YRbSX9NUWjTjzAXOdwCOkRWdxedzoQct6gZ2rPk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1759709394; c=relaxed/simple;
	bh=+I5TzIOA6C9p/aNOz7Tjyw0nTUO82PH4oMhcv9gw300=;
	h=To:Subject:From:Message-Id:Date; b=axvHbU35hbYGjZIj/wVKCPeN2gYAJ9JnqjRjsIbQUL+QBdz+GRfZY+Si8idaNz3j0FrEweA+9OPBltwYEeEmP3lEQooJHr2AWk1wTedcvmWCq6oG562Z3K59RVqUEXj68AckEqg9F2VNOItsb9O+ZDxBvAAkfDBgQazwdYYnrsc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=nte4IiKz; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="nte4IiKz"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A602BC4CEF4
	for <ddprobe@lists.linux.dev>; Mon,  6 Oct 2025 00:09:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1759709393;
	bh=+I5TzIOA6C9p/aNOz7Tjyw0nTUO82PH4oMhcv9gw300=;
	h=To:Subject:From:Date:From;
	b=nte4IiKzbOK00bOS/jMFJhRMepvke9cYR/NPyiy2o9c1ATAjKg3Y7LU7o5TOrqugn
	 InNqcLamTspEKOm4EmkKO/n/NTsO3K3oDSR9/Zkcy4vy6wNqiR5kRJSgvS9wGHX503
	 hs4nhFdlF4FExiUv7AA9j+myLe/i6tiXr7KmyerUzuMFTkxdnulqM5n/aLP5IlfRmP
	 ZuHOAA2uFNxZgNNBNRL9+5fQqrrB5mENH+qZpGhuiSg18nv7yv/gKdDnNGr4w89KKv
	 8mUXTFuTNjct8Ssc5zr7+qdO/DsJjARCdjnCW4GqXsTF3DR5oyIl6fT/FQd7xESG5X
	 f8rv5YHkMehAw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 94022CCA470
	for <ddprobe@lists.linux.dev>; Mon,  6 Oct 2025 00:09:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175970939357.8731.13108757684819445555.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: f6c64157b87edc5f7a387eb1e6a9fbbc507946c51c9a86c772f5d41a8bff6916
Date: Mon, 06 Oct 2025 00:09:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1759709393
