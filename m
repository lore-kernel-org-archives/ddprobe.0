Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3215C290D8C
	for <ddprobe@lists.linux.dev>; Tue, 17 Jun 2025 08:59:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1750150794; cv=none; b=N+cGBmNY39FNXht4I7TINYr0XuVk2p/Qj70KfGyZ+9heQm59e5p4v+Qe0/+tbGtemMa1mZcnF9G6i06itrg3isZaHzPOZTsF1ulD2QTrmXbtMDO/LHmny4EN6j7GTDJ/MUcxDv/QRtP4aLqbsPQ/KvjX3/ustM6lYqwVm09LXNM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1750150794; c=relaxed/simple;
	bh=EIIKLoQcG3JSyrmar30RxGtdy+xG911dtJed/NDJaeU=;
	h=To:Subject:From:Message-Id:Date; b=sIRamd0EjxhAdBTYp5LthGkJR9Bk3nZgUdZnQIya7oXDeHhPIQNmbtSoa/QzH7Yddgp/06xsifcUs4Lh29Rdcs60FPKClE9Cb2R0sXi66fQrwytD4UTr7tS/hzO72IIXq5wMYIZervAu7OXW0B3TN59TNdKsorKlP8stgtj5PxA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Q1ICSPCE; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Q1ICSPCE"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A1C58C4CEED
	for <ddprobe@lists.linux.dev>; Tue, 17 Jun 2025 08:59:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1750150793;
	bh=EIIKLoQcG3JSyrmar30RxGtdy+xG911dtJed/NDJaeU=;
	h=To:Subject:From:Date:From;
	b=Q1ICSPCE/DAIRt5Tsr+Gd+kGeWfQWz8WqtET7Lmii5ovjolrFck8SDQaUJRzvybtF
	 E68Vn9qRFzZjxtEQI7QzEjUKK8SDLntpbxdqCcpgHX3QAh0PeNfh7faCoGG1HOvFDJ
	 juQbfnNyRn7XYiqRTn+WZk5FHT9MuKiPFwcszFSuJgNPJRidp0A1JCiqoasrNlXb+a
	 7Wu89YAc7qqiSYEmC6PIGs5/tzniX5vjYt6xTP2oDqv0sGqnrDCLwwrCZgD2rov07G
	 M7mSnWq2YOM06VKIUwz5kwb4MZiAVMQIfOQecOwL/tYmKqDoWHRclToT416zS9uxe+
	 IAji9D5hkaPWA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8E718C71157
	for <ddprobe@lists.linux.dev>; Tue, 17 Jun 2025 08:59:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175015079357.27912.2865749880631894750.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 52057f0497b0bb076a8a098dd371a1b33d254a85ed8ffd8c7774252fdb7fd4f1
Date: Tue, 17 Jun 2025 08:59:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1750150793
