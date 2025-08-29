Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 28BC519047A
	for <ddprobe@lists.linux.dev>; Fri, 29 Aug 2025 14:39:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1756478395; cv=none; b=FgpboZR5va093ghLxf67xsDDmhrH+4u2FvlHAGbci3rgzloedoCjSkX3Msov5LuzqPYFQ7w/mDciS0zAlhOcmYwkHOG5KnNBj/vnSoQtEzAGHYEJwZTW8JV1RvYjWtz1U78MpXPVOAxvuaL0kXmkB4A7YYA+SALQ5ypuGQHmnm4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1756478395; c=relaxed/simple;
	bh=H9zpDls1cGCrjpXyMKNCdNQcyxyvmx9HpRXmOuMar8I=;
	h=To:Subject:From:Message-Id:Date; b=s0Ew6CJ5KUgGC/kJmqB8GX8ttj0JQT5sWaR/v5W5G1y7ZDYS+8th/TDwDxMzWOizMOh2Hm1J1stdccBRk3w5Co+DvLJrTmDurV+Z3yinKK6j2dZWHpO7wNXRt1gNz9ds0S/qVRCnA6HNgR3aylMRtDvkAO93OGStQQSNZPuQrN4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=tB4z1/zn; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="tB4z1/zn"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A2478C4CEF0
	for <ddprobe@lists.linux.dev>; Fri, 29 Aug 2025 14:39:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1756478393;
	bh=H9zpDls1cGCrjpXyMKNCdNQcyxyvmx9HpRXmOuMar8I=;
	h=To:Subject:From:Date:From;
	b=tB4z1/znSQnKb4OgsVpTAYX1m3Gpa+fW+bI51CMZwMy6nN8pvR4EGaxZEAl1ZFBoi
	 LcqdTkL+wCY9gAdb3IziIFrAEa7AbKHSZOTGBSfjErMQQfkJRl4lSmZgcnvyKCboFh
	 FwzJd4beVjgcAgKYFypTEOBs8vxdQtbkhD0I2B6vXd76QYt8ZHZNtIlpqJpvs080+y
	 vGroScsROIPHNEzWqovSpIaOzD4Bl1RR98D8HV5qkdfr/vQMPej8IeC8WDaDxdcW4f
	 LUmT4AmK7uc0CD6zpANNCqYVfJD3hXKOcvWIQeseTSkEANrNicKznsmN+ZTfgfp0xi
	 BtTmQ0IY3BKkw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8FF3ACA0FF0
	for <ddprobe@lists.linux.dev>; Fri, 29 Aug 2025 14:39:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175647839358.4093.10407293076355118635.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: e73da33d759bbb8493b849b31540c0b7b5b2df74d341b49e614ccd882c9827c5
Date: Fri, 29 Aug 2025 14:39:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1756478393
