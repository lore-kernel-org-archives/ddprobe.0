Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id E45762F60A2
	for <ddprobe@lists.linux.dev>; Wed, 14 Jan 2026 02:23:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1768357434; cv=none; b=sFBaXZF8yvTdqghw4bHZ5wH+sbKL/RZaTqVL7Leohr8dAk5zuBd7emSsj9gIT0DUQ+eFsEFwIUt+NK2+7jTN68gwp9Q1tho42FT/uI3HK0V/qd9AX7SSVkt0g/4LsVHaLVSqrwx7cKKHCBfw6XoMEQQHYeO8YTgqdIPLeQurWDw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1768357434; c=relaxed/simple;
	bh=O5wi2Qt5W7ahjIPpqJ/YiiEehyXx/olffw0T/c2kMjo=;
	h=To:Subject:From:Message-Id:Date; b=bjGe4ZsIm8lKXdk1UuwiTnOHfCx8mdhcJ2Qi/LiVGpiAve/XHaUKFFPa0AfFJNxRMFqNiVTLUnMqV3lp5LgHWA3VQVuMDx1yTsJLYG3dN2L0H3bZwAa/Zit9l8kq+hysTyWksHv6NnJNrheclPS7SZ4YJTHkmmADpxxnxLwnO68=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=N7p2H6I+; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="N7p2H6I+"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B5A7EC19421
	for <ddprobe@lists.linux.dev>; Wed, 14 Jan 2026 02:23:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1768357433;
	bh=O5wi2Qt5W7ahjIPpqJ/YiiEehyXx/olffw0T/c2kMjo=;
	h=To:Subject:From:Date:From;
	b=N7p2H6I+oHlZ4PyljncOntQlRpLLe/a4KpdJMcZlJPA6QFIBaru9KhCVauRXENqGY
	 MmQgWIJyRBGTajJTe8TxN4HkT3wVNqT56ItqdDk3t5bicErIItrQ8FDMj8e+gRHgl1
	 EgtGJif/euWLzQfF/CmC3EZQ0Qmm+/aogd81iKM2dVz2gtFjHhHs6aHddIEo781iIc
	 dqlchldFCXCGgIYuYSlV119cBT1fF9vogLhJP8RRD4S/4ZPsiOXzOREI7b3D6EV9vu
	 LbSj2YjWGL5DAMr66TOc8MhH/Oc2pipGaMi2aiOoyNrm/lTi0sVbiHkLHrl1K+L0no
	 B4zT8NcZsz23w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A0C48D31A06
	for <ddprobe@lists.linux.dev>; Wed, 14 Jan 2026 02:23:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176835743363.7827.12230277797098091380.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 435d5a189f1e8e2be45206e9f615abaf84eb9a5812ebf78112fa3a11c34fb3cc
Date: Wed, 14 Jan 2026 02:23:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1768357433
