Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 351C877111
	for <ddprobe@lists.linux.dev>; Mon, 16 Dec 2024 19:35:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1734377754; cv=none; b=j5xMqEZutDVIOzTsuzfNrKXyGv7tLSaEhe7i6ha2vNhaffap4r3QtIhAARCqOHsDCyzKY+hYOLa7fxpb03eaAOtWI8zMtLcR+eU9WgwkJ2TXa/+/xJAy6GQ4Z+gPe4N3iFbo/J5vEbfqroefTMJVrcrrFAKs4Q2HorIiuF2guQA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1734377754; c=relaxed/simple;
	bh=GwcWggfNJEw8jeJkRdxNmkOtCjAgeEYl3+YjgDAv8So=;
	h=To:Subject:From:Message-Id:Date; b=c0sC5g6CW3b4f3xngBn25t2bziOPz9uTRkq+r5bj4a7qN9P6BtjVH0hFEhD14M8Cyi3GjYGwJv8XbUMDcHKvvM55pHH+k03wPZ/Hq0a9oaHUyIcVz9m1lUAW0Xh9fNs04jIHz2dQElRuQ8wv/Zefls7wlT59/K9hJmU8hquhnBM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Uip0k9/f; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Uip0k9/f"
Received: by smtp.kernel.org (Postfix) with ESMTPS id ADA6BC4CED0
	for <ddprobe@lists.linux.dev>; Mon, 16 Dec 2024 19:35:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1734377753;
	bh=GwcWggfNJEw8jeJkRdxNmkOtCjAgeEYl3+YjgDAv8So=;
	h=To:Subject:From:Date:From;
	b=Uip0k9/fsRegH7G6iuOmQqFizv+UB3jNMXx5cEea5zKLB/AgBcfVcXE6ib7drGn0F
	 9rVQXMrXUIVjjlpssvD7093BzB9I2QUBRPhxrvfPq+oqquffldKUKy1WT7WhdTlJBR
	 8wEtiir/D0plEtFMc9Cj1/bW2+7t7a3EkeRC1QcLVhz47clMbgwyRS5Qsh1SxUd2EZ
	 4oWbZC5It4SK4tX8RRkSrZ8e/fjv5y3Fbl98o1SnxkcM0VO3WuTTRXS1UcBV9d4VJX
	 3Sbu9aZ+xqXvWmnCpNjDjY04NqqzepIUUCghFZ++9vn6EnRwjKh3RB8oa3PSrH1Hph
	 /nYX3/OmCKbgg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9C855E7717F
	for <ddprobe@lists.linux.dev>; Mon, 16 Dec 2024 19:35:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173437775362.17406.12054418507049568138.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: e91a69c25e240ebb12a35c92396a9e903ad7bcbaf60303c7f1cfb6a8872d2888
Date: Mon, 16 Dec 2024 19:35:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1734377753
