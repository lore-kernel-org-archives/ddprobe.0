Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0C31C31D39A
	for <ddprobe@lists.linux.dev>; Fri, 19 Dec 2025 11:53:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1766145234; cv=none; b=Hijsy+JlRMV/ggQbo6xosq+nqjeRfbKXt7PGXuQb/EJRXexabJ/wHY0+p1U0UB4+2aEy9yuDnsOVaJ9knNkzZE5RiXoMIElO8ntghREeMDhYIwc05t35cVj158SNc3QYgAJpP7XpZSI4XtzfPRsBBzube4nhIdr0+TkkYH3538I=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1766145234; c=relaxed/simple;
	bh=H0FQjVz5yXCOgiHnSNHjIqa1wdV9JFCGPDmfLt9hwcU=;
	h=To:Subject:From:Message-Id:Date; b=t62dAqVMmE4PAwHWbUIQNE1/xFDWWJJ72EbuwPRxqnA916VnwSSNR4vpqselHtt/GbgK0Ul9psCQ21EJbisiXsSP+Kjpkrkc4W8qetPp8HhABjlxVWnRR45dwNW1pnxOfnu5MOuP7opDHEI9ar2mRd3vg2lO1CoxFljXioS5yoU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=t4vRKXVq; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="t4vRKXVq"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9E5DBC4CEF1
	for <ddprobe@lists.linux.dev>; Fri, 19 Dec 2025 11:53:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1766145233;
	bh=H0FQjVz5yXCOgiHnSNHjIqa1wdV9JFCGPDmfLt9hwcU=;
	h=To:Subject:From:Date:From;
	b=t4vRKXVqrcVTVJJFJufxgU2gheBNSYdfhqAYJwv60en5l68zug0qpXkXf9i78cjWO
	 QWcj3TLuAYxbfRmVdEoVSrer6oxTk9cVu9zn4bJT6W3h1wL4Ie09nXClxY5qnA3r2y
	 XGfvkfTv5vM43fjJQjMrBgWTgX8vJnn26+UzW2+0GOG4y10Ww7uwf0WzY/5FOqA9SX
	 Q0zyqqq+aNGq0sBs+y1WibM8/5GFVGrKxXL4RR6Os/EJkVBdiUifqA+J3ZKBoq7xSm
	 w49GY20mPbd/5NsBIUyQ0lN8V5qUganz95DKVKcRZDEi9BDcm2p1Jbtn8u+Ocmkt+l
	 DOYOqZv0Yo80A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 915D3D767F8
	for <ddprobe@lists.linux.dev>; Fri, 19 Dec 2025 11:53:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176614523358.17342.8183981633365498276.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 5dd5eff147ad47792ce254d614382e27f6734906bb92ed89fd52726b1e3f5921
Date: Fri, 19 Dec 2025 11:53:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1766145233
