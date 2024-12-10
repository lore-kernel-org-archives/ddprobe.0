Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D105F1AA7A3
	for <ddprobe@lists.linux.dev>; Tue, 10 Dec 2024 15:05:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1733843153; cv=none; b=aclSNvfl+2q1QjNXRxCb8wC3sTYp02jyvE48oWioex4KJ+GCJAzNYiO4UViazv7n+3UGmS6VCVCRQywisWYPUQWAUysLgJjIlRvxsiAa/t2NIkSUOaETf26/BvR+9Wb7PP/LsGurQ40d37go8RZYGiEjj7CQhD/AwT69VwNEJvo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1733843153; c=relaxed/simple;
	bh=GLsaCTqSTIHiDWbZ6AUXvmkQ8o+e0V50+xZZu9EiRlI=;
	h=To:Subject:From:Message-Id:Date; b=b9/cWaHeULXl/H7uqSviGUUXLKr6rcgxIWp/NYU8d7t95XW4yQrUML5EaixCBLZS8j7SzYdfyzdB+lbLpLUhAl2qKVKcWD5nZDh1a5WyI8ET72udYM9eCTYTgzWdGwKEUrbGMOnM7fg7Uw5oB2YSvsj+IVZWjCRs3/gZl22QOcM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=jXtWd9s6; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="jXtWd9s6"
Received: by smtp.kernel.org (Postfix) with ESMTPS id ADCFCC4CED6
	for <ddprobe@lists.linux.dev>; Tue, 10 Dec 2024 15:05:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1733843153;
	bh=GLsaCTqSTIHiDWbZ6AUXvmkQ8o+e0V50+xZZu9EiRlI=;
	h=To:Subject:From:Date:From;
	b=jXtWd9s6Q+Ihu01bqB45/2BzmO2VDSW4wnjJ7p3gvIBQPDbuJp9acGHZnBEvuPZHP
	 hmR5QRsKwqkDR61AiELUzsyQ4zRJ4bsFE0zwLdfBM9msi9l/BqQseOjT2IXWjvB0wE
	 5cnnzK06Waiv2iX0sl58wwMhum2IOBEFEYlwmxmjGVh4J5N42SKI99BvjKQWwkV8ZC
	 gQfbNmnXZbIaNX+Lx+5UrpB5Chfw+Csbz4NaktMxOrnH9Gykqr12hkJUmRnBelqOWX
	 ACA9qyyUltNZ9AhoipKInp6T98uBCgpysjnI+3NTZ4rIF/OSnmXZk2riSaVcbeJQ27
	 ytAsp4TOs9wRw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 96797E7717F
	for <ddprobe@lists.linux.dev>; Tue, 10 Dec 2024 15:05:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173384315360.27080.16303299335484988542.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: e193270e9f0299d296ae2cf7cf629bab32a2f6bf39dcd8f60afe0e392b5e043d
Date: Tue, 10 Dec 2024 15:05:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1733843153
