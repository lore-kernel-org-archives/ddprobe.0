Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 697E53ED3CE
	for <ddprobe@lists.linux.dev>; Thu,  1 Oct 2026 09:40:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1790847634; cv=none; b=Jpr37AuAONxGdz0anqcF/kc554Y4NZO/g0kpmOViVNewVCs9GcsjxkH/roGaHjHcVn/oXzebfiY+31R22RcFRjkAdG9oq+ZtVtRQoSZEBvenyrwsvxIkvD31d6CbbHbr4ZKUMNfMSvuvk4pS9Nwk9f92XWzBr50fA34AlWmCYXI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1790847634; c=relaxed/simple;
	bh=BfdX85SUbCTgz0DMm7SDzAUXLMtZzCumDTo4nJC4HIw=;
	h=To:Subject:From:Message-Id:Date; b=Cqqp8+NwgzBliaL4jRv2fjS10Ez4h9Wyr+lLBK5+RiIMUdInWqSYPA92Yn0LbcAUYSomCresj5j3UryULf/M43sLb/EkzGRrFFtRUkrjFBhvJP6M5KHxzeBK9dk931mu63qluvIh+uIldmHvM+Djopw10y01pQ5ej71G5i/V9Rs=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=XQARyf3n; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="XQARyf3n"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D09B5C2BCC7
	for <ddprobe@lists.linux.dev>; Thu,  1 Oct 2026 09:40:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1790847633;
	bh=BfdX85SUbCTgz0DMm7SDzAUXLMtZzCumDTo4nJC4HIw=;
	h=To:Subject:From:Date:From;
	b=XQARyf3nUh5BAtgRP0yA/CxMvHslhAO9cXM8G5dVSYe8hxHQY5eaTp6SOp+Opzfv9
	 H0Y3DN+PFFz5Iizphwd482CXKhZCAV7hPZ23oIMtDhUPKN5k6TGB/La3AgBpqzEUU+
	 NmVC/zvehCEeAd6pGqLkNmyBI1imd84iKR/f/Ed3ODPC5e+eFOyueX85dXFWuEYUWq
	 WcMKxB5QOAF8VutOCB8U3nDDqVVECbflhvBl9u7/+fQb8MurrzSzOBaEw4pHUaokwU
	 xFxvZxtYdazYTS6alKhLRw8LZZnuLpbx/vlmOtYLinANq1dGVxl0AlM6fwJRW2o09I
	 UDF1riTuDORmQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AA998CA5FA5
	for <ddprobe@lists.linux.dev>; Thu,  1 Oct 2026 09:40:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <179084763368.2886.2283716394570300054.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 99d9200b57fe10b2a77fbdf613a8fcf8906fa7110bfe2084218f6550665e1edf
Date: Thu, 01 Oct 2026 09:40:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1790847633
