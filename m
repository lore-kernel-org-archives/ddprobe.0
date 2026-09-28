Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 69717451984
	for <ddprobe@lists.linux.dev>; Mon, 28 Sep 2026 08:50:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1790585434; cv=none; b=YgXJRCTbrROx/Df3LAHJfhHmQdWFd5UDBUWL60SaK8ommhQQDJ9gP/naAFUXKtxR9urgIc8OXMsfzbmYOx5NgsvwlzCxDGY2LoMXMfuwki/Dvwyb8Aje7vjfOgQ+e41VtwuTs8w7dneHdqV06NAJTuB8n8V4NFH220UCAhtfa6s=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1790585434; c=relaxed/simple;
	bh=wMLoh/nHNSl4at0sHgRdcXx+iyN5TYShXV7AoXcYBiw=;
	h=To:Subject:From:Message-Id:Date; b=Rnfweivn3J6v6dZIe9dVI1M8p6Hjxz5/YwjyMIaAo/8BBk/Oq6HAHpzl3RlvMx4OaFJHwA3IB3KxArBAqcWKZ7sGUICeHJMKXzR3qnwn/70aU6BKc7uVYQ6tjl/pDUP7M5ntIPVII44KVzlwhnNgJZNqw3wvJDZ/22wJDJshcGM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=FpF5tIPA; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="FpF5tIPA"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D6DFEC2BCC7
	for <ddprobe@lists.linux.dev>; Mon, 28 Sep 2026 08:50:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1790585433;
	bh=wMLoh/nHNSl4at0sHgRdcXx+iyN5TYShXV7AoXcYBiw=;
	h=To:Subject:From:Date:From;
	b=FpF5tIPAjHBuAmTQNxzzFaQ1k3qmUrFocm2NipEQtMP3UVRd23oxDn/Qx/hw6g4fa
	 AN9VHQTKiTJb4zt4rxLDL/yj70wXiVYyLPF/JfdJ8eUDbT8Xuvv1V/F1ENy0/F0JNB
	 Kppc9zxT1lnzVPaDsH/8JMPpcDwSmQJkXGvvi8fyYv6aWM8IFbznQaeN97dgzdGHaO
	 Y5bSQKOvlZKvgE1PMi3IN+fi2zxxBXdsgyGbq7MTfdRYsiegDK0EzbaewSXgFMLF3Q
	 02Tlz/rObW7naqaMcnemV0S8PuWcjpF0uQ3i61dcLnlNd9EgH31+Z5Gt3K3ZIhQwye
	 GncO3zy2NG23g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B4793C9832F
	for <ddprobe@lists.linux.dev>; Mon, 28 Sep 2026 08:50:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <179058543372.8532.7332164312407414997.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 9996f6b23fb10fded1721382a9bac150f0f9b2c5d62f4e924ac213a04858d501
Date: Mon, 28 Sep 2026 08:50:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1790585433
