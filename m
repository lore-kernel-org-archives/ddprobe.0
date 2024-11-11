Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 37BCC15B0EC
	for <ddprobe@lists.linux.dev>; Mon, 11 Nov 2024 11:15:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1731323754; cv=none; b=iOsIcIJNHZLTgeOEjWmFdEEPIft0dDGclnjTHnmi8a16sR4/iggXfpO/MXJElHdm7LAPIEquurHD9cP+CSUng+Porsm5CBfnZ6evqua6l3WtUhuIt/xX1xyjNWXpcG8EkJIKQ6/1adL16scrw1fD47vIPWXSMNUauUitC4PqGxw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1731323754; c=relaxed/simple;
	bh=/vW7uM1h23jWTGtSNDSR1deJxWhlMIFzIYF0G48+rQM=;
	h=To:Subject:From:Message-Id:Date; b=fwJH2qbX2XD362rI+r1ap7o0rrLX6iM8ah4u5H230TqrV8fBD6e98yyJ35NgGDDeadrpTpBsFWvL0+2/LhcruXE/q2o7Mg+U+eIKAu5Ny6daj0gx7jGDdBO9MfeO+dIB2quyaeVGUJbAeQpvPm17LskPc4GCCuCLmVmmGRwiwxQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=CmwNR+E0; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="CmwNR+E0"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AFB63C4CECF
	for <ddprobe@lists.linux.dev>; Mon, 11 Nov 2024 11:15:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1731323753;
	bh=/vW7uM1h23jWTGtSNDSR1deJxWhlMIFzIYF0G48+rQM=;
	h=To:Subject:From:Date:From;
	b=CmwNR+E0W/GYePEmQHnc6sQliPTwOQUz/S2l43V8VOJtV0ybQGIijauYWKcMjc771
	 dcwnUD+7nls9EbWVcoQPXRgGcooUfInSRaY+Gq7foAsHJBexdLJ8DHLy6jCn/9vMyQ
	 0f7nybVnM8b0f/CfkO+XgkPPfjqljkkWGuhzWbiODnXK+9f6Uf3BMCSCtzRF5eCCCB
	 O3V8NMY+ekEWYWOpvvsa0hbHsIqA03OENTe0SyWrhvjhdd058Xbab7KkbKLkORhw6O
	 MMubmxBF2cB4mwaWIVKDW6ET/4grwDY7tbpKwQycZ0da+L9KywFUlZLMl4mOLNqOQ4
	 gMOxuTZ8SOp1g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 96FDDD2E9D8
	for <ddprobe@lists.linux.dev>; Mon, 11 Nov 2024 11:15:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173132375360.25792.14464098664807899480.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: d633646206feaac7dc0ea892bd0d3e4fad800a2531928ac34d2907f04440c3ff
Date: Mon, 11 Nov 2024 11:15:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1731323753
