Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 148DA3054D7
	for <ddprobe@lists.linux.dev>; Wed, 10 Sep 2025 06:59:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1757487594; cv=none; b=N+loNfADlVNY84ig3tbJdpSEnFYqeDcqn4Llxh1QrLLfJggAf7+Cc9IIq5vgcaRMZYGKDjcfF00gr+80GJmivXgAx8ym/mIvxjEzp7Q3nxPkX2XKstxWfwqkwcEXKCixbD3XF8qteCfsWpqdamkUN9nY11KWhvuhft9yVZDScU4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1757487594; c=relaxed/simple;
	bh=cQn+vK0K0uRjOj5LgyBZ1d73YZZ6sdt8v3UHW5FrYCQ=;
	h=To:Subject:From:Message-Id:Date; b=n3SOrcWjT9y2JCfvlht6YOFf/7ThfuddVRFJ/q+x09XzNgXA+A33FOa8in68qcaHk1WuWXRxROJ3gPHuZbPqkFIDJIYHH+aeapploeIXpIi+BJm932akc1T9uYBeVfd0kX/36miEsa+BJeEQJXHMpK37VQzeGgSkOCXDjtkiLUg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=QLEKPQs5; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="QLEKPQs5"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9FB62C4CEF5
	for <ddprobe@lists.linux.dev>; Wed, 10 Sep 2025 06:59:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1757487593;
	bh=cQn+vK0K0uRjOj5LgyBZ1d73YZZ6sdt8v3UHW5FrYCQ=;
	h=To:Subject:From:Date:From;
	b=QLEKPQs5YGm+hS8+tztfzwmwu9YqUJqQmU4rbFTba3UYQkQ/47aqkE4h0d3aycw5r
	 ZDcmP3DjiPcECnayosJz+rKCznV7ogzHtL3sPwSc36CYdoI8JEXe7pQ/Er+QVmCSq5
	 bV4SgdQcRfjGjApABy1wHobZPJuW4f6qNrJFocSLsLzsdhu4iw49fkoAnOkEe682IV
	 VOqnHHlbklq0L+1xZvwuOIg1VQx+aQbkhwfYpsaFJtxm/8BRKR5ZtHpoyhy8XwgfOt
	 2tgAb4hSX0QqI7RAhHO0WQtgCRktEZu+EoOE64nrxDUkHhhsLLWOFiwPpPrkLh8LZ6
	 kBJ+R3vhUeE8Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8E3BACA101F
	for <ddprobe@lists.linux.dev>; Wed, 10 Sep 2025 06:59:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175748759357.22496.17179232584605394366.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 0bade3e1d2571b282a805aac0a3d1ed8d06e5ec13f5455743eaa4de3573f3890
Date: Wed, 10 Sep 2025 06:59:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1757487593
