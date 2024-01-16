Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 05023747C
	for <ddprobe@lists.linux.dev>; Tue, 16 Jan 2024 22:58:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1705445897; cv=none; b=eIOawWh3nIf6qpo1NmJmzWjp8/nCl9vKQ6nnZB55+hNiwY1La9PT8rB3pKpuWZq86PQhAM85XzsdhIUibIiftQKxTBysShSQjCp68KIXO1h4/wfmIEmIIHzbYj9lvDC8HNlgPljszwDiPK8Vd/BAsbMWeFztaWhXsNwefh3tFxA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1705445897; c=relaxed/simple;
	bh=bt2xzle4jHhg0YnkLekGQ5b4IWwbRneK7ePgznvpTCk=;
	h=Received:DKIM-Signature:Received:To:Subject:From:Message-Id:
	 X-Rtt-Probe-Hmac:Date; b=VPTIU7A+AtUj1+d3IMTzNoturyUgsSUlAunCB+1HazenMBmRPPVuDl+HbxWjyWWlfiqrdoH0UqJAXaH2B1V/kkzFJn7OVQp+wNN5b10qcefXDoilZGKHmTxxRiA2nWwbNiFipf25ROnuknlxnlTjjM8nABqtmiyCUUlK2f4lX3A=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=H2t8cDDU; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="H2t8cDDU"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 821E3C433F1
	for <ddprobe@lists.linux.dev>; Tue, 16 Jan 2024 22:58:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1705445896;
	bh=bt2xzle4jHhg0YnkLekGQ5b4IWwbRneK7ePgznvpTCk=;
	h=To:Subject:From:Date:From;
	b=H2t8cDDUwa6/kjuV3kg9BR09YVnom5TTXbt1J2pFat8u7dfBqs9o78HANDVGxEoTW
	 T7uIpWKbH+ov7amOIc/Q/mADJLGjtEWIbOYBUGgUzaCFghGQkyzGOfuROmsrzzQ9tD
	 +6P14AVbCDEAvXgYxoDXYOhafWjrFaQMCzrQjlakzirjEoz4tPeTw4/zMl2WLEF46+
	 c0v3qCLxj4HLdKDiQmKo38v2IbzyZV7dxt3FciwUwpAtALbDTyHk9xAP6nr9ST8ZEl
	 US94YvJocuSWMNW05y4Tpg0OQeE4FQNhV24ehN4xTyL3ca5pmt5l8H/j3WU8oqTA/a
	 FbEwmVrY9/qKQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 64F84C47077
	for <ddprobe@lists.linux.dev>; Tue, 16 Jan 2024 22:58:16 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <170544589638.3311.805365204858704625.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 4635bcf2957a692d466a43374fc53d1123c9776f81218fb8c272d05f78531b20
Date: Tue, 16 Jan 2024 22:58:16 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1705445896
