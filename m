Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 04EF5FBE9
	for <ddprobe@lists.linux.dev>; Sat, 23 Mar 2024 10:38:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1711190297; cv=none; b=FxqWhffIe2ea4+SFMK52d8MvZYRccplhus6vhnhBYaYCcqyhh4hOuCrYLmm2mv0NGKv0ZFBBFPfx2FxpQvbnX+UEyhHmBRYe8S+PYo+U7GA7XT/WrUAKvWOlZwuoLxgUtTkAybKpp7Z90qZabmc0/c7W/4iLF/M9ZyxVIZ1GAf4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1711190297; c=relaxed/simple;
	bh=xMCQUfiolwtBn9v2SorelUQs08sO3i0ZRrbMmVj5D+o=;
	h=To:Subject:From:Message-Id:Date; b=FCSz8P+CRSyiZKYZ4B+IKozPTtfc1uZDBcSdzO5sOcI1Da2CViZVaVOXlty032sdemxGF+7Gkf1e57Jf41GJ5HTGIEK9yQhMHcT7a7YD4whQYCUTwyEOAbFSz+LZXlbNNGnfBbb2qFKQxzMRos8Qmy1Uh/XQcHFXYY2ArqYEntA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=WibHa/sp; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="WibHa/sp"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 8A480C433C7
	for <ddprobe@lists.linux.dev>; Sat, 23 Mar 2024 10:38:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1711190296;
	bh=xMCQUfiolwtBn9v2SorelUQs08sO3i0ZRrbMmVj5D+o=;
	h=To:Subject:From:Date:From;
	b=WibHa/spyHUdTMQj96U+ZvjAZdToccnssVToBCeUMRbIxvOvK844+q/20vCsTxd8w
	 uNSVuN9aZ+18tsiSlRmsOT6bQpREZIQEfM9m7ifjU2oN4invx9idKUJykZJNfrSSDm
	 W2KcZuaYhGPTM7c5LdgYZFEQW1Qu+K+hBZP/lXPHV70IlqvDfY27eyvj2Q0cyjgopZ
	 VHN6OfyDKeuKCNYEcXGn9duStsOlY6uxrceTpUlpkKvXMhuZ4WD9w2AChTxWtm34gH
	 CcO7hp82/PRwgEHEUm8exN7e13Ofp/yBbWXd9h2yywTmtQ1TlVuOFihYl0/vLSdx66
	 JaC4alzd2xz/A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 701CDC54E58
	for <ddprobe@lists.linux.dev>; Sat, 23 Mar 2024 10:38:16 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171119029643.29330.9340367104166708040.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 0cae4d877e2d00f8a962a307513bb54df203f23a963536a67038c9c407b22c3f
Date: Sat, 23 Mar 2024 10:38:16 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1711190296
