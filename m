Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3244B3EBF3E
	for <ddprobe@lists.linux.dev>; Sun,  1 Feb 2026 23:33:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1769988834; cv=none; b=ZWswUubgttF8/T10XpBjRs7jLHIDSoFOlcaoWBvtR6QP6YfNnIxccjVwfjLDr+W0olucQtgP86DrzkB0OYsrph9IO5VDO4pbHtLEFygsYWAdYPGkg0SR6sECrGZT9PJ10j3AreFVJNWLwkrptuGoYVSNguo7BXL+0XZ9v66n9Jw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1769988834; c=relaxed/simple;
	bh=zyu6oLZWB+0QvfPRc3qg8QuDsD2sWO20uUxvc2NPhoA=;
	h=To:Subject:From:Message-Id:Date; b=osg3at9aV+hQwysHFhP7C8FzT72uoNU1FmAjPE/M5zNDTPjW1ULjJPHOU4UWHTC0Ak5wvgvh987j86PHm0pGKXSXePxsD6ESPPRVAjwxYD3IiQDbaj0dHbNzs3Nir8iAGbmdKhzK61uO7hXtF8tczCvDRS7h4FNUDsrfCLrl97Q=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=o5jYpl1n; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="o5jYpl1n"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B557AC4CEF7
	for <ddprobe@lists.linux.dev>; Sun,  1 Feb 2026 23:33:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1769988833;
	bh=zyu6oLZWB+0QvfPRc3qg8QuDsD2sWO20uUxvc2NPhoA=;
	h=To:Subject:From:Date:From;
	b=o5jYpl1nc3tJXo27R5ms6zhet7hgW98YdqqShn5j55HgqnpNxfwfUCCB+4Wf99Rca
	 8c6c5HRAJPNJYOZSPLFE7njRMPSPro6/lJQpOqXXMjBJvCA/ArR3nsdVgeDaGXKL9H
	 8fEeBZDvWLSWle9++989Tfc23CiSvPfZKx9ia96mZ2ea1LxBtFpUr6W1bTPU6QIPLW
	 04jLRMAIbBQQbVMgnuW6sHbmjcnF6O01ASfTdfSds39/Y36+lYmB/KSoX8knFGQJ1f
	 euc7yk2LIVi/PNC26D6jPTVCkgzUjp82qAT2zDjk6zTfJQsj8qSOMbhTliYsdrJuFe
	 N59DUflr1ptdw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9F731D172A6
	for <ddprobe@lists.linux.dev>; Sun,  1 Feb 2026 23:33:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176998883364.23148.289911528942360960.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: d98288086e42a659b8db6b347024db15e473336dfc33690dc2486895c2a269aa
Date: Sun, 01 Feb 2026 23:33:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1769988833
