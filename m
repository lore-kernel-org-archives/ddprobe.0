Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 39C0317548
	for <ddprobe@lists.linux.dev>; Thu,  5 Jun 2025 22:39:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1749163194; cv=none; b=Uu+ytzOYOivBAPX9RwiyGV8k2TXyihMPDyxePng+poVIJv3twITTGwasCfGe+AwpbqSv7NdjxuCnygmvS6Ax0tp+cn6Isd6GVQ7KAvV+/XVjMySpGxHpNNYxu61hhtWJDQPZPEHdc1pK/jZ7G7bHfgQqxvMtaHyD0daEBtJDMK0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1749163194; c=relaxed/simple;
	bh=PdxAd4QTsfjpfG/7jElKLqGaOyBmIM0QbcRcbsD3MDI=;
	h=To:Subject:From:Message-Id:Date; b=qQ1PhsQh0ypz+L/P7fO9MNKmNJmjIiLMku9MZTelEdnUnLczqw7cpPmhGZia10H3dc45DGuq1Mzz3I//exzawP6VDMvZBEQtYjdSEOrLIvrPsiwob+6csNp4UkaOmzKK6KyIP+4qGPkEJduYjgZLb5d9FmsEA7OJIbov+3bHvk0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Lx1pvUGR; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Lx1pvUGR"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A31BDC4CEE7
	for <ddprobe@lists.linux.dev>; Thu,  5 Jun 2025 22:39:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1749163193;
	bh=PdxAd4QTsfjpfG/7jElKLqGaOyBmIM0QbcRcbsD3MDI=;
	h=To:Subject:From:Date:From;
	b=Lx1pvUGRMo7sbhTxAqcPdwqkD6RSe6Ltl52APkB4t03TNh7ksaOQLTc8Iww6rTvQx
	 DD0rWFg3a/8tGbhEgrBGXwdqdfyYikEo7be0noabgLDGGVztzk5Xsf/CAF9ZGKhaI8
	 I9pPqmN10K9MLvvtZs7ayoI3ZuDhBF0cqN1BlitIlI2e1HBD0w55xKhXviO5dVtdvm
	 aH/ozwgKXYZloXsSw7R+prvjBVaMrBarCmc8s97Xt7YxgoHx9ZPJFcFX7e0a+GmqRm
	 AxaOWpXhwa4rcim/Z0o8ixqpyL2AlnwjKgBdpVU/uf2tgk7ZToc20iEpcs61PES47O
	 B+f0bOe50N9hw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8FCFAC5AE59
	for <ddprobe@lists.linux.dev>; Thu,  5 Jun 2025 22:39:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174916319357.17518.16629830003555592837.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 620d183386c988e800c1adf0d8df751d1de95fe7ac52c1ba86dd652333211339
Date: Thu, 05 Jun 2025 22:39:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1749163193
