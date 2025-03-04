Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 446BA73176
	for <ddprobe@lists.linux.dev>; Tue,  4 Mar 2025 02:18:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1741054734; cv=none; b=fjKfh4RuzbFDzRQtglvQgrHfrpr1sAHPye7BpuU9Wq8lVm/1MNHfm0tjdhcl/xpm3kOo0NKpcYnXJxnhBvqQ/chZRh4IEJOrhJ0hok/SOCX48ebhkJAI74aOiYYoD2DHflZbXnuVSkaYhdvTTPWKzVArLFCc1WQZKPCJbVXVWFo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1741054734; c=relaxed/simple;
	bh=O3F8CQ4a4wY+hx1B9UIyKdZFeZJmeuH4Yub40i/qYl4=;
	h=To:Subject:From:Message-Id:Date; b=FORnCwSza5HCVhSIWBc1VCIDJe8NY7CbCLaxmp92vfOylbZTs6EWw0SlB+6SpDNIVVta+xWjUDlL3phezdO3tZyj62irtPrAL1tnXDdCCeTYUjP9zEJL9NgSwZv+LDFmMOIKuCfPUmKUSFPuzi9r5uBHvwiX6MCbC6UiUP6MryA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=raZVVVSK; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="raZVVVSK"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A742BC4CEE4
	for <ddprobe@lists.linux.dev>; Tue,  4 Mar 2025 02:18:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1741054733;
	bh=O3F8CQ4a4wY+hx1B9UIyKdZFeZJmeuH4Yub40i/qYl4=;
	h=To:Subject:From:Date:From;
	b=raZVVVSKks1TGSYvfCVev9X02m3CybK82mwu+leOlLzJOdxCrrLwXox/uZ227QvHG
	 EKuoGylPxmVN+jNzaSBt6BjZzM0qV244HRWf8wkQNQpn/i9Paw2FaGK95kgMciwjCU
	 QVcNipRZe3nhrIg9Mr7/7K0q0lR51nNx1JwrylzMBpKT/FzfUObCEytduEOApoBz7R
	 Ogd+V3TwY/UlMo9GqE90KGJ5m+VZZaJSv80lbNIzvmPVMez3y2/Efe6xpePbtCPjgW
	 Sz+QUfJLJcOEroNHBoxt4jyrQWMauWYXFXAtll9IaA9lZ1Rf44XGYZi4Ke/YqzB6Kf
	 kJb0Op4KK+VKQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 95609C282C6
	for <ddprobe@lists.linux.dev>; Tue,  4 Mar 2025 02:18:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174105473359.27867.4955818584309175952.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: c128b699e4e0d97f9f6592babc576428afe751265d25288ab4e46a98237aaf56
Date: Tue, 04 Mar 2025 02:18:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1741054733
