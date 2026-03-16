Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C19161A9FA8
	for <ddprobe@lists.linux.dev>; Mon, 16 Mar 2026 14:24:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1773671093; cv=none; b=Lsi7IGmPIxfGct4TW8/27QF08h1gZDikdm33HxdoGh4Cd4QVaN647PpDl1T4PRkwl7wzIP9e61ha0o/0kuAIy8k+/GQJSr+wfBTaq2eQs0RURMOK8WmvH4yY9xnwPnPA0Ys/K2YOT3ja3Q0mYGI7d79NkFdnhUub+YHLsUoZeSI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1773671093; c=relaxed/simple;
	bh=G91A9pCUe63a14JcXRLZ1jOzb+NBjjQ0EPtzp5mRi1A=;
	h=To:Subject:From:Message-Id:Date; b=FAFkD9q6f2gPOe9T+Llg5WoCL2GSjxDQWxKuc5Dr09C/N1zmeaeQLbGjks4MaKyeNmbGcPUKFQNPe4kHPBb2hGaMe9JrHLgZuPt4kfDW8A9ilK768yO4DYwexXBGuaxInaQEYAHZRVK7DELMxMj8F2I/pGFa+bbUdCtZNd7FlII=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=c+UDoTBA; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="c+UDoTBA"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A43D8C19421
	for <ddprobe@lists.linux.dev>; Mon, 16 Mar 2026 14:24:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1773671093;
	bh=G91A9pCUe63a14JcXRLZ1jOzb+NBjjQ0EPtzp5mRi1A=;
	h=To:Subject:From:Date:From;
	b=c+UDoTBA3Zdmyk3QEuCSU53p2y6stNCa3zDJTf6Dnqmaf/2SpzaggMx8s7wNuP+3G
	 8Su/QQ5rvDUYQcYaaBYq4c247oIqCG+xxN3uEIBVovy0zNr+lM+1nFa2uLig7E91Eu
	 jYV6NtN+FDcOHgD0kBoKZ7v7dJbm8aDcpJhQh+9LRKgGYbPocCq7DqZ1frMueHNKMo
	 Rjc4v9uvydB9BLoqL2DQaESUUDyx8gCyc7sIXhHtX8nj5K0FoU5KkGwmz4dLJqxMzR
	 OtQ0XiUIzbLbABVN1oRFj95zSxKVMT6uZ8arW+2mzjilkO2mfj7oVnYgCuSEwQPZLY
	 Co4dRUKAiHJNQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 93BD8F506D9
	for <ddprobe@lists.linux.dev>; Mon, 16 Mar 2026 14:24:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177367109359.1206.10303479277857231649.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 5495801ceb443e3dc9ee3c05273f52e2ed7e5142a41aa8c199914a8b032e5664
Date: Mon, 16 Mar 2026 14:24:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1773671093
