Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 41CE3395266
	for <ddprobe@lists.linux.dev>; Thu,  9 Jul 2026 00:58:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1783558714; cv=none; b=mFJcYRUEinz8mQPaff4yXetP47S4gq9P+1lLoZfkLKxbDks6RDg6Pn8LtGwBv4NwwRJXoqeyV2YBP+bhAT2nsPqmatwCaoxDnIErZGn7nNNIJ216aaTm5oy5/R4yooJi5DGU82+RJZAqOnTyD1fX+T1pIObFinOWTXaZC5mBLLA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1783558714; c=relaxed/simple;
	bh=2q7KYs7TH0i3U1VWpvq7cgmlOI/WXJZDfZ26Skl1rQ0=;
	h=To:Subject:From:Message-Id:Date; b=FnmkSbMUhVhBpiLA5/tPd0AjPeDe6XQEQcmy5YSaxA09BU+ca+ITYnt0s11FbIlN3IKYRZckXKdDXR4xGgQpfMGINVz+qt2VxWR7eiHQJMOz3quzfIFFTC/NGQjH5rpFaWh/OLBvT91V6uO6/UU8yiI8w86Z3zfepNMhpXzJo+E=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=DfSKNGgg; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="DfSKNGgg"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C9C05C2BCB3
	for <ddprobe@lists.linux.dev>; Thu,  9 Jul 2026 00:58:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1783558713;
	bh=2q7KYs7TH0i3U1VWpvq7cgmlOI/WXJZDfZ26Skl1rQ0=;
	h=To:Subject:From:Date:From;
	b=DfSKNGggVoMgCw1WpAORS7Q07DtMeMY8Sa3KAlircrg1zrk/DI4czZBK7JSwvifjy
	 wqHteXQRJeGEOMztUVp1DEJmo0W7nZMt6Qag544iu60XT8Q6i8TI/Lq8qd+4uRrwQF
	 s8oGEvH+8QVeZQaNW6lxCM6oWnfPT54cGhthtVndvE7g/vcNVY+eO2j2EgHYoCwsow
	 35db7SgRBgLJKn+h4VVryxRJgIBVQGzuOxedqLe88PR2MlNWLjEFq1gwihhEnTZeJz
	 nTu6CMHIw4BvlhL+apE/GTa4lZ/qGQ7X0CUuO1UIm8qbmhxM+7gc34VcoyqMVu50qp
	 aMKqtJhf3aZig==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A8BE4C43458
	for <ddprobe@lists.linux.dev>; Thu,  9 Jul 2026 00:58:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178355871368.22444.3875283125373248734.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 210218ec487e28d12f4dc916e2396a8475c8e09e63133b5adff9e468d3f7a288
Date: Thu, 09 Jul 2026 00:58:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1783558713
