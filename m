Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3FE961EB5DD
	for <ddprobe@lists.linux.dev>; Wed,  7 May 2025 19:19:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1746645595; cv=none; b=SKavm2y6Bl5lks8Ri/Ls+4kGudPxr6mAmpuQbbeCUXpxQGsdykBUXwWc5EdWwvoHkrUOq1lTz571x58VyrPZXdS/KwmgeY3MUiGwAsPeNY25IPxkIjFhKwM3K/fwlaEXvJ8xsUmvdZJPZ4g5yHqHUMBHmlSuognDYtrpCpQg6Ek=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1746645595; c=relaxed/simple;
	bh=tEYytOCzdz7feAaWsTAerY2RFDJBZlLgt2vVOmvNnnY=;
	h=To:Subject:From:Message-Id:Date; b=cjTWBfuAHCVsmjVZn09NJg93JlW+Nr1PZZXKA+0spjcxeqaqVZufhetUi2x2V3GcyO15UzjocK06/m9cT730ac06Z39GTcntxN+GKCI7GuUvxwVKlWmhH/HqiytcXAM7T56MVQ7NZqqyAdP1NNxcsPY/OinDQCT+HZWBjXgYR+Y=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=gZt6jb8r; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="gZt6jb8r"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A8705C4CEE2
	for <ddprobe@lists.linux.dev>; Wed,  7 May 2025 19:19:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1746645593;
	bh=tEYytOCzdz7feAaWsTAerY2RFDJBZlLgt2vVOmvNnnY=;
	h=To:Subject:From:Date:From;
	b=gZt6jb8rxWbZIjpbWxpss0w26o6ibNdcRqUDFV+BsifKPlNH4tf5mQy9K5jgckAhi
	 /0vrDX6OLOOEUUANC/OqKFKxn5Jq5gZ0PkusyhJGQSXQREU9Da+wCOVlaPwO8+Vzei
	 hpS7KsbHYsT9nIdSRfpztYgV8zU4mAgviX9hUmreaEbW+wvKXbxTwxdnSXzTHV++6Y
	 RAqUbQ1vo0jVuVcx+4V0UoDdAprV8khVl3FNjRz6CLoAXx7djOojETg5sASmazRbVx
	 idVyZGJNfd7k+UaNe9CD30663+Oi/o48gQ6NAfcUpPvOVcgAKJL8CobRwXU+xYxF69
	 2lkcGGXlZi42A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 95353C3ABBF
	for <ddprobe@lists.linux.dev>; Wed,  7 May 2025 19:19:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174664559358.7328.7169138447473606912.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: b816b414c7de8198ce6486ca272dec3d44647b3c1f4424f3da71a0381f0dc6f2
Date: Wed, 07 May 2025 19:19:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1746645593
