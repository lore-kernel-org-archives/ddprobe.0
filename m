Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2586330216D
	for <ddprobe@lists.linux.dev>; Mon,  6 Apr 2026 20:35:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1775507734; cv=none; b=hpx6bDJdJSuK8Hp2Rcgp9z1j5qKlKbv4ecB8p3SzUJ/Wqthx+EjHjVxdPFOZu5AoU4Gkda44fVt3FHhy6FjmGZW5CynidZVdELRF1Wv/WLZmvUD7v6SWOGhLM/tA1vEHQlqptbhP929oU72dsn6+bfygbb20lZwkc3koZEfrJJ4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1775507734; c=relaxed/simple;
	bh=VXI+aJ0ezqWUGM9yiM3EQYSDdkFpYYFaa1brqgRd/7U=;
	h=To:Subject:From:Message-Id:Date; b=gRmE9h3wX93mCRPAveHAAqTxvhhWG7L0iUsHvAgd51IPoNSMHGUwWfXeXxh6QDvvbMAijLvkECQmf+Vdi3z+DtxiOeEh4pldjyrm1MJiRAFjVTk26VAWlkKW67axYOOIXCFflgxBLatB+7W/xfxfO75vms76nIMtNxQ3ScUNaEQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=b1I2OkC6; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="b1I2OkC6"
Received: by smtp.kernel.org (Postfix) with ESMTPS id BDF5AC4CEF7
	for <ddprobe@lists.linux.dev>; Mon,  6 Apr 2026 20:35:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1775507733;
	bh=VXI+aJ0ezqWUGM9yiM3EQYSDdkFpYYFaa1brqgRd/7U=;
	h=To:Subject:From:Date:From;
	b=b1I2OkC6A8CSd58sKWauBxEJtr/PnoKAuvJjttUEB9YsGa9eXJfDf6EtHHEsWx8L5
	 O5JxUimXamNRqlIqeib15KqYrjDcQen+kyYpwcFyJKQF7wEhydyc16lMXIE4ewXCMx
	 iJprDb4KIj7g2hwYt2lXs63OfXERvz9guH336YJGFJ0BA1shhCctqT5N6b4M8vQJLK
	 fnYdXlktDeeDWcSTNy726oNoNJPpkm2WrUUmQak402eou9SZfimF90fWPSOIHnaW8O
	 TVFc/P/CnG332QRy59SDOHKOeyCJnyZD4mtNm+Wh0SBBryG28aSPuqz6NARXolAiMr
	 lxAvKyZehAlww==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AB6EBFB5166
	for <ddprobe@lists.linux.dev>; Mon,  6 Apr 2026 20:35:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177550773369.849.16144903475314903623.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 48c2b15a7aafabdcf10f4b4194d1d62a054def11a3bdeb3c1f9f842a44685f45
Date: Mon, 06 Apr 2026 20:35:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1775507733
