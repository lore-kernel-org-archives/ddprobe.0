Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 263DE3C14
	for <ddprobe@lists.linux.dev>; Wed,  1 Jan 2025 02:35:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1735698954; cv=none; b=TVVoQWZo/6RvNX4SgK6fP7W0dI7rdaxH5eRnJ15sKCxELhNiJTzsBDaAhlE0VZqhE57Y33AHMHxDRjZZD3epju++0PiE43R69usG+0X24CrKQpuGWJ9jzO4QNZ45+nMHam6xGiSH6S/t2xMvwj0l/hcQpHJZMdYSWQv406Ec4Ik=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1735698954; c=relaxed/simple;
	bh=7wFlz4V9zsEVoj911GSHYJAr0MMM62iqWW95lUbUNYA=;
	h=To:Subject:From:Message-Id:Date; b=lrxUQwqgCx0ggpykiPpj8o3rLk3HqhBw/Qu02vWgKzAkFVrcbTyIa8bfYkNnzd4v8HABOsdB9QNm9FDnkoOwZmR9VEkXbBT8q61yKweCQXDzCp61JVICFNHbvwqB1qIpiexrTzRnr/J5IoJOLfMo7fVGb+MR6qFAaWLdOnnNF8Q=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=gsDeOFCH; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="gsDeOFCH"
Received: by smtp.kernel.org (Postfix) with ESMTPS id ADFB9C4CED2
	for <ddprobe@lists.linux.dev>; Wed,  1 Jan 2025 02:35:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1735698953;
	bh=7wFlz4V9zsEVoj911GSHYJAr0MMM62iqWW95lUbUNYA=;
	h=To:Subject:From:Date:From;
	b=gsDeOFCHvb/5YLiILidGK2PY2bOw6Ui9joLnyp+f9Uma0jiwfVkUAzvuD0jwsGeVN
	 qfXWl3tbO1ycTHSi6M8Zm+za5ZQkNESNdb0m1tEHpPjduleRr3DP8XEcFAF3anf/c3
	 aOl3dnMw8zM5zk2AJhDjWZ5mQHLt0n0R4J63fMDzh0t/aB+LvokNQ2nXlTfHbsHEoU
	 xSWZGL59SdwrfNabg+Q50VIRVizNfSRxxR9tF04q8iv5LJdfv8zowxIHyqJFzyhgTq
	 5ChEg1jxz++Zdmmy9x3EVZsXkRp930u/CckKPBjmBuSo2gDJY/MUB00dwuSVPAsK3r
	 Fl4JZhv1hKSKA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 96CABE77188
	for <ddprobe@lists.linux.dev>; Wed,  1 Jan 2025 02:35:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173569895358.25578.17101625100262101831.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: b9660c1d9bb890dfb22af02738769db1d836e40e9cb64fbaa53d40cb7765c3a7
Date: Wed, 01 Jan 2025 02:35:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1735698953
