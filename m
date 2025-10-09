Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 48F2B25A359
	for <ddprobe@lists.linux.dev>; Thu,  9 Oct 2025 19:59:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1760039994; cv=none; b=O0R26uDSo+iDv9j7TyQYpxaO9wbIdxfNa24rhmYe1+lH8dgcUgNRtw+UNArpLcqaydifjvJNaK7BhKnLN2kiBuV3/5Ft51ROd+f9RSJtDKqUl3Cv3x4m3yykJsAZ+Axcz3P7Epm1vhRB12yDYcGTvRA4Dqozm4wnTMWE3NzV8Z0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1760039994; c=relaxed/simple;
	bh=bWVR9SXLsbMIRCNHxk5qLyuV1OvKW34m/u254cOmfa8=;
	h=To:Subject:From:Message-Id:Date; b=hhl4EOj7cfi9/CtKB8vmqgI5jCP1x2Z1PvkkaBuS8cKxOdKgQXDsRO9Vu15sH6yqs4bJpWnThODdlQwMXJfiH/SbuZee/Lbft4rmrs+HteQv2sQxn5DpPxMYi/jMerVK48c8OwilphDji867hQ7TtAIe3V+uWShckWSaPRc886k=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=XVugy+qM; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="XVugy+qM"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A4357C4CEE7
	for <ddprobe@lists.linux.dev>; Thu,  9 Oct 2025 19:59:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1760039993;
	bh=bWVR9SXLsbMIRCNHxk5qLyuV1OvKW34m/u254cOmfa8=;
	h=To:Subject:From:Date:From;
	b=XVugy+qM1A43zXSfl5I/Xffa7V41Dv/mNuN3rIYg15gFbMJY9dxGkW3vFBf619+d3
	 bOUgxUGzEMZlRFdP0V53bTh7ZQkWs9IDX2NiRNForYJx1XjiqWbn8k3K63KgrxBFhw
	 DfwiVu7Wo5CpTFPcJPpWxHjO2Lc7mAThntFIlm5IbK/WHNJObzjDWtPsy43J1jCgf0
	 1arLEiDzsdnSIi/Sdl1fzcfh8FwUajrdAxZto+/TTEmJ1Ci76Pv2V60SJv/3wpjxQS
	 oVn7xZGGTfKqIM4RxI1eglMf5HTr39oj8wDCpJL1IIvagVF0G8Og5CfXFgEUopVuoi
	 h+P7BU1EhytAw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 937D3CCD184
	for <ddprobe@lists.linux.dev>; Thu,  9 Oct 2025 19:59:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176003999358.13746.16001910014611698700.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 3140bfd27eb73d30f4e39fb16f9c1f9f019f6dbab8cbc398bc70687cac9659bc
Date: Thu, 09 Oct 2025 19:59:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1760039993
