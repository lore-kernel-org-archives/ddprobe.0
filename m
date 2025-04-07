Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3CAFC219303
	for <ddprobe@lists.linux.dev>; Mon,  7 Apr 2025 17:29:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1744046994; cv=none; b=BpYNsQ/yq5AW3Y5HHiU5gz/xNtdt3g9mdc9hAYAwKEPoZCPtfssXB3PB4kQBkLr4xFDgLIrH+sJ/jHEjTGAEoNsGhp6IhlR4/MXdHOxTLlpI9zo6oi0bJdFCXjhlQWmErisYPAQ9F25weMm5rf1/Po3zHkcyy6dwPQLzo7oWiuU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1744046994; c=relaxed/simple;
	bh=ncOzvWbp6iq4S9eJj3KLkbXGiNuZl9K8JBeVM6r7wN0=;
	h=To:Subject:From:Message-Id:Date; b=WPagYcpZ3pKq9yksePY4pxBzL689TLuztOicvDGI44WSzXfiTUlJPeKCid6OhLmV5OpGFLAxU1V7g71dSuPZa3L9Dm9mWIkCmuubHxn3M8Tk/kK+Rfx7XIc7fHnVeXx/J2VhVMNAe07Ymr330IrZU2D+NrsvDzOj+ANtiwmNNPw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Kvq43Dxl; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Kvq43Dxl"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A6DF1C4CEE7
	for <ddprobe@lists.linux.dev>; Mon,  7 Apr 2025 17:29:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1744046993;
	bh=ncOzvWbp6iq4S9eJj3KLkbXGiNuZl9K8JBeVM6r7wN0=;
	h=To:Subject:From:Date:From;
	b=Kvq43Dxl3jGF4pzAEVBpCUKkHMC+s/0JUzhlkWD5cYZ5Yxiv31WnaGUQNlBibctC1
	 Upgx56zEpqLB/xLWqyhCSiEtG0Izs+QsN/6vzrlkUEy3si8rNSQNfzAfU6kP6AEodB
	 Rnbw5w2n3iXK8/vjOin+IkXnVdNvgPR3v7Ryu5Fm5Cf/H0VY18+WHlbZIcb4RxN0XL
	 A5zrxsclFOz/g8LqEWOsxZAA6Vd7ZfisQCVi/aDz4HHG+X2eeZ2+uFiV65QcehBxyc
	 eBf69xbedzwstyFhcAjPdlRJKzfGSfb3FODjFx0iBJ3UOrtK2l0Mobrs5iwZ3KE3Bt
	 HC/tdEPcH78Yg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 94841C36018
	for <ddprobe@lists.linux.dev>; Mon,  7 Apr 2025 17:29:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174404699359.8440.11702691390195529129.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 39f8e828b447949bdbe67b47042f30344a60e41fa3e7cfa9a897588aa4f6dd4d
Date: Mon, 07 Apr 2025 17:29:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1744046993
