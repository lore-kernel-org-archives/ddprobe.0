Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 503D51A6813
	for <ddprobe@lists.linux.dev>; Tue,  4 Aug 2026 08:00:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1785830434; cv=none; b=PiEKXI1BBkuS1FPnZPdSJsx7zW95Qi4R0AxZ8CjV2hfiP9CFkYCMxkrvqtTa2Ocjs3QYlUs64qVtG8BbMVsO7rpvrlOphMoUI/f+rjxZZvdqUHMohZFD1gZ93z9LP0aC26oS/bS8WRW2NQA2LoPwdcdyHqNY3aBHxVkoPcqXeMM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1785830434; c=relaxed/simple;
	bh=QcqKCN72GfBpLqiF+ngsPJ09AotpZKrxIqXxxE3GLyM=;
	h=To:Subject:From:Message-Id:Date; b=CFJKb4e2D65QhcmCzexyN5LOf8FiCw1zcxFleGcwLh64eVTZo+iXDPFy/rtjILMt2p1rprdk/nnYMvaZ2PkMc3KzncZnlwYcio51l943uyWkHsEi8CAZ9u6ZDzvuFLhMu9b1+2oqzk4wEproqqhRTWpJWrvR/AIrUqF3joHOUI8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=VMtV+w7R; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="VMtV+w7R"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D4252C2BCF4
	for <ddprobe@lists.linux.dev>; Tue,  4 Aug 2026 08:00:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1785830433;
	bh=QcqKCN72GfBpLqiF+ngsPJ09AotpZKrxIqXxxE3GLyM=;
	h=To:Subject:From:Date:From;
	b=VMtV+w7RpeYHFL6mVVPJT66BCwW9Pq4YCmfna2JAGQ7U7gWvmuXY4MndiVBFsgDRF
	 EpR/gGREE4UZwMmmzBWdWOOdKjsxj0FnIe4+awGQC/py+HoqnnViS6UXuI8wbyfFAJ
	 V5kZf7L9qr5SrnsY8WDDmQWI2dwHVdkBE7VFUW/EPdDnztsjfHI9tKgHsHgd4oUd6b
	 flOiUryR2v/brvPjWfoCmg5Vrp+ohb+cl135wRok40I7LMJSSFgyK+fiK/k0ep/V1Q
	 JfmnSQcIy8As6uJWvdZMyifjww4ypyYhLXxcZF/6QwfJuEvbxqq0qf3FxHbgUBzh7Z
	 95+zqCN7nql2Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id ADD7EC5518F
	for <ddprobe@lists.linux.dev>; Tue,  4 Aug 2026 08:00:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178583043370.6834.5605960841807802510.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 4020a6f2ac8e5a7e1c4a44cefe0015be9fef523b5bb2a936a5a1028f15915fe1
Date: Tue, 04 Aug 2026 08:00:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1785830433
