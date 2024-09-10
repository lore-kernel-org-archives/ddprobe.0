Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 237691922E3
	for <ddprobe@lists.linux.dev>; Tue, 10 Sep 2024 17:05:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1725987954; cv=none; b=Xgnj6R9nIAFnEGYzN0yKsm8RoTOqm+v2oDP/qipd64xb8uWodJhMccCPQnjwmeNi9BjOtAtGqABN9MrKQMWKpBYon6gjaYWjdJCM9qxy/2/WmTnBoK+QUnI6QW+Ux2VZcw+A6hXqY5S31bq/xes7u1oKptVVcwv/GAWi4I4KHaA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1725987954; c=relaxed/simple;
	bh=77tACRocReOuGcdAHTYOlDksbCVQqvZnxJlI5CuLx2k=;
	h=To:Subject:From:Message-Id:Date; b=Hac8Dq2X2mviQ1kIc8b7aYgjGu+CsdZL2Fere4U0TVUaY3Je2c/1OFq4tZoRvcfxEHzE3LdbL7iiTLGJ3P74bXgj6MY03soh5wbg70S38bqEWN/qJ6WaVLLjhjSqrm/JCv2N6KMr89FVAHgurq5oFUGKdbhfhgZCSom5/CQQcN0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=EfHR+GpS; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="EfHR+GpS"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A82EFC4CEC4
	for <ddprobe@lists.linux.dev>; Tue, 10 Sep 2024 17:05:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1725987953;
	bh=77tACRocReOuGcdAHTYOlDksbCVQqvZnxJlI5CuLx2k=;
	h=To:Subject:From:Date:From;
	b=EfHR+GpSnSPNWUgVieRiSNjSUZ+sDHWmmrbJnxnoxq25i4/IPLH7w5ARzi4/fsBNK
	 iS9zB/2EY4dcs3m6tHI5hXMuec2Nsj33+kbZMENQfeE7uAL4KveUxnYfOyjLp5+kBy
	 lXOVgPf83is4+DnaROxDY8db4VHfSVIAILUJZevaKQmm9NrKTJihh7TU1HQJyvMZM4
	 4R8V1+MUuSQaEBgcdA3nU+UtaH3eNwrVm2z1FY92gYPS3sSgq2mA8MrJG6COMXChyu
	 iI1oxnV3sOmGKBAFeSsquzXESRkPCv90uovUdBN8xcWKP8exhVBEyw2uyZt857/bCe
	 TGQ1UkZzrNR+A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 94DBEECE582
	for <ddprobe@lists.linux.dev>; Tue, 10 Sep 2024 17:05:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172598795360.7664.2864880245238301780.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 803c3635347966b1a953e412650f8a805d1193cd0fdfa01aefad9e5f5faa4989
Date: Tue, 10 Sep 2024 17:05:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1725987953
