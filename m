Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4CA1C25D1F0
	for <ddprobe@lists.linux.dev>; Fri, 11 Apr 2025 18:29:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1744396194; cv=none; b=d1br+t1Nq/1Y1bEYLcfslC7sNDUr5S/A/6FDaY2Xh+lC5ygmmvfVAyZ3Nhet+R9eL5g49DUxr6VShAZiQDwcCi7k42lpZIDbGTGcpysbjiZnbL+HnhaQgJWLGkQdAkf6U9Ui6ROCkLg+f2AjT+B3wbpTuwuKGFOr1uu0DBDI0W4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1744396194; c=relaxed/simple;
	bh=SzuLM85llrIBVpmGDAs8F5bKP8kY2nb+Cmy4W2R4XGk=;
	h=To:Subject:From:Message-Id:Date; b=N3QiMa43simvpeTNnvfBs93D5WfpbVyxXiCbZ/gJP2DGAqX7JVjkD83sO3GfRd9zC8hH8VPpY53QONTqJx4w5th4XxRDBHNruEfW+nJMQRV6VllGoVNBA6S8xnzGbzl/buoO9wqziXa8BrZP19TTcCKo8GJKPiX/2WgHUQ0/+S0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=p9WER2w1; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="p9WER2w1"
Received: by smtp.kernel.org (Postfix) with ESMTPS id BC93DC4CEE2
	for <ddprobe@lists.linux.dev>; Fri, 11 Apr 2025 18:29:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1744396193;
	bh=SzuLM85llrIBVpmGDAs8F5bKP8kY2nb+Cmy4W2R4XGk=;
	h=To:Subject:From:Date:From;
	b=p9WER2w1ROMaNeFA4vXp9U6sgNL/NFkbEFAbY24gYslnZ5jcvjp5SEK/Z55o4/4na
	 Jr0vUSYDdScGxL6HRUWVzfk1F29hN9Rp3w4foFdzGMl+vMzKK84XnLZmoJyAQOLd21
	 yNLnUCN7f93OensYBDoxhZRvTxu/rZR3igw09R0e26h0t6fNL7EbDziX1hJ10JL9hi
	 /rUudrC/4CPDuJDYcCkT9hJDVT+XumohX5xV7qzFoERASV3cV8CnG1J8gmVdtgTF+l
	 vZcBQ6P3u0/PGyeF37Miy71qHOEqltAdG3vcxv8WQdWmsTQzuC+l4Y3mK97kQVOSrQ
	 vUOw7ysAdf1nA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A4A97C369A2
	for <ddprobe@lists.linux.dev>; Fri, 11 Apr 2025 18:29:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174439619366.5188.7805561540024959056.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 4894ee1c49bd3c0540a41e0d615fe1658b8b2d2e8d98d41b08d9a96223fbd21a
Date: Fri, 11 Apr 2025 18:29:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1744396193
