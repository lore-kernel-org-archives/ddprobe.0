Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 25DDF1D094B
	for <ddprobe@lists.linux.dev>; Thu, 17 Oct 2024 07:35:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1729150554; cv=none; b=kIKX9Nfe69H7GAVDGDde9HwTeYb7vkYTSWcxF0LDS7C9f2gGsACps/r/S6h1iT3uksG9bT1fbbA2Perhvol7ZKFwwlspkdXalYjK8fATcFdfhT7KCIHSOknEskc/FJKZ45tESOQGEcKaJobnw2+X3/nzPEwOP/3Ymw4RxePumq0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1729150554; c=relaxed/simple;
	bh=VR41UMXI+bKpk5kpj6MA7ykSGDPMRwUZfFB+XbPU9oU=;
	h=To:Subject:From:Message-Id:Date; b=YHbbDxSEYRBnugrwLiBG9zphgKQ9bPfzLUaEaTIJENfe6MCBucMZuiLdtiF9swnLgtqaZR4JAxC0IPXPmP1AyK6iG2RUETjmKmv4HtF2bjqAoFFDLFB+wdbRkP3vpZRm4fy9iSzEeYiDhegW2UiBFk4ac3M5OaMsqkOEsWcFWe0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=k8dkuJpQ; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="k8dkuJpQ"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A262AC4CEC3
	for <ddprobe@lists.linux.dev>; Thu, 17 Oct 2024 07:35:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1729150553;
	bh=VR41UMXI+bKpk5kpj6MA7ykSGDPMRwUZfFB+XbPU9oU=;
	h=To:Subject:From:Date:From;
	b=k8dkuJpQrCs6skbk4cloIKlldxT4qpnRi+UnY22IqF617xFmiHESbUls9PkWGce+T
	 N8gyCcuH6rtnagvICPKEfZBxBEIqNwIa9ID553F5Y3UWq20FhU3ma/Ojrvmt6fd2TB
	 nkuqgMv7JHLnPKeDofz7I33hAtbtBiOuJaV61JRKtVV159yX3F6ePgOQzV+FzTOGB+
	 Deb1O3qiM+PV5dS8WDGpdHlKzyUolvDi83BV2KJS1MyxUytU+ZgdtGw24UoCymCEB4
	 XMQ3yNheoOdP+M9omXeHYRbA45bOavpBVHFGRC7lNPLia4Cpf8liWq0sllSCjrpFV0
	 Qqr/HAT1VxeoQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9578FD2F7F7
	for <ddprobe@lists.linux.dev>; Thu, 17 Oct 2024 07:35:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172915055359.9046.4514828721467824875.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: f41a5e62e11d4d2910854aa0241b62b27361f368eb296c10b36703413d8012a8
Date: Thu, 17 Oct 2024 07:35:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1729150553
