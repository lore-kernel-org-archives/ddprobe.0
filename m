Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 436FE1EB2F
	for <ddprobe@lists.linux.dev>; Tue, 21 Jan 2025 19:45:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1737488754; cv=none; b=j3qVfpXr224pGRNkj/Pm8ybxIEDYlK2N54NO83RtSTftzXQTggDn5x9XxF9fwhPscouWtAmllgAg3MLRYYoUSyowfZ7NCkXt1XHPl0oM/X4rx+F9xbhlwjgqJbENV1pqQhuwfD14dDx5vLlz6hSllKEj8+vk3Vdc3448V4tR2Jg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1737488754; c=relaxed/simple;
	bh=agxcGb9e+4w2bAF7to0tiv0NfFrL8tr3zfrHhKfJX58=;
	h=To:Subject:From:Message-Id:Date; b=sTzuatIqqNOEyZRw2F34UZicmfddsBQI3mDV2K79MdRBIX25Mozz42mTHplNv2J0/YyYWaBP59A9HkTMyPmnJqo8GwN6YB0A/IcQvTntNp+QCq4w+7efr8aCnxufHPnecSf/HiOubdk2X3uPdyFAw9ddE3mgUpI5G5IB2eokcsk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=aZx3zjdd; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="aZx3zjdd"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B622DC4CEE1
	for <ddprobe@lists.linux.dev>; Tue, 21 Jan 2025 19:45:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1737488753;
	bh=agxcGb9e+4w2bAF7to0tiv0NfFrL8tr3zfrHhKfJX58=;
	h=To:Subject:From:Date:From;
	b=aZx3zjddQn1RRszg+1t4DsvdePwvnfXERCt4TCi+x+TTcrcuIr49tmI+di/RMkm6C
	 nE9UTipOu0/Z11fngRZy9jKzhIRYsr3I685OMofsJx5TuwzL/ut3z+kggbJzBXQ+Io
	 J2HdxcEc1jXbPvpFXLzoSbOpS816htXVELLly4cqi4xjM0WzeOaplPztqb0kctWYpM
	 NsxWVeTBUDMjwdaAjXYAneH8+F85/YrusaTnMXueNRk/KZWZCSpYAEgeu3HXOwnyS8
	 jvdrgpv3y4Wyti8SqXtRB8qVar9qQyGCigeRInjOJsOL6iPNNtFqk9NVkz6SMfHwND
	 DMM14eMwEkRpg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A40EBC0218D
	for <ddprobe@lists.linux.dev>; Tue, 21 Jan 2025 19:45:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173748875364.5319.11048849520163699014.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 39af365681cd90f634f4c0c454e41be6a3e1c424fa30e7965d5301227135ec6a
Date: Tue, 21 Jan 2025 19:45:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1737488753
