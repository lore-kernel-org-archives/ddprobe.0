Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 136C5285056
	for <ddprobe@lists.linux.dev>; Fri, 30 Jan 2026 17:33:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1769794434; cv=none; b=IyIL5g04vkbolPribTh/9R834AjQBssQmbO8oai8/KACWXThhw0vx0aPV/afsnSRm3bu0Dp1T56pvu3mNQll7ne8LQs4B+kI+aZMsh1/ajTXT5LGY23Re6sG1CBTxwJbAQzBSKaywDAODyiQbYIn/yIkF4g+yDUzBpDT2n4gUUM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1769794434; c=relaxed/simple;
	bh=70mshkHxT3/lhqTGHF8NDGiZJirwDZR3olOxXh4INDs=;
	h=To:Subject:From:Message-Id:Date; b=noREkCR5reCsvgTekqPT/gTqgQ122TKOp1vyrUvyiqt0ISvutgXSWkIReol+WU9+qEMXVamu3GER4zUuLvLyt1mdt0GTg/6+ZFSiqZZL9FlDjrrOHBmzb8I78bYx1qW3DyTH7wcsdKXzB6JvapCK7zkQkJYDHEnbapxK1pe08Tw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=F+HS5c0z; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="F+HS5c0z"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A9EB6C4CEF7
	for <ddprobe@lists.linux.dev>; Fri, 30 Jan 2026 17:33:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1769794433;
	bh=70mshkHxT3/lhqTGHF8NDGiZJirwDZR3olOxXh4INDs=;
	h=To:Subject:From:Date:From;
	b=F+HS5c0zGqZxKwkVKfjiGPq6mF0JkjVnHnHrTe+WgIAZn63dYxEuwEgpbcxgLe0QP
	 oeoz6I+9J34egN7HZJzn/ZcUavWnjwf/mEmX90MvlpYLfsANbv2Tx9CVRbaNS1lzjR
	 GSwSG+KxZxVYss6RkCZQ/F+aPsmU6DOAJ8xKKp65gw1aoGAQyfmgaeUceBZ+1z28RX
	 gwfWH595o5GVUwEQYITQT2Mp2D87VNAyRMyPSfx0WllL/rajgSCjGR1SzHKwCoQqKU
	 LfNdQy3Uegoce575XFgNelHZzIVCZyVls2+55Slb4tKFyRFABP5lXxpNZCyo7uOVx8
	 rpqcnVfQIMUwg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 986EBE6BF31
	for <ddprobe@lists.linux.dev>; Fri, 30 Jan 2026 17:33:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176979443358.11937.13700006025689358414.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: a4a62d8ed5f66280896c43c7aea258160c87f8e7fd54db3df63a155b729e19bb
Date: Fri, 30 Jan 2026 17:33:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1769794433
