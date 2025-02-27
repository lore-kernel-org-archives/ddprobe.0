Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4267717A305
	for <ddprobe@lists.linux.dev>; Thu, 27 Feb 2025 03:08:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1740625735; cv=none; b=r+vAzbkNyICGZHm/EzAB6DGaokiesKS2FRzwIPHtWmu8lvhtnHxf9/jEV05Ma5CmK0AhEnTKNluUfu57uMA2y00v8hnvmys+kcEe71veTjqzhZgEmA1cHUMFHCza8Olqf58hhnQZXxBXJlqL37lT8f9f1rPkGi9ajGm80XEa5go=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1740625735; c=relaxed/simple;
	bh=GxMgziyDVrQZ05h+hmI7moo5fipvXw6FwNcHcWLkOxw=;
	h=To:Subject:From:Message-Id:Date; b=pisTaEqRRGbkp7d9JbExarIXKix6XNYUDxMKnKD5lvJyQ604gmWF9COWovnyUDe14EAyHn+Qy5QGKJYrDYL2H5bs0M7VCApYaADeI0uMo8fnZpVXk5egmJaixRwqUILHoLFdXRDOmzu/Q8Seh5syt3YM0v1Oa0kPPfpIuwDWhnQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Gbwa5sLr; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Gbwa5sLr"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AF36BC4CED6
	for <ddprobe@lists.linux.dev>; Thu, 27 Feb 2025 03:08:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1740625733;
	bh=GxMgziyDVrQZ05h+hmI7moo5fipvXw6FwNcHcWLkOxw=;
	h=To:Subject:From:Date:From;
	b=Gbwa5sLroI+oGcEYKsVxXcWmgsBgZz9KvsqLVmRWyXJaDhEeiAXfg7W9cGvJrpkSO
	 cy3+u+GW15E7D+K74OaBFtYjxb96DJOm5Dte0yTWcKHZPCG4MMs9w6az+GJqPo/MvO
	 nP9CzHsiqWPvHKlsZzNpAKiY+wXg/hzjRTpnCSvSmc7cvYB0Yci3Di+9TcvYzFWJLo
	 NcjZwBAZ0IxvGwI+9ou2gKFDwUlPQac6jpOJ8sIMk5T/a1z1ReSIybFAALPmnyD+kN
	 4jsWvn5l4coBNcw6+Z6GYxCUMIWp7QliDk5PaqJNcCNjNdzh0wJqvA7DIfW/5IpsPD
	 yQ7f9gvrGYFxg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 99275C021BE
	for <ddprobe@lists.linux.dev>; Thu, 27 Feb 2025 03:08:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174062573359.28081.18330268036851753646.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 9e71a889e508941dabbbbb5a0efdd485df42e96aec5b3565d79eda92a69ed1d9
Date: Thu, 27 Feb 2025 03:08:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1740625733
