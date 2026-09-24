Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3F5A541168C
	for <ddprobe@lists.linux.dev>; Thu, 24 Sep 2026 04:50:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1790225434; cv=none; b=mD9eIeI9N4KZNF9xbt2lRK787SdWmBLvR3uxdGFqvDWmSq1CEN4gv5EDNHXVE1CmJAqO30xF6Tv5Cm4sW9QZvAjRYUE3M4OYv3azCmIsFEwn/kChupF4lRVOU729SbNPVcrBhph/TXhmat3CGCaLG7mrdSBopvYx0Yn9Zmw2qgI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1790225434; c=relaxed/simple;
	bh=jOW2m1/ApEFCMSqQ9STldm86tzZf2tQQcQ8F6KSCRy4=;
	h=To:Subject:From:Message-Id:Date; b=YSwbAJ9cyUf3L1QYCnR5MguX6tm22tC5v7z2pik3SmOSA0hriz6/HRMnKvnvGasZBStomjJqx6/+936RjSw10hEuaoKhoTwuS4gyDZwt8po80GKCwGrCEZMwnyZMldMB3ePA1/0Zhxn7netOYVXFpmZGUbDIQsgVKScE2I5zJTw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=haqajFYX; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="haqajFYX"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D400AC2BCB3
	for <ddprobe@lists.linux.dev>; Thu, 24 Sep 2026 04:50:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1790225433;
	bh=jOW2m1/ApEFCMSqQ9STldm86tzZf2tQQcQ8F6KSCRy4=;
	h=To:Subject:From:Date:From;
	b=haqajFYX2Z0XZ5+apyDbfUAMZrCkAQUs8OA6t+eLx1R+Hzl/mImHegrUM5pO/B5+k
	 5kEG7/GKU6pAdHkNZWp7sDMWOPRr4ynAu9pkQcjvDwb2J1uRry2xKxyU4EwseNLGTk
	 WYh0+CPPx6LR4bIsXJPGfslKM2eeDxhBxPjPL2EqDZhz0LJAUvwmjfV+rOo9bweHep
	 lZVKGaAL6ndxXFIRJNKCkFSi4LQllv+wEwnbEFBfPQ1bHQCFWmWfn/YLm0VMk1oLxg
	 dmtwPAJdOJ1NiHkgnG7huH9mGMdAqf7I6QSkSCcgccZfRiSVvBKFnc17j9jc85T0Kv
	 PwF94tZOrr9Dg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B1F2BC982FD
	for <ddprobe@lists.linux.dev>; Thu, 24 Sep 2026 04:50:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <179022543369.10547.5506716330151065444.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: bfbab4dd71620cbb6c64038cf7549b2dbb856df899ff9495f2aa7e8e1f6a9018
Date: Thu, 24 Sep 2026 04:50:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1790225433
