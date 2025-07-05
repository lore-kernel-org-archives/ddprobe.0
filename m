Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3612D1DD0D4
	for <ddprobe@lists.linux.dev>; Sat,  5 Jul 2025 07:09:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1751699394; cv=none; b=TfAJyLWkQG8GiVIbG/HASmB6CN5y3FVoE2pCYFmt8U3/MECKhf9/oDBsW36YwW9+WeiEVPtD1yHenaymLcDkPgiy2Bopkn9r98x5wBxHOU1mt16xcvq9wigOdwAmup2jKEXwCpSVnozY3Ww2dGMkRYiE3mHj+lDlmOBI380Jt8g=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1751699394; c=relaxed/simple;
	bh=Z+AbaBL1ha8wxjk8J7qciv7OasCpRrJDjzbaxn0xr2c=;
	h=To:Subject:From:Message-Id:Date; b=izTglIRGg0lvtoP+9EwCiFTDzoa+RL+iKqBo5MlMRCU+ZHmgKxft9+/sX04IJBOEGWQGU9VxF89EmKIPNlHFCiFBvf53C/WhtMJ5/QkbDbJLLbi8uEHecWGMgGr46UZroE5SwBt9/PtCSh0O6A48fvpF5DknIOOKq2qVIyDN8LI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=nzoSsthT; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="nzoSsthT"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A2C01C4CEE7
	for <ddprobe@lists.linux.dev>; Sat,  5 Jul 2025 07:09:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1751699393;
	bh=Z+AbaBL1ha8wxjk8J7qciv7OasCpRrJDjzbaxn0xr2c=;
	h=To:Subject:From:Date:From;
	b=nzoSsthTE5VLF5AF5ldtBN369wdzxuxhzwCsFG5aQlkfCT+UkV0rJOWHfeVrx+rUn
	 5DfEnDxzt4NFPNsDSWMDZTNU8VCKKd8uCLwfE7xCd+7dJ0BUb/T2gEhlPqvBqUu783
	 HvQSvigkh+Na6SSANCk3mbNAclIAXCBTHvlzjwa9r6GhYzPFzJjLnoVsczrdJoiDFE
	 EhfzhJ+HoAxRby4GZ5TPynPaPJJicHcZdXabD8EGFJlL80tOG/x4bZRVUraZGNYqN+
	 wdNscqZlCpR0E46i85LlsxIxAUdZWfDsl/Bns9bqXrFzkCAwJ1lhA6tCCo7k38ZMYO
	 AqYbqIl0zHjAw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 91573C8303C
	for <ddprobe@lists.linux.dev>; Sat,  5 Jul 2025 07:09:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175169939357.8317.15052985766153313466.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 47358babd029c1bbb3f57106cfb4242b35310b0ce3611a3bea92f7b39553830c
Date: Sat, 05 Jul 2025 07:09:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1751699393
