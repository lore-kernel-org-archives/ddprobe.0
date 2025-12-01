Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4932C2D2382
	for <ddprobe@lists.linux.dev>; Mon,  1 Dec 2025 08:12:54 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1764576775; cv=none; b=DbJSwxWn0A2ysA1rMe1VYQhqP3k7UiyFEi8u45ttlLG8qsXiAQE0hHvrrzPj12nq6OuzCDmuPqqxN5afKGC/GO139CtrS1K3SmqzXe9tRsvSbXa/KR66KmfGyZDVspvNocpGkfpqx5rfMqrGfU6oIsUQCAkzeq+6BwQiSJTskEg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1764576775; c=relaxed/simple;
	bh=UghwbBFcVtyhZFmBRYAXvySw5TVAh91m+WRwO+VQRKE=;
	h=To:Subject:From:Message-Id:Date; b=DrM7+GB7v2rcGMDUIQLSTXQpJjVop7NsGPf+vBfT4Lw0FhTzZShMiqmYDt9KRgDKdf5DPbMN/+3WmSTspEpR2hBgQbngu/Z/yZ3xjDRhdluwaL2dFseD6O7kDku+ZLP8vBie4MwzHVhWy2w0NwVLaedFyGEwOR0Khafap1VlKt0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=fLqg5py/; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="fLqg5py/"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B44EEC4CEF1
	for <ddprobe@lists.linux.dev>; Mon,  1 Dec 2025 08:12:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1764576774;
	bh=UghwbBFcVtyhZFmBRYAXvySw5TVAh91m+WRwO+VQRKE=;
	h=To:Subject:From:Date:From;
	b=fLqg5py/6AqMSHsAcZ5Lub5mkWs32kNZPSIUl6o0pwVrcKY70jnzClgmnC4A1u+Xx
	 toigjtkPJfKWt8Xa4+IcqnZ8SIEUtbvL9CWo8ccx/UvsLOQF82LKcXKvGwn8MAWWUn
	 qU584x2wc9JQ1DzuasULLJRF1rj85eyVwOB+7p21ZD9RJbJ4LaC3Gv+tL8pobGxMz3
	 k5azUSPphy5IZPXe6MYQ09V4PfmGEEq+WSz8k8Vw1cF7NFrYZ8aJ3dwsTjXkXgupRM
	 YnZfQoizT0K7qLVT5Acj10VuWnsaJACAb2+V2RdQslfKJWXs+EvjEZSmoMTxo5tMp4
	 +iXZrDyyUxZ3w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9DF4ED111A8
	for <ddprobe@lists.linux.dev>; Mon,  1 Dec 2025 08:12:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176457677363.17879.18393509563086948103.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: b0c8039df5c154e607493b60f441b00515703aeca93333ec8210b64686819346
Date: Mon, 01 Dec 2025 08:12:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1764576773
