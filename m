Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 27D555D8F0
	for <ddprobe@lists.linux.dev>; Fri, 23 May 2025 10:29:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1747996194; cv=none; b=mV+QbtxfcOA5wR9nEQpcZnnukhaq3Gm+1y/d7G+dy+rTb2xdWFHIFHIPTSQomOmwIqLUU4ISzQX7xxHaIeVFqC6U+8xO0yGrfeuOJF+sT+DkOgrX0VBdHELwoFh0hJdB4Dp5yQq51/7XqGSEIh6059GTSXKMmKvXPA2QMkYcWik=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1747996194; c=relaxed/simple;
	bh=cE9k3FDV44P7+ABY1wh7pN6UjG7NAroymsntgrEx1TE=;
	h=To:Subject:From:Message-Id:Date; b=HGD8JVZYonrqO5FO4TdXqTFlDOTxO6QgvrcSORH1ECfZmzjXza/JlM3JoxkhLrxJiRC9TEXrKQIQmIUSl4DwKMVQvdzHQqBvMg5JiwiN/YIhMQ2KQXVurINs4G5DBNiDXkAQrtvdTDDHzYzAenW5+l/CJwxBLllzsw63rXbM0jM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=IuDLaTKQ; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="IuDLaTKQ"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9E661C4CEEA
	for <ddprobe@lists.linux.dev>; Fri, 23 May 2025 10:29:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1747996193;
	bh=cE9k3FDV44P7+ABY1wh7pN6UjG7NAroymsntgrEx1TE=;
	h=To:Subject:From:Date:From;
	b=IuDLaTKQbXgUPeWkAgU/nNXhv+FMRm8Hdbcki+5vT7SYGpHmV/mmFUpzeuqgb1oFa
	 LhuM3mT3HvudyZro/v8RzasnqsdmGLxbvKZlaHdAqZuphQ0j+p2oLaADgQQ5Tf8XtW
	 10ZX3TomZMizkEYlARwgMoPqnP9Svi52WUQXNLSuwUIXMAEGDgSf+qa6nYhf7vexMu
	 9jCNwNkMR3Qt6P6V2jhfcpdFqzCnERYKslXRvrCDDXKNIVRN4uqRe0bzhPqz50UALt
	 6GE5oSGzWDds75tUPo57vrBmRuZGy3rHD/BSsctwfeOX/gOn37OzNEmHeL3fvNjv5N
	 AMZkQvDwtEXoA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8F427C3DA6D
	for <ddprobe@lists.linux.dev>; Fri, 23 May 2025 10:29:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174799619357.8995.5881326484388326058.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 5f421b4bb41df8609b2e99a353dca4b48564921db0e105a4e2d981ccd43e21d8
Date: Fri, 23 May 2025 10:29:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1747996193
