Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5D591136988
	for <ddprobe@lists.linux.dev>; Mon, 22 Apr 2024 15:00:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1713798023; cv=none; b=nm/GbBdwZ4curqLl/P3lkmYHxnF0gE5Vm5LeozjgBwF3oiEVih1IM0lZ95lat5G56zdTUjdPb1v/9riqjIZjpu2UgE3Is+RTa87t22fAXEi+Pty9gz/pJ18vLEdIHguwqinQstGiBW0bXR21iLRA7pfiHp9EdwjLENweFLaAxw4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1713798023; c=relaxed/simple;
	bh=8oM8j2/RAoJh7QgOtnOhI8AyT14IS2wa+iOOU0tVkz4=;
	h=To:Subject:From:Message-Id:Date; b=EM2rhxKdLi6BSoeKClaVejxOvIi3RYyHdthQsVoxdPWaaTM8FXhy5Ra82+CN/sZkoskBA86UPJyZDt9auNQf593y/XC2VIQWbIC0g9jCyvAmoqQvLBTm5xvRZXrRdNeT2T0taMuCMZE0t9vJwoTbnSxu324jgcf0kgQ/fDNPyBo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=sQesptDa; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="sQesptDa"
Received: by smtp.kernel.org (Postfix) with ESMTPS id DBC61C116B1
	for <ddprobe@lists.linux.dev>; Mon, 22 Apr 2024 15:00:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1713798022;
	bh=8oM8j2/RAoJh7QgOtnOhI8AyT14IS2wa+iOOU0tVkz4=;
	h=To:Subject:From:Date:From;
	b=sQesptDaJmNxtwDP52tQJa+T9gUkh6I3iiBpUeyp0R0TkwHPl8LqHDFKfbEerIcJn
	 1jr5rxm10EwBPMKrf7p32QbYMp2rpeYmCzvJ4NpgnIzS5jub7E/cO6VX/mub+7+uXq
	 ZGcJ8v3N0k75AFWYXgy4i1muoY2rFQul7s5IrgKUrkWfln+vI/KF5hSdKA0xjI5q9h
	 BmylabOY5y3ygZ7d3BLok+e5M3NhfAaaX5EnoBmgJ/6BE5PMgN3qDz/tFOvEhQPKld
	 V6K2qKejiewOZPSJbdiDd8ZF9LhZwOOWAAWJiL1onkIebjnFDmOjD0BQAQx71gLdkr
	 ELVz2NpIfDlUg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C842EC4345F
	for <ddprobe@lists.linux.dev>; Mon, 22 Apr 2024 15:00:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171379802278.26168.18247455165697058387.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: ae71288bad52531db1260e23f40da7f3355614902040b948a772b562f40072bf
Date: Mon, 22 Apr 2024 15:00:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1713798022
