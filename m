Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2D11126E6FE
	for <ddprobe@lists.linux.dev>; Fri,  1 Aug 2025 15:49:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1754063395; cv=none; b=EaDJ7B79rawXzZC7ITb6JrpA9kXy5nsOsRE6xg785UNCOK6lbAQp9T18fYX07XdatH1TBSAfDEOa7lOT6NBYVcPggsez7voeAo+azUJIPswOofYiFfBNZKPcwDuFPM0h7GRnGVQj1h5d3Yb6X9haYJCqFhvpaM7WhJCvtcyf538=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1754063395; c=relaxed/simple;
	bh=bOmhjRxv5+Eqza7BtHOVVohXYFgmFeDVtOw9PfKgF5M=;
	h=To:Subject:From:Message-Id:Date; b=cs+87Zhxj4HlQrZI38Edeo07bjm9Lj2IGJJCasOpYTkT83hgD4Y0tK9Bht50bjI3kWBE9JuUtibm/XNyKsNlynJgNf6hQHpgk9w6YSBbGeGDViFhyRz283gKINIUWEKdAUSLbgNFQwK/IH6HTF8F9Q1p/9yJ0h+CVYYATH7CIIA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=TMvC55nz; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="TMvC55nz"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9F509C4CEE7
	for <ddprobe@lists.linux.dev>; Fri,  1 Aug 2025 15:49:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1754063393;
	bh=bOmhjRxv5+Eqza7BtHOVVohXYFgmFeDVtOw9PfKgF5M=;
	h=To:Subject:From:Date:From;
	b=TMvC55nzFB7GYjcFBJilEXalwuM/W1Sl4iHXGIPw8VoUfvkmq83BiHF73p+bPuirS
	 3wtHOCCTO1WK7mpLEYScd+YA5PJZ/gcxjceAj5uDAZSvJ01FB6BqrysCbuQaknKcWc
	 O1AJ556L4SgOnAZ/t85Ecijwfij6pPd5NivOa0ZX9KYWxZBDGlJnJpSrjspZiNRv2U
	 mzglD8boqNncyBjTXTUckgBqmluiOyqB571W/M0Do7M5KtQyXdMpRNLWLCIkMwe7jZ
	 9mdg+DSKStABiSdUIahR3O7gLL5zF564wP7k6benDAFwAjw1TuhVLvzs6rAX8S48Hr
	 VA6Fz1sDuqExQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9090FC87FCB
	for <ddprobe@lists.linux.dev>; Fri,  1 Aug 2025 15:49:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175406339358.27175.16282986459785678015.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 92864a8ca8d156876044724f4f01dc4df11fdc28b61820c421b65935fab6f3b5
Date: Fri, 01 Aug 2025 15:49:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1754063393
