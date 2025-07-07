Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2EEF4285060
	for <ddprobe@lists.linux.dev>; Mon,  7 Jul 2025 21:49:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1751924994; cv=none; b=SF7szSaA+qRFXiA3VeqsD+GK6Wq7ERKczw5us2a/XdN6LuxiGA8yJmEmbILrepzAO6nFe+vR5WXbzbpjH2KhOKdNT805oGnPWX742udeBtDIzuZg7oiFvCPDlnMvSApeXOKC8z+ZFYogTnznJfZSHwWXRLhmp3tDlyP/81Q36hQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1751924994; c=relaxed/simple;
	bh=TyRGWGT+bKYmz3szZ+8WUdl0nLQcBnJyDXeZoH2WFv4=;
	h=To:Subject:From:Message-Id:Date; b=RZjsEQR/WtLL3cp67voQQGZe5BIQuQV2AurieV/jLplUPl6VElTzLcZF1UwML45X3s4ShOCgIBHWbMWJ3pED/zb6k6djrxo84XvB90Q09q+S80HWsY2iHA8WKELXjZKVexyZ7OEHfeJRExdmZIYBmzKZic9VMMrJ4s4nnlF3ols=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=bsu7b26h; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="bsu7b26h"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9E967C4CEE3
	for <ddprobe@lists.linux.dev>; Mon,  7 Jul 2025 21:49:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1751924993;
	bh=TyRGWGT+bKYmz3szZ+8WUdl0nLQcBnJyDXeZoH2WFv4=;
	h=To:Subject:From:Date:From;
	b=bsu7b26hDGaIMW+lVDj0Ps/3WEHmhoapZV/BMZtej9uVHMXHiozYFfcEoZibCR0eB
	 sdtfZBfn3zll0KBlCYIieqJ5Azz1ZjHWadXJLIfvGEGtU2TM+/bomr+noja79VjtXO
	 vysPywiNT0Md9bf6iFMcfgZuPf+akrnMwpAegHKKMZcyTCpmC3bp3DX+H0HIZ/dTYe
	 YdfqH/G5ua+9CX3ljMEhsKvgJ29wBVgtEsClbjhPazYpxhSU37YfDuzsMMn6lTOVUU
	 AqGFDkwO9ggVWvFUBCP1wOJKJnOBuGpRy0SdjRSAK9iNnXq1Tbk2ikjwqHDl6A7wqb
	 18rYDTPzcmHog==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8F1C7C83030
	for <ddprobe@lists.linux.dev>; Mon,  7 Jul 2025 21:49:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175192499357.27877.3172186694766095344.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: a70fa51eebd9cbb55523b76483a149ac8c025bc5e14103cf5c36c7e463a2e420
Date: Mon, 07 Jul 2025 21:49:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1751924993
