Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2313E195F04
	for <ddprobe@lists.linux.dev>; Mon, 23 Sep 2024 17:55:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1727114154; cv=none; b=orLHlLtiqdlZmGm052zdQIQs/dNXzLNCzPDmCsLbOX7ViD85chjmm7coS05yBhDfcR/QW8SI9nytiSu1lb3c8v4mqbAqSJvIOnNFoi72sfgFPLbue56fFqOU+Y5P8FWzS6B0PDnyLQaAd4M8tSj1IsYmG/SQs6r55ReywTBrmtU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1727114154; c=relaxed/simple;
	bh=2kboLj/q2aTjXnXH9tmk6cXiqqjDd7+siJFTL7Kztaw=;
	h=To:Subject:From:Message-Id:Date; b=W98I+VUfBi3u8Uh+Uwz+7DQsCnGKrwUK3r491Da2kN5czCYpTcNVGZ/LoedKkahFSIksQc++pjaOxqngPxLwVb9yil31fp8t+hrzZb5v64QZWVbIA91W66h3hNkLD+wePpiFdbudiDkKzd4J0xOpQyv6PZxiNfltayMQ86TmS9A=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=chpI4oCm; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="chpI4oCm"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A4F70C4CEC4
	for <ddprobe@lists.linux.dev>; Mon, 23 Sep 2024 17:55:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1727114153;
	bh=2kboLj/q2aTjXnXH9tmk6cXiqqjDd7+siJFTL7Kztaw=;
	h=To:Subject:From:Date:From;
	b=chpI4oCm3EHf4CbeIGhprgFXa+8yb4oyn5bOdBOFkslRQTAUT+bRYytHLC6ajpDiF
	 ETuHzocEaE0xMY0aLSkW8vvfyBh5VevK0kaR23wUzSkyY7pnvgHPjnf0g7tg3CtODP
	 rrmoJcJZ51dCEPA9IgLqCM/IPWUlZ9f4xT/AcUbPKl2JHkSpeSC2Ft8x5kOECof8NF
	 XACjiCM2nuZiPaTmQ6nzBOLuCs0iE3EHHDCP+d/vresHaMchhCmGt1gCxTjm1p/vYo
	 BcLC9FlTDvfTXFHKEfQLS82cb96LYpb34MLg9SWQVqbzezExDty0Kdvh1di6mYJmSo
	 h1MD3gZ/AE4CA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 912C6CF9C71
	for <ddprobe@lists.linux.dev>; Mon, 23 Sep 2024 17:55:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172711415358.32517.11448881130953169226.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 481e706a03f74512c1cfa703d17f261393365718572662e39b9357ab2d84b3af
Date: Mon, 23 Sep 2024 17:55:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1727114153
