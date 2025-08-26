Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 378E930CD81
	for <ddprobe@lists.linux.dev>; Tue, 26 Aug 2025 20:39:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1756240794; cv=none; b=qlwGJD5YUBnwtW0qUL87hqsnidc05rOkZ6lfxu7RbgjJohCqqpiCUpwnFIsToVOPi6BSCTTodxjEgdFhANVxuJoaT8WUrbVzze0tMyqi5YCocS/FILBuAxirfZhvAgj4Ze4ABzny82TFvD611/xT/rnwH9xx0j/FFBujtmSUoC8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1756240794; c=relaxed/simple;
	bh=l9hC7YAfZTUoxh7MyJOG4YIVIyqdUDOjC2mlvyY33Rw=;
	h=To:Subject:From:Message-Id:Date; b=orNV+qUcgOmvVCw31302yy23ctuZpjmZ1TLxvL6AaPJyXdAFsb6yrWU3NL/yh/BmAE9RLojWoU4L4Cr3rSeS1uV0FXdAkH+K3BXzay00en5srNTYDbIZKZrWdKW/78c79C+B08trHSEV2vXSgkL9Xp0WyfoHrnnMYWJSOP9J8+E=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ds8G1yVt; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ds8G1yVt"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A0A57C4CEF1
	for <ddprobe@lists.linux.dev>; Tue, 26 Aug 2025 20:39:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1756240793;
	bh=l9hC7YAfZTUoxh7MyJOG4YIVIyqdUDOjC2mlvyY33Rw=;
	h=To:Subject:From:Date:From;
	b=ds8G1yVtnuhesqsT3abe93FSMY7J1+sB5MUL8g3DAIwBrAESvkdSS7iwzmYPQxP5D
	 Qzom3EuXnxXl/i2ynmUZ1b1kQn0+wnoWIQd4eFO/XSsxOIKzNKOQP7B4uzxHeFfzZ9
	 OTI0LeJLRo0xRmV7Iwj6s2rc93IuBQ30meR3fNMD4E+g7DriK9/0K1Z4teNGmKyH6Y
	 JLpG9Y/eSnWRTotnlS4EYafpObMbAZ3sEdejqqE1ESwBaOCPC0hVLJzUEbrjryD4cu
	 STxWXXGJkOjTarFe5SzDV/PBE36vifjnsR+WqatxFYAB93zMAbhTXhFNrmNXINJThm
	 FRLMdE5q8JxTg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8E4D2CA0FF0
	for <ddprobe@lists.linux.dev>; Tue, 26 Aug 2025 20:39:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175624079357.11148.5348779979927842311.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 5c8f7f059aa847bdc578d0c6218804cc86ce1e6315dd86d4a6ad10401fdb5815
Date: Tue, 26 Aug 2025 20:39:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1756240793
