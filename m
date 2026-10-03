Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 43EC523909F
	for <ddprobe@lists.linux.dev>; Sat,  3 Oct 2026 04:10:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1791000634; cv=none; b=L1qLp0GLDCA5378P0yl7rvBqXFM9g6fxLG06bNgMUgLe+8dxSvfWB2Kxvop7FkQeJHXsK4ViSPV+IIpJkgiu8XLamn4ov4t7/4Z07WvKRXSBYzjDJLVvcq7AOoXdSl/b3Tv4KeDkP4FO+5jl08lNND6zAoRupfumPZVdcC+eCoM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1791000634; c=relaxed/simple;
	bh=BcHUBx0KcLFTW4Uls3QYmdYdIslLJ3skdcC/WlHOTsM=;
	h=To:Subject:From:Message-Id:Date; b=ip+94jK/E50+Ji8HB+iQyNsF1wluKJQ1O2XEFP6LyBOVBIXiNjSWLlR7fDw/Q7M4M9xBO7BLBcbovXjYvncIrAGD9Rfx2olp5tweJPH2cJXWX/F5O/TuAzq7GAMqQ/FLEs6heZZgB2ZJ9yDFcgxojVuVSDr3QqIY7OEFF+4Hezo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Il24ltgV; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Il24ltgV"
Received: by smtp.kernel.org (Postfix) with ESMTPS id DCF09C2BCB9
	for <ddprobe@lists.linux.dev>; Sat,  3 Oct 2026 04:10:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1791000633;
	bh=BcHUBx0KcLFTW4Uls3QYmdYdIslLJ3skdcC/WlHOTsM=;
	h=To:Subject:From:Date:From;
	b=Il24ltgVLbzeeO56C6dY2mFwkoeBcdzlnB44wHuOv7Odkug0Pq4Toxci1C8WYQWtb
	 Z0xhD+YAeqV+n7xWLA5pjPUlNL1mhNRK1I4eepMYfj/oKfqr0fLFyruFSeSmsENz+x
	 971RCeezxKXzgk/a4lA0S9QLDlwDUWCArAOxzFhFRmo2x55xKkfPW2WNCKvYtGir7t
	 BHIdcbKf1UEhpU5NLTnm0fqzfhY3FJVprCJoAjkPRk848ZW6b0X0Iw6hfEAXCcPIt4
	 BBY+5+ffgYmWLD3Ylip42rxI78T8VB68mzCt7X3y2vmPlvzn+ACNMzICs6fNHmKRyJ
	 AyNdo4jQOWeHQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B53BFCA5FE3
	for <ddprobe@lists.linux.dev>; Sat,  3 Oct 2026 04:10:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <179100063369.32460.4192422271575321189.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 593c8e54385ab81afe15074b6712d755fab1c017a2c74f5959c59e28d97017ec
Date: Sat, 03 Oct 2026 04:10:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1791000633
