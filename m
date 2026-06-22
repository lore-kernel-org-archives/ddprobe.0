Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3266B7260F
	for <ddprobe@lists.linux.dev>; Mon, 22 Jun 2026 23:46:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1782171994; cv=none; b=CUSE5uenNjPBfwscfSM53QNXy19Zd4cYm/SH1yCyXyGDYa/HPrBli+iTmO6UuNiIxQDg1V4nM1UT7j9K+RUfn3hnvLvicTlL0Hy5IHgGmj17nAmLVyj3T1A6ZC7bg5guI7+lety+dGrfPFHY3VzR9kgPbfJduabCfMtEtTMRFBE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1782171994; c=relaxed/simple;
	bh=6HoZ4jPIRDVcJJcim9u76qCYsO6rgxjKW7kB3wVGyaQ=;
	h=To:Subject:From:Message-Id:Date; b=QJX57G+E/238mmd3ywm5F2F7XeTKw9HCgk098FELLaVMqCC+qoa+ADm4OK4ra1WfWHv1oClZxlwaPKoZSUEAdHZvxZDHPEnZi/nvoP+qgNOwEYtv0yk78gZR+lq4VzyGU17BlFJtpSqFz5+ySPnzRwUizWoDTW8PFm/T2vHGDNw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=fwBFWnbM; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="fwBFWnbM"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C3E3EC2BCB4
	for <ddprobe@lists.linux.dev>; Mon, 22 Jun 2026 23:46:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1782171993;
	bh=6HoZ4jPIRDVcJJcim9u76qCYsO6rgxjKW7kB3wVGyaQ=;
	h=To:Subject:From:Date:From;
	b=fwBFWnbMxJBQF4hmCvLJl0nyoHOvFZdW3EcKgmrjm2fYA/XmdUhEBJjPWM3TyoE+M
	 9GZeX++4o4oXoH0hf0e77UN+sA2bvIkzZoPxBO0KPJPWh5HhnYhApmhwQg4QXSprpR
	 n5HK2sPGf3HX/v+acCCEsCbS9eZa0WDfCgpfPN9iD7oF7vv/YVlgZNoq5Jj0l0K5y1
	 ynnGG3k4mJlp/NeyuxgDSiTBHqf9D2CuYtFm6wEUr7svvMPaeJiMoCtgnKhmJZhzKW
	 n9cJi1KYRaAmhVq3PlcGZL1R/wyTHvL+DZLMN2qpnR7x56xi0l2Zviu099jhNRJxa9
	 6FvXbYpv2gw5g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A9B83CDB46F
	for <ddprobe@lists.linux.dev>; Mon, 22 Jun 2026 23:46:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178217199368.25088.12964084205742220992.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: ca4b8e459f53038bc3c3b03d29867e09d26728660fee83f06d372038fad9e73e
Date: Mon, 22 Jun 2026 23:46:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1782171993
