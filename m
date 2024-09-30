Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3B3A917798F
	for <ddprobe@lists.linux.dev>; Mon, 30 Sep 2024 23:15:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1727738154; cv=none; b=Qa1zwur/0251jOqyEijfhEkcLoefgITcEcGuZukIgNKHRMIN2VTEf1PGWsoX20rkR/qZU3wqyvZ5NDqPXUjBbpEOCtO/BzVCCU4Mzv5CV3d9owTpdGVz0SHXbJ4DmNUsoYYApBcd0LMuc0/kJLfJreTZJhA3Xv7yTidRJA7aRpU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1727738154; c=relaxed/simple;
	bh=IMRBfpG/It6CSYZ0ak3IUmoWyPeOvHuooNL4+sigSWI=;
	h=To:Subject:From:Message-Id:Date; b=GD29rR+zo2l3Q5ggDL/01pPqEF2toliEakUnb7UFK1xHOUAV3c4wDYYV3B29CTNlVTuNU+J+e+g+aExk76EHKfFS9Mv3AS42bTOsii4ZLEmUj17WgYPIdkm1OhoaTz7duurVziiTGMKJvJ1MD4mqtW7uapf30FOYFauRO2k+Mb4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=tmOtOqI0; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="tmOtOqI0"
Received: by smtp.kernel.org (Postfix) with ESMTPS id BC8A7C4CEC7
	for <ddprobe@lists.linux.dev>; Mon, 30 Sep 2024 23:15:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1727738153;
	bh=IMRBfpG/It6CSYZ0ak3IUmoWyPeOvHuooNL4+sigSWI=;
	h=To:Subject:From:Date:From;
	b=tmOtOqI08TyIvAiB4flKXcDNn/XPGXvmBPxuKmT5Hahc70ogRwY+K0apYNfJCCNuW
	 fK3yfCA+vrX/Ugoo0x9NUXJkBKy0EaZlCurxTPWvr/jsM10ue+NGYl6FbqjNV3S437
	 uNeny/YYlHWN6rDjTTNNG2TWvqlS/du7xeNHbMxNM351nKMUxaX0yL8jFtYkatQlOr
	 WcKwqrvuGiG73aDe6dF7DgZe0COK7M5ICADDG36alWkSrqipcUZyAcq0MaU73V301v
	 h/ky9j6NeSti3IgublYG3q3WZo7xw6tJmqAV/nQ9P5g/u3MX87h5LEScwoM/VNlx1I
	 5qaApY++znH9g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A059BCEB2CB
	for <ddprobe@lists.linux.dev>; Mon, 30 Sep 2024 23:15:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172773815360.24650.16346827715659868508.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 5777fd6c067358a391ef3fdee5b68111a9c895ca3ea689f971da3976f51c0c45
Date: Mon, 30 Sep 2024 23:15:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1727738153
