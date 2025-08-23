Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0E94E1A0730
	for <ddprobe@lists.linux.dev>; Sat, 23 Aug 2025 06:39:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1755931194; cv=none; b=nWkRuARDWDsggzfw++xiYGn9npHwcjgqza2tW+gqIwHJNp6//cUkrPPI2cQKpoEeGOYsfaF7x/ESbmvosMPL1wk62WJhUoe8nXnC48EQqw/u9QIuOWjBP4lZqHB1bZYY/egDREbjxzYjqH+iZTFEgLIECYBWjcZhbUVb3qOngps=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1755931194; c=relaxed/simple;
	bh=X8iGxvy1DMWeXLMgzHiEl2U9HvqflSrzgDYnwBeF6Rc=;
	h=To:Subject:From:Message-Id:Date; b=VZFeqlQ3wD54PDY8VxpQYSCB518fali18kciK7unAUrep04ZZSbXXZlYdIJig2QiMVq3MV8813c6CE3rtlPtxMbBqkIIREMtxEhGbFsxIxeqthjWXDIMFmURzvCMujSgttOEt73WjPYIJvc5lIluehNLJmQfTavIflJOxWBMs4c=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=YdCM7Bif; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="YdCM7Bif"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A0203C113CF
	for <ddprobe@lists.linux.dev>; Sat, 23 Aug 2025 06:39:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1755931193;
	bh=X8iGxvy1DMWeXLMgzHiEl2U9HvqflSrzgDYnwBeF6Rc=;
	h=To:Subject:From:Date:From;
	b=YdCM7BifmaM/vZ4Q3ZMyooVxYlO/RadmCqMN+qfn4A8E96nDy6DW8u9c8fvQTCStt
	 m8nexmaLQVsHAcXe0Lm2tQSMCYzUTUw/w/SaS7WLK+J1IpoJSyft8/CvpGAfPVUrMs
	 MUxp0v+XwzAKCmiEE5Y6cS00aYkl/Sijir7+CEiUOLERIwXFvV3nV46hje+kY4PVqu
	 TMLv4pAt0oMGqVtHFw2BZA3zyknYR+hWydKCIMU2taEMfQJ+rY21VnfN9eua5FTpYg
	 GjqBwzwPdgAENIGRxhjtA7657NoXwP+PnFkaEJuY/jSTFH7lwdV6eoNNcPL+TkzB1h
	 XqvImj+e5TtdQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8EE2FCA0EE4
	for <ddprobe@lists.linux.dev>; Sat, 23 Aug 2025 06:39:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175593119357.24031.3044160851103812024.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: e2794f325ebf66508530f763709b2fda0470afadcf8293581d9980569a442de9
Date: Sat, 23 Aug 2025 06:39:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1755931193
