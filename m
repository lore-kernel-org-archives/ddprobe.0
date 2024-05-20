Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 548274AEF0
	for <ddprobe@lists.linux.dev>; Mon, 20 May 2024 22:52:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1716245543; cv=none; b=ZF3ppBDXHx1Oby+RM77VYN+e5TJy4EcJFvYs7UXB8uRiq0eHWiDKNRESDYB3W8Po4q7tV2ZuhgYOHFswzXGoNlsOB6yMuRVLS+q6e90aI/Qp+Mq1wzO8ZArvwlj9QGDiz/POam4Y3mDFHld5BqHIDVcMNp0At3BS81i5jH5+9Ic=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1716245543; c=relaxed/simple;
	bh=RmOsU9/QkCMhzGCk0N19/0XGwIyEtPErF0B5Ho2xWog=;
	h=To:Subject:From:Message-Id:Date; b=hTKi59NpESj/7VtS4kmhUAz8rR21/w+hbPR+4Z6JbBtr97kcdTI94Z0kMlvG5ciVhqFAWTGwgNH2Vta6fwRVJsx7q+gXaAfEYHfX5d8mbYaV9xoBAaq6ggfBZgSea3td6zv9m/gWUYpbiBQcD5p5sjNl1F+GBkA9RXBKMaaLFgM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Si9woW+Q; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Si9woW+Q"
Received: by smtp.kernel.org (Postfix) with ESMTPS id E59FAC2BD10
	for <ddprobe@lists.linux.dev>; Mon, 20 May 2024 22:52:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1716245542;
	bh=RmOsU9/QkCMhzGCk0N19/0XGwIyEtPErF0B5Ho2xWog=;
	h=To:Subject:From:Date:From;
	b=Si9woW+QmQUkg46C0ka2LJFiCUDAAwR4VW7tTMYFMsNHGedRZ9tZI7jpP+UMlpOVh
	 SF1mR000o6vN/74fLxHiKVitdNx4Y8Zx42kj/5TGB4mGZdBttrhrWlYNhYL5xTTN4m
	 6n+Sqagabrz6u7C+HVCpG/BADFhh2TXaAnLduxYjHvtRuEP+zt6QPLQS+fJ+1zPjy2
	 PCBEuPpytMxNY4bZ903s5CBMfrK9NSjXyRJzwbPNQIS9Hs+GnZH3OOPEx/xXSsXMFp
	 haV8cQ9SMdKVogd6dBhBKkOQrh7nfhIhGE+9vr2ErmMUYerIUJRNZvbrbi7GXA/o05
	 6NkQGI7pxN0BA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id CC788C25B77
	for <ddprobe@lists.linux.dev>; Mon, 20 May 2024 22:52:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171624554278.21600.2208894309405960097.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: ef5627b68988564f95282c57bf96555e03eef6d0c238a31817b8c64941926773
Date: Mon, 20 May 2024 22:52:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1716245542
