Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 53C6627FB18
	for <ddprobe@lists.linux.dev>; Tue, 28 Jul 2026 14:20:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1785248434; cv=none; b=jAOmoxA70DIpJ168dCZG6YgJ236jQz98xLyXFzdh/utFQ3vJYcmIH9oRG8rVIDBv2bh9V+rNXcJt3ToSeJcC3wlvVq4heX0B0O5Bf5CQbKShDl4Wvh+N3wlweEh4ZIqvExt6eD0Z4XYvCElRziAeX+lWKylLxG0ZfcPuX5hd13Q=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1785248434; c=relaxed/simple;
	bh=loxNxY8vC1kiWXIYPdFoW898AVPQM6gtAqKnJS1Ld3w=;
	h=To:Subject:From:Message-Id:Date; b=HKdfzPGsIkGbzB2JzYBTt09S5InGNkZBKyY4npUmeg8tB7Cb0I8+8t/3xnDacmVrwKnsOvnVM6XhWYZHynwwiHo08K53AH8iLXflmfw1U5tVD5VvwLGd3AcwXoVDm4Hgkuz1c+15BTLffSdlJJfdkc4NdzuhjmOM2+KoxqgmJag=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=MdRzofR9; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="MdRzofR9"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D3188C2BCF7
	for <ddprobe@lists.linux.dev>; Tue, 28 Jul 2026 14:20:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1785248433;
	bh=loxNxY8vC1kiWXIYPdFoW898AVPQM6gtAqKnJS1Ld3w=;
	h=To:Subject:From:Date:From;
	b=MdRzofR95Qi3395GNihbmHPiRi/PTyxRVSYA7IX9fW0H/M4mkkEOdQkFtqJLwfmyW
	 ibxHi1QkgaH4NwgFxPde6ew6ynvqjTiyw2zoetHUhMSRqAqN4e/Z9wyaARc8uo0LVl
	 8E2zw6kCyeUrOUNFMeEqZ5+BeXKEoCD/70SHOjC/xyMRkxeRO30bMWlbpBuDeY46tf
	 OWmHjyEM1SLZvvok93qBNd9amfGyxyte15nN1z54BkgAotg8kANkXjlr3Jhv4BUp2P
	 P6SCcPikb+4FmrT7dPHHzjRFDFPwEFEgoopdUda0yo7mOehLaG/cFJlC5QZUi+8c9U
	 dggJsjy5ZmlBg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AE0DAC53219
	for <ddprobe@lists.linux.dev>; Tue, 28 Jul 2026 14:20:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178524843370.10047.370212401873106560.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: ca97d2e5b40c18120b136253e843800de121ac71903cce300ececc74a06ebab7
Date: Tue, 28 Jul 2026 14:20:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1785248433
