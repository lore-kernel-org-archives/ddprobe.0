Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 50B0A1C862F
	for <ddprobe@lists.linux.dev>; Tue, 28 Jul 2026 08:20:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1785226834; cv=none; b=VpoBvG9+ixHVbgaYrje8B88nmrvRNMA7FH5DXlbazzdSnFuaanBa6MPB3WaVDHdwxvw2+1gngk7yS7rPFA9Qz+eOYv1pzsHwF2QmRkJjUkQES9giWTEX6I97IsHg2IZ0PQmqYfdYsCxYI0dIEUZhu/5fQjkVp/trdslyVq+InrU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1785226834; c=relaxed/simple;
	bh=NSr9ih2DRvKEPL8tuSgIndypnsQcwkm4dCxaJyQesqk=;
	h=To:Subject:From:Message-Id:Date; b=eGL28NKDDt0jGs3VLp4wU8F5AbbsB2dx9W3JclXfVVzTaMyysPKJ+BdZtTlVWQr7087wLnC0qmPqOT9T0xGYMubB7PS03BM2ypJ4tMamcbyWYjNoqhsv/keBU76e3NQR6chQp1/VT2nAeoI4zcVK0SzrjfgOEMQljtVvEzfuQoo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=KkN2Ux80; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="KkN2Ux80"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D5C9AC2BCC9
	for <ddprobe@lists.linux.dev>; Tue, 28 Jul 2026 08:20:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1785226833;
	bh=NSr9ih2DRvKEPL8tuSgIndypnsQcwkm4dCxaJyQesqk=;
	h=To:Subject:From:Date:From;
	b=KkN2Ux80dyQYNTKuoXIPfCVyLf+iEJiUpSn1xrQuII839a2R4WxgvVitF5j6DWSBn
	 N79UR4sbMCb7pKK+PAbSBVYaH7yA/lehI8T/mG3GMZ1v0U+iqBO8YceaNoCHE7uTbe
	 I9hUT96dHekDwAoOPGSmIVyVkyZWSSSbI1mrH1gGyOEaZg8kr+FzgnbdJjv+u3XJPI
	 rDdWM2byhjUdndOuBM8JoSFQVX7UCHgqmGSLRaCwS9j6Hfznvay663SGLJlreCF5+g
	 p5UxSWtIIy1r6eIkTdk9MJcHCNdp3vR8g55E3KVfrRd7JqS4AYMaJ8Qk9OH0N/VmlD
	 utctcOrZs60Jw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B1D71C53219
	for <ddprobe@lists.linux.dev>; Tue, 28 Jul 2026 08:20:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178522683369.19654.17649685976564274174.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 259aa5b96ac31298f88204df0b5cd48e7e07dfc2e5f91487269d954547dd4b63
Date: Tue, 28 Jul 2026 08:20:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1785226833
