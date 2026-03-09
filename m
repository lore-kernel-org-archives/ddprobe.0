Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id B87FC3D646C
	for <ddprobe@lists.linux.dev>; Mon,  9 Mar 2026 15:14:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1773069293; cv=none; b=LW8okE3Z60u0izJ5r4zgK9MtjMGW2N+8AhChqCLf9LcMpyP/LaTvjGUVfKqzzaxu7RyMW8Himd1WirysZj7OteygMG7ilDVCUI1Gm3XBH3B2mHXKtwuNX6q4uqrbfLh3BAuoryIqSm7IJVhhUw5nY8VfjHJ/BmNwGlKKC/FGm/s=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1773069293; c=relaxed/simple;
	bh=XXomgDjs3GUGMMLbx8A1R2j+v+AsRWLahOLVtjdckzs=;
	h=To:Subject:From:Message-Id:Date; b=UtiVXsyAuiPZ/HcXxif+w/hUgcJuu4Pyfs5CFtdfOmTdS0Kd6drWhT6zruwCGaCLWTN88vMDVX/Uj8w0vAE4GCiwulunb30h3DeC1XLGdPwaZKIgm/4zztp/6ZMijoIopPazTjssfy5bp/d3asl50ytk/BkTVpYke1WaFt6pzaM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=DHj9mFLO; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="DHj9mFLO"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9CDBAC2BC86
	for <ddprobe@lists.linux.dev>; Mon,  9 Mar 2026 15:14:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1773069293;
	bh=XXomgDjs3GUGMMLbx8A1R2j+v+AsRWLahOLVtjdckzs=;
	h=To:Subject:From:Date:From;
	b=DHj9mFLOG3ny+Yz2fUaF5KVH+jq7b369PJZrgLqcGbX7HZh4M4gu+e1NFGdgx7jtp
	 av3s5+52OoHex4C+MTrkCLoFNsXzP6RhhMGBh+ve+lO5gJR77wpGkMHa3OqXbQ/kH7
	 SXduhN0tsTQRFDlFLCZEEOJ+UeMCdclReBM4R4pleRKXpK421E3BlRpAucxyUNE9Al
	 8nfarFGA24oXw6z8Yyq4YqwcCdRFYVSHHZaUNKCIX8p9fSjWD+UbT+LWPoQSjs+dc1
	 q4z47lM+OqtFko2LFcM3EqNN1pvWvQ4rMJtRfzINRl7FR+PscQRbRyn2lBQppT04QY
	 eGW4gU+zsa6sQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8FB39F41808
	for <ddprobe@lists.linux.dev>; Mon,  9 Mar 2026 15:14:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177306929357.14306.16407388315819950196.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 521d9fcec81a6687ea547e3ca628c932089eb7d8998f5505d6239d14c0a89da6
Date: Mon, 09 Mar 2026 15:14:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1773069293
