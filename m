Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2D17E182BC
	for <ddprobe@lists.linux.dev>; Sat,  8 Feb 2025 14:35:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1739025354; cv=none; b=m6pi5FQDzh4Jhp04ZMick8XQuyiXtCHOecOhUnxHgpqCX28DEGD7tConpWtUD0E3WqSCqP+4LKZcPf6TxGIJ/ee4uk1URrdiAew2C+weNnNY9wOd2XTGJxITiXgfT/z09i1c7e+lpjKYmavSigRp+KifyrRh1wAsy5ruoO3Pn8k=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1739025354; c=relaxed/simple;
	bh=hgbQf7wbTe/le4Bk/e6qbpQIrjk3vcXLdSLbWhsLHA4=;
	h=To:Subject:From:Message-Id:Date; b=QWRq2J5h18H+PgPxV5xltUlIsWyXaFnAPAhBpVFVOaiOXbsc3Z39B6vyxKkaXYk8sjx3/vOCjj+Kr1c/usin12/zQVQKwW5R0es4A+NtxatVw/WFkpLecMhM976bhF6ZYTrEgnfY7YDqBxJ3n1gH8GoyVnDqQlxTAuOHfp8Hz+I=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=kgdxdFMw; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="kgdxdFMw"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A7D4EC4CED6
	for <ddprobe@lists.linux.dev>; Sat,  8 Feb 2025 14:35:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1739025353;
	bh=hgbQf7wbTe/le4Bk/e6qbpQIrjk3vcXLdSLbWhsLHA4=;
	h=To:Subject:From:Date:From;
	b=kgdxdFMwjhnkFQguYVwe5gy5/D1WY2/+Ac9nKVfRmtgm8UREb+/RPg2oio9NzjnrA
	 Ki4sVxXiMNESfLz/dkcd6yT5EgBB0JKqJ7A8q23wQayA4j5j634eNRk/iVnb+J4NCe
	 8HfQRx761zRtSWPKy67nbeN2qHKKHOe/azrsyCA+M1DuMJ6g16VkqAdI9Hn/IjGaht
	 +l5x75MjLiA3Nf77SLn59kGu5OGjp8w3f8tSsJTl8lqg+sttKYUGPrn+RgcSzKgOev
	 1/EX4EJN/cxGNtgghmpUKaTslAqd7ep6xWXQdz+xHeZMHF8pedM+OQpGFRdattprcq
	 wWqBd3OMagu3g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 96803C02198
	for <ddprobe@lists.linux.dev>; Sat,  8 Feb 2025 14:35:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173902535360.29574.5252178240107120326.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: c9bbc89bf64785a465ce2e8de429f229348e75dea66eb5a77f835e1be8215c8a
Date: Sat, 08 Feb 2025 14:35:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1739025353
