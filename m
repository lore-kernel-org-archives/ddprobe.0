Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5D47F135A6F
	for <ddprobe@lists.linux.dev>; Wed,  3 Jul 2024 07:05:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1719990323; cv=none; b=btyr3NjbFzq58i/UcW4olQI2rp1X/y3WLySnG60aKoYZS52O+J84/MvCIOQXkf2gvyzT/mIg/3qJz7xMv3ZLYNlRi66N4B6IHNLJId9pfD4CCzTHZUUi535UTYZ4rORjnai4BqBkY+BDx1iO45PyiFOHfuihJYNs4kPdNHvHkzM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1719990323; c=relaxed/simple;
	bh=+qCcGgp5LgCjHSnxS7VT2ikGXI6grH2p6rzWPCni8fw=;
	h=To:Subject:From:Message-Id:Date; b=Mo/Si+aq3ZUyWSglXeZFbv1FFudQ1gDLf+ydjfJXKUpm7dOxNK2EiFMiOWZhJ/1ti4bgwc+olzmPNedz3/CS9Mi2YPrb5qS1frJopxRrr3Wdk2iIT9qvmPi5VKUd2ng2thI1seRy3ld2E3E08/0tz2DQcuCWjwJdqy9pDYOUyhY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=VFV40EMi; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="VFV40EMi"
Received: by smtp.kernel.org (Postfix) with ESMTPS id DCE8DC4AF0A
	for <ddprobe@lists.linux.dev>; Wed,  3 Jul 2024 07:05:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1719990322;
	bh=+qCcGgp5LgCjHSnxS7VT2ikGXI6grH2p6rzWPCni8fw=;
	h=To:Subject:From:Date:From;
	b=VFV40EMiopy0pWuXuzg+JfhmjXCiMT0i8M/xDeSQShM+Ymwo3eRWxH3udLgSpzdqZ
	 yFicdQqcDpi/Wom8oMRvBD39KO9AGWCWcyifnB3zUGJ0emh0LBFPPDzY+uU5CDXmAH
	 HHke771Aeqg8oYpfKOGBARSVGghG+Xp/BeoTZ2t2GGgG4yWJyZPe+sqwczkOUQfTVF
	 x4Zog8Rb1LzPd/mEo9usmCl/mjAzdQ9dzo8ZVaIRLkiXb+3+ZbKRkEPYbRRubjvaoW
	 1faDdNSAZB/psF3L8WrF2zB7DkGbF40mvBavyRk+TM9kcTZJB9Mn5Hb89IlrlwxfJH
	 CXErPQx00ywEw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id CD274C2BD09
	for <ddprobe@lists.linux.dev>; Wed,  3 Jul 2024 07:05:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171999032282.26260.17452606618364346779.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: d1682e46a845ee639b2c8bf0721f5b5fff64bf5df67d5fcae63d1d927e1a1d54
Date: Wed, 03 Jul 2024 07:05:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1719990322
