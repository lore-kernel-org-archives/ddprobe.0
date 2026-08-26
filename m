Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4E7B9381EA2
	for <ddprobe@lists.linux.dev>; Wed, 26 Aug 2026 08:30:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1787733034; cv=none; b=ONX2o2p9wQL/VfTeihbFUKPFjPELotKsJ3MOuOA/wrQUxgon5TSsh/qNndjOHENb0txrgQ+iczudgU9p3OvJomv5ST5WBvAOME20IIlYB6cg/0MreTLwcfKcq4pgROSkHu7L/cgqw2zS5AatS7vcwhVSR0/kJ+LGVQ9A8fnzXaA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1787733034; c=relaxed/simple;
	bh=9kQHseWegAt/qpCsgQYy7YXXo7BeFtxKFb+eWuZ95tc=;
	h=To:Subject:From:Message-Id:Date; b=asb5SuF96tuQ4UK1eIDNjpNlWOtGXgfDxbu7ZVtIenvjgM3kHaZnAzGnJMFdbmFAlowTdCO9LVj9RAOQ979TpWVm7iwARWaQ1IdXRvawUBKCzB4QFCsYsEcZxb+g8xq+fTCNPb5NTtLTYGcazdQPUkYbXayaLkuNjVDg9kCFeLg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=skTRWMjQ; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="skTRWMjQ"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D080AC2BCC7
	for <ddprobe@lists.linux.dev>; Wed, 26 Aug 2026 08:30:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1787733033;
	bh=9kQHseWegAt/qpCsgQYy7YXXo7BeFtxKFb+eWuZ95tc=;
	h=To:Subject:From:Date:From;
	b=skTRWMjQ1kRg+lASjnnTi1aPwIYieoGAjsjLpbswjcj9QzvomFf0SzC3lYCWVdcgl
	 xUYUaZX7IcfS1Gn1AUhiVod44CtcX2sl+PEg/hQcigI5g3MKiZhMMiLVPtdGL6uhRU
	 1f97eYscTcGJBA17Pjodug+OH0cGq7+SEcW0ioSG/QPqDopeNEbeWOlGMOP26n+FUP
	 4a3KT18QjdYrpZHBS++V+sDux5wbSt//9Q+CkdfktOn7AxA+wj5CWnhShGzarlzh8K
	 G7t3kw8lJ/qPS2QIH9IZWYdu+poMkerKmQJNPhp9nZFl9pbK2mUiPr7RpVBdpm18nF
	 uolT2ryZZG31A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AA40CC61DC2
	for <ddprobe@lists.linux.dev>; Wed, 26 Aug 2026 08:30:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178773303368.25078.15459836472334438074.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 0ebbdf005cfd751bbb20ffa22b0dbf96a5536474e3042fa8d119634d95dc6285
Date: Wed, 26 Aug 2026 08:30:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1787733033
