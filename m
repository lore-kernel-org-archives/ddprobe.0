Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 267201BBBFD
	for <ddprobe@lists.linux.dev>; Thu,  2 Jan 2025 22:35:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1735857354; cv=none; b=P8eMtEuZgFd/28lK7wYn/MYMQSiGxz+ryR4jBsXo7hD6PAuHdS6WhtossiCnb2Wc/rSNFYOzpR52eB7HD0l59lgzIM1DPrESyBsWT21LE1IZqoeOojb4BZL1MykJ58tpfyV4hIZOPoVKSSdLmMjfujKHrZgM9X3CaSFQwsdxWRY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1735857354; c=relaxed/simple;
	bh=O7XfIAGJUQLtKBKCqTPyPh5pMdF9wKk3vCyoN1/PlVY=;
	h=To:Subject:From:Message-Id:Date; b=M0NXMGssv1AsdCVg0E9idTzCdNnFBYvdtF2HUNFgOwWKTH1Is75PcwCKBkonL0g/34G8FZ3/q9lyPujoTdCDprYw/iIPZxKATwPXDCebWl/fLKPB7eNATsVAHrSUDxMkU2kUHefc6yYmxo9b1SX62h/e5YlJA2ZKz6crngyQlMo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=VWGj478K; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="VWGj478K"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AC319C4CEDE
	for <ddprobe@lists.linux.dev>; Thu,  2 Jan 2025 22:35:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1735857353;
	bh=O7XfIAGJUQLtKBKCqTPyPh5pMdF9wKk3vCyoN1/PlVY=;
	h=To:Subject:From:Date:From;
	b=VWGj478KJhHzE/C2Yiv7QClsBkYrf/gZTuPH8a95sTieh5IN2DqZt+W1SsPO9xnuf
	 /TyEQBN6xB6yt0Af5BGJNUWhyPjQPUTr5j3Fod/tliGsHGGms3GkEGpwRmpPwX1TKx
	 JjJbe3+v7LrrK14YkPWUek9+IPccG5M7isI9YlsyfZAbiuexvDkYlCQiFIbdjG0T+S
	 Os6BfddrSNQsqFs0J/0CJQK/Ip3nN7rCFu310FplWwFg6U0kUefNOGdRwxpkPD9CNl
	 SIOGJtN+ppCL06/XkDaF0fOxRqaHMCeBuxo/jqJrIHQqxbLXlZy8fD1JhfvLxnyFOy
	 DbEXk7tNuL/0A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 956D2E77188
	for <ddprobe@lists.linux.dev>; Thu,  2 Jan 2025 22:35:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173585735360.21319.16228579412711911190.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 6087cb7f0d8baaf79a3fdc66518bd75e89467a467542d48d8569b8b19253afe2
Date: Thu, 02 Jan 2025 22:35:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1735857353
