Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 107A532D7F4
	for <ddprobe@lists.linux.dev>; Thu, 16 Oct 2025 14:29:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1760624994; cv=none; b=NTmYxfpC0DxnuBIPQ3VhM+rA+2OTfwajSYETb2WMllPZRMd1pLQ8ugE2mbkb6wnT43swOq4YzmxBdocrc02ljGI6Ru3M5tJ87Y0AzWfW+XtqFmQB0Nftwklx/cHonXhMcB1NFqeiMx+n4JO2VmFJogZG52nptgWl45hEwlelcT8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1760624994; c=relaxed/simple;
	bh=DBrkJpOPfXRb+FaW9W5Xqhhx5autGyLXz7b+rDLLqMI=;
	h=To:Subject:From:Message-Id:Date; b=kl9ei+01nGSyfPatMRaXw0kIxSvH1DgyT9nOxlFv2x3uPhd3d5l9tTjFrne+LeF6bI9P4M77wFvqrY+0N/34We/1v0nioBA4RK/CmIZNq3gK2do6eRo5pU5YpqB1H3aelosGkfnrT1GCJQmOpP3odXPuzteHbBx+9KBAo0/Kd1M=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=miHHHsvg; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="miHHHsvg"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A1E21C4CEF1
	for <ddprobe@lists.linux.dev>; Thu, 16 Oct 2025 14:29:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1760624993;
	bh=DBrkJpOPfXRb+FaW9W5Xqhhx5autGyLXz7b+rDLLqMI=;
	h=To:Subject:From:Date:From;
	b=miHHHsvgCys9ZurhyjEhRdJKA9wMUXr2GkdJdj26gLTjlrBBAylbf8b3MypROoCHl
	 QiD8J9JHXBpGgEbrbBW1IBPacxxmsyXH9yrQLNVcOw6E1EjXLUWX5hAjo2DDAvNSCO
	 0MQNiOVXN8sVXrf7T30l7EZERHPL6/LxdfcYsYGlDU1PQY9mruBO+ah2RUIRUp/VUb
	 EBtLc0WnqHeu2/kYbUxAJOraFpxPWsw9jPrVkY6pRj2ZAMH7H+bH2oQTGFO/lhBJrd
	 kfsAOH/C0Y7d6H/bpiRjvL3MYf7TdRJGBSN2SlifVAFaQzQrr/DIYCKzqC1sECRNMP
	 RN8hVRobYaMAQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8F989CCD199
	for <ddprobe@lists.linux.dev>; Thu, 16 Oct 2025 14:29:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176062499357.13083.1884408870051253661.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: beef2b8e7bba84b09525e9e19d0fac600a2c4dfcfdf4fd4f8dac1b52e934beab
Date: Thu, 16 Oct 2025 14:29:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1760624993
