Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2AA3E4C97
	for <ddprobe@lists.linux.dev>; Sun, 15 Feb 2026 04:54:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1771131294; cv=none; b=INd4JqyJN9ZTG7grUhTB6G5h//9dtDxJ5dcgVMLrR/gjDo651R51l0m8NCkT5+OrVlisyfUKtX0QDqX+RnKFVxjTDE2h4KaqOU31UOT6JTR2zZHHwjg635vlZ/P7Hg7veSBWdseUSfPMuVPOegpVAq+NRJHl73Fj8DnjQlh6q9M=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1771131294; c=relaxed/simple;
	bh=FN5k3RnwsoI6sV9baFrxN+o2xXPABig32DWc5CGV9P8=;
	h=To:Subject:From:Message-Id:Date; b=CM5xHpyPU8fv2nAKn+wnbrCpxXfUe98UnCWDt7ytFLzuAJt1cT+/hqmvnu4DR2o2xKpN5jQAeBra4tMlS5qKwlSt+xBCc6wr7AbVacwJgKYK2xIqtWe2nROyqncqAi07HRd1h8YYV3TL9xeUvXIzZEMKuMbi+JcsnIEZEgBml/E=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=kIiA6Oex; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="kIiA6Oex"
Received: by smtp.kernel.org (Postfix) with ESMTPS id BA12BC4CEF7
	for <ddprobe@lists.linux.dev>; Sun, 15 Feb 2026 04:54:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1771131293;
	bh=FN5k3RnwsoI6sV9baFrxN+o2xXPABig32DWc5CGV9P8=;
	h=To:Subject:From:Date:From;
	b=kIiA6OexJIJVYMYSLxDXOFQfOx9K7Bh00s4ttzLsFjnpKav7HADWWDYwRhI/G2qtS
	 K2i39NWVKc/MR21qYUc5UFuKbbbP40PdYgtAjWuAexqwYwvM5j1H6iOBQhH9g5Li6a
	 8DaoMPjA9+xinXxzy33I6uzflZYDROexyMUNV4SYWOYGDShM8JoUBw/j0pLs46Sry7
	 HN0wGYa0eowPBWaeLri+OVswYnPZYPXX7I/bJHfQ+ui3Jn5PzKhofsecv+GZSRl5jE
	 CEYyDu6YFnbZmLAmLVLOlBmvOPHdLfA0TBMPL27JAly9bfYJh1uyX2REzuwegadTpE
	 saUSrRmVKHTuQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A38D8EF585B
	for <ddprobe@lists.linux.dev>; Sun, 15 Feb 2026 04:54:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177113129361.2759.15003199609530009522.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 4f1bf014327dbaff47644ba9ea0630c9ee884e36ec78f7b86acb926bc0a38c93
Date: Sun, 15 Feb 2026 04:54:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1771131293
