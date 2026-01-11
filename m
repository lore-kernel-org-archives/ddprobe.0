Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0D1B6500947
	for <ddprobe@lists.linux.dev>; Sun, 11 Jan 2026 13:33:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1768138434; cv=none; b=ushsN8xkNnM1cvp2HMdNZ0TCoLw5iWPrsXwMfszsALdBBYK4gKtYmGguVuX7DSahLe2dQ2iNF7Eu6ts0PaUcI7trMdeHYe1BbBF4cPgBfHpBHnTFrezXlAMsxawwnRARNLLIUk2iA/sfPwux8ZXUC03fY/9DMWMPDPuzqktFccw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1768138434; c=relaxed/simple;
	bh=vxM0nl+6KGDYZ2HxoB7KMU6cCUhW7tsS40bDOf1k8Ec=;
	h=To:Subject:From:Message-Id:Date; b=H0eOfgBu7203SzqXSck7vnaahunhU4uXa7NwycX/IhXJaYU9iWG2eZgOnwTW6VyNJ2fNG48DDTwlZF9J6F53w550xMwpqYjpiIfW7nIiFF3cvaaZscVC5HExZ2nLktxaxRLRQetGOn4ntbr7fy0PRQQV4927b4GbE1NCnEY+UXI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=uCJ0Ra2l; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="uCJ0Ra2l"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A606FC4CEF7
	for <ddprobe@lists.linux.dev>; Sun, 11 Jan 2026 13:33:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1768138433;
	bh=vxM0nl+6KGDYZ2HxoB7KMU6cCUhW7tsS40bDOf1k8Ec=;
	h=To:Subject:From:Date:From;
	b=uCJ0Ra2lUXekLnXz986SVsMxEiKe5jJux8qhaQr8tvjrxy+X9ACWRlLpSAg//JtVb
	 x6eVIi9kF3Lmtoi50ujejHMwzc5ptS4ewKNWANVejRnFUEY5cR4S8YkecF5NdA4JMX
	 TaIVDmbf73D/I1FI52iE5ZFb/a76N+XDCkSD0JrnKhJ4V4hr1Vfj8WP1S+MPSEI0SW
	 mExEYSlNG/NdAJH+bgv/DQo/NpRwGgSDnZSV0R8EmqqaKB6Lx5csaE7+WX90UlpJbN
	 wY/EM83h7eFuM8b85yElqR8D85ZW4/kq90mkHR+OPuLSVfYnznxkvgAIkN3QsIyamA
	 eiWqVFIsz0Vbw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 95078D2502F
	for <ddprobe@lists.linux.dev>; Sun, 11 Jan 2026 13:33:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176813843357.10825.10654738443342826862.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 8309f2199628d8646830d874b9778e5df5c8030c7808cc7f05f6c38eed9d4bff
Date: Sun, 11 Jan 2026 13:33:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1768138433
