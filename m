Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5B5C2395266
	for <ddprobe@lists.linux.dev>; Mon, 29 Jun 2026 06:08:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1782713314; cv=none; b=dRreurO1G6eGYftULE5rq/w1bpYSfK3yjij6SGTBg/uf5CqoAXop77uxqEW4mwvDq3ztem89xWXB2nEIfWb+0wdAuQzPYn4qzb2GSwlFcrW/Gz0lWMQJb7KQvPA/cR+b9zNw9SDizMr9Bh7ivtBOwvHddej2ESNvBb6TNk+purg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1782713314; c=relaxed/simple;
	bh=g/fyZkNl/XVdckWiFWK47gtAikrQJm+4Ks1PIYUEG5c=;
	h=To:Subject:From:Message-Id:Date; b=YscW02R/8/iUCMSPYeI77gL18pV4VrmS+qw/TBTK8WcM6Gh17G50cJohaoK0Vt+58f0/9SXlb7NIylyf6gbqJxUBoSVdIEYAG1zADgab2kmyRBT3mcqoJV/CyJr9X5YejwIc8KqPxskySttsdqOnnpJsaoaSDZwD8Ved1Uo79jE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=MbRFpKYI; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="MbRFpKYI"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C4519C2BCB8
	for <ddprobe@lists.linux.dev>; Mon, 29 Jun 2026 06:08:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1782713313;
	bh=g/fyZkNl/XVdckWiFWK47gtAikrQJm+4Ks1PIYUEG5c=;
	h=To:Subject:From:Date:From;
	b=MbRFpKYIG6a1KVVVVGsb59j++cARwNGq316ivYG8NHJGaddgOVnKeOMkGGRKWyomu
	 XXr7TZ5eF8nZ0xdN7pzjaaodml/Wmylj8Etfbjj3K1pfa9iBmGN4nMmr+6AbXMlV1P
	 Cwi7xZ+1lcD1CA87KCSiyofS9t96JlUg+dYr24jTZ8nmx5EGhZi56EFLJH0zeq6qIJ
	 LVsQGyJNoPeg3Jr5ClkcwocaVD7EHAEG2YqbBASUxhOsmovRnrimnzG54tX5PAvzqz
	 wg3xudX1Fl8nt9AsdBzY6se0rhuMQ8nD4UgPIOdjtSNBzn5SCGY9uJBQSy95k9PmkU
	 jcN3f3CAyVbKg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id ABB4AC43458
	for <ddprobe@lists.linux.dev>; Mon, 29 Jun 2026 06:08:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178271331369.5009.17504120556054774659.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 0fb3a25f2ece5cd54f763dbcbcacb49c3e53f1f66ec88f3545307f2c0be00b55
Date: Mon, 29 Jun 2026 06:08:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1782713313
