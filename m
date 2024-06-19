Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4DD871802E
	for <ddprobe@lists.linux.dev>; Wed, 19 Jun 2024 15:19:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1718810363; cv=none; b=eP6LhJrE0sLq8vjEq2j1ddttYl8ZxLK/Mm7qc5kGptl6lSxd3CZrdHKgtm5UuKku4NNZFm84wjnPOd1LxLchbdeWVdwkUN9f8GlpSJpqMQLdLiaLv61sDu3eHE89U5y9hjPpsU2iotV1AQpjdtXj1ytrnG2MXYEacFu5fcWpdNQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1718810363; c=relaxed/simple;
	bh=KgZmVo7lysieYET39AmtLe3CBpYueZZoSn1yZwzqJBk=;
	h=To:Subject:From:Message-Id:Date; b=iRPSm2i/LeiBrsOmFSK1nD+WuW/8e84Y0YqzSaXu7Qn9FEqZA7wFNi6ZjDcL7XHthAgVnDiIIuYPQAa9yjKFnlXI7Dfi3BSBzldzFn/+lTzI9BIL1uqriIf3/mWYb+UmlMV86Ovkwfifq/6as2VBc6O6kYJy4Uw3Jv2/opJEwLk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=KS0XZ9Oj; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="KS0XZ9Oj"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D87CAC2BBFC
	for <ddprobe@lists.linux.dev>; Wed, 19 Jun 2024 15:19:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1718810362;
	bh=KgZmVo7lysieYET39AmtLe3CBpYueZZoSn1yZwzqJBk=;
	h=To:Subject:From:Date:From;
	b=KS0XZ9OjEWAuPH8WJS2PgQ0HzOHBWCIJY++jnNBx4HrAeLSUIV3DKfTAgP33Xkds/
	 3jkAz12RARFrRTgUic8BG8x36Rvca/BBkRMNjckDvTwPRoxLb+LjayiNSy+x6hSR9C
	 Bja/GWAIdy63XSslPlDEGs44uxQu7gpzoGYDBT4Q3Vlf7hrr3BdTpdWc5nv/sRdeDi
	 TVE9SeSiS1CkOyXCC2+z/5l65f9tN+OrI1P5U8E/X/BANZw+X5wWL62nMLzt/V5EA4
	 Sm8HVzt1/Q0mEAnl6XqqmPIM55+VnCHUFMYOTWTWOy4O4Kyv/mkUK/Y0Up1WfP9W+o
	 QldUTc2R/0dsw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C0CA0C27C53
	for <ddprobe@lists.linux.dev>; Wed, 19 Jun 2024 15:19:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171881036277.11431.8309956753171654503.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 1f30e98c9877e87f568bf904e9c4e522a32d1ae311595f5cca7fac0f5c175c34
Date: Wed, 19 Jun 2024 15:19:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1718810362
