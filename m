Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 418781A9B34
	for <ddprobe@lists.linux.dev>; Sun, 30 Mar 2025 23:39:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1743377994; cv=none; b=SA1XnlKZbUPfk5tmuaSbOdQZsLkfEDwM9X69tkj6HeaamMUVbjsHBca+W5qXR7rtmHoJ7Fj6dMkkOfJkWOwyvQNjxNvgUytNqX5JGS26gXcc/PCvBfBe8gynWo1xnKALlrOdKbzRZsRb9jr7g5xKT0DwgGgvLwGDpFM/5/XLJoo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1743377994; c=relaxed/simple;
	bh=Zj3hen/Ifswru41hNVoLC+HKHL6TzRhlzd2o3Kp0yAg=;
	h=To:Subject:From:Message-Id:Date; b=ga1r4dmUUuD79ZRtVsdrEIBSpgtbixVLj1hahyFgZvKb4cZC63ZSurXqg2Te+iTx66T0LzC5+BsczFATGXO9yLpajfCDgKWjWVuzMRJv1p+zLbfkCWleAqn5Sl2senshfUiTZKMSxuddd+dl+XPiUhobqTVp/yqqPke5x8aVXAY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ILB+Fw1F; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ILB+Fw1F"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B4965C4CEDD
	for <ddprobe@lists.linux.dev>; Sun, 30 Mar 2025 23:39:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1743377993;
	bh=Zj3hen/Ifswru41hNVoLC+HKHL6TzRhlzd2o3Kp0yAg=;
	h=To:Subject:From:Date:From;
	b=ILB+Fw1FVof0eWafyvr6dT+h9TqZcAvfgSOZlvqyAq1/XVcKzaJgL9hhmfGrv5/aP
	 1ZzSkYcKcpHHLAWd6esURomXmjT4L5GZNNxfnjBElBtxyQMeTN3xup7AAtA+1JaBVn
	 v7jrON2WZcv0A5rkujnSEoEj5586Ijp+rZ6slKUlRtkJhYe2w4vVqv1sPvangpOGYS
	 BZhpWHhAI26Yer7FKBsG4cjb6pW0uSVLHErwTeEx8/lQkMGfYgPSW7JzsB762SGTXZ
	 OpOFMzsWmnGYUcQkCCXiIMrZ8luWUIdPbiBjl141Km+dW4EqBDexJqgUvhRHDVXms4
	 YN2LjkdWyihkA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 99A66C28B20
	for <ddprobe@lists.linux.dev>; Sun, 30 Mar 2025 23:39:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174337799359.20228.1774445789388469351.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: c81fef08569b9d8cecfb300b0cd2493e30e318cea5e8411e77b85db9d38707ba
Date: Sun, 30 Mar 2025 23:39:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1743377993
