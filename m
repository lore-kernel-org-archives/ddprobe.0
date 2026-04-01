Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id EF70736495C
	for <ddprobe@lists.linux.dev>; Wed,  1 Apr 2026 22:55:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1775084135; cv=none; b=gmsJgmRjuoU1GBka6JD1poPQR33vwt0N5GGnGnEFHn6XGsAJge8MDNinXGW8CQu0BXUkWTKJa5Urf2qr53cS0cnA9fG3u6gM/xWLJ++LMKuX6xYM0eR5ucbM8abvQDbXuMKw1YDE2lJtOufURURwTX0OYmWITBfp1LZh9AX2+kE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1775084135; c=relaxed/simple;
	bh=ViTkiHUq9LuvFp9Np+SFxljInYHQ2jMX/V7Mg9VamKI=;
	h=To:Subject:From:Message-Id:Date; b=pESje8CARHpWqiVKfigpAnoIxuxqcOVVECOWUfHdpBIBIsFKNG43zeJaBE8lan3ltZWAwb54UlamtEhSc7NhxguT3Ajxxe9kQq7b2JnWYJkIqd2yWpw0lqh90I/fN3SjbNYMdwhVWbUSz9jl2duLfTkaAgq5MYYUoo40CXsuleY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=IAMhXSLc; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="IAMhXSLc"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C89A6C116C6
	for <ddprobe@lists.linux.dev>; Wed,  1 Apr 2026 22:55:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1775084133;
	bh=ViTkiHUq9LuvFp9Np+SFxljInYHQ2jMX/V7Mg9VamKI=;
	h=To:Subject:From:Date:From;
	b=IAMhXSLckP12wuKJ6vsqrRYJZ0/kU2V2SoZsIuKPx+PVcnmfXfE6G2nFHHwxRBOHj
	 usAyVp7M2wHcQbMlW+6329mebQeth+mXUFECEukGAyF4HXnMJHVItLu+RPX+pFnR+M
	 bwi/NcNlGI/q1hNnhCGs7HzZJcugD8IvyDGrN8TOkIjuulDcg7u/4JCuaq5WW7NyAN
	 u64cIXqkW/XNBTD5eWk7jIEtTVuDUOnxrRm4xxuBkWe5yuIy2at181CJHzrRSKT2Ex
	 Qg5kgcuNFl4KPlKR0NPis/jv+wGo3GnyrOMN5KIvikUPSi1CJ7R5TFJ0Eyo6OuZWV0
	 eUMgJfKYphfTw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B3CEC10F6FDB
	for <ddprobe@lists.linux.dev>; Wed,  1 Apr 2026 22:55:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177508413371.19365.9913110134813897044.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: a730f58e93690dff329800f9e3541cc1d299a26531e591aac1c18acbbb1ef2f1
Date: Wed, 01 Apr 2026 22:55:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1775084133
