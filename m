Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2FF606F30C
	for <ddprobe@lists.linux.dev>; Fri, 25 Apr 2025 13:49:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1745588994; cv=none; b=k5bkBq4K7ridF/YvMyCMjfwAxrIskM/SxeXOhgystHXuuGs/uo9eAKRX9z2/3mo+4B31PH8BKZ/twCYw1o8yECYvr0kyyNoSTlhSMpZ/UgF3olJ4BNKnTV/WywVYIdsA0Tfr2z9waaTGqdann8FrSFREYoZ9u87gJGmJHb71ZCY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1745588994; c=relaxed/simple;
	bh=paXf3MQRjJSqQj6SzZfx6xbKadFqTEA/vGykc9iduR4=;
	h=To:Subject:From:Message-Id:Date; b=DzSowZF3HH9rccPyd3l3Hu1373/ZZjJHVKnacEDUFxG6x4Tr4nGjUpd4lMa+/Ub0s1ZpHg2Bd36xscS+hS5mwknBQhkz8n+JU9Gwo2ZPSim16Hih4DOQGTdlw7rVEY9K/LYz4yW8h6hxH1uMTUyIKvoAr0ervBhsWRMSHpIIi18=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=q430ttaG; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="q430ttaG"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9F8F9C4CEE4
	for <ddprobe@lists.linux.dev>; Fri, 25 Apr 2025 13:49:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1745588993;
	bh=paXf3MQRjJSqQj6SzZfx6xbKadFqTEA/vGykc9iduR4=;
	h=To:Subject:From:Date:From;
	b=q430ttaGdtOgXPXhz6wKP5kR4w6J/ciIcTuKfXnkUEtv+8Vwy5r3MBTWVcTJPxqQG
	 WgnwsHDYM/iBcHP4+L71EQnctG9ekMOWsp6NZ6efOwoGr+q3VbFxxk3LafxgOlPbNd
	 l4z/EXdmF9yNCw0dQlYhcBkSTw1NilOnwr8o/RMv/hH3DrV2UVmO0q0kmi6UwXKkns
	 9dyujaeO/C2uf/fin61MnPV14wqLcQ9iLslp5h28nt80rPu7jC6E/PzFpPmlKFaFVO
	 kfNcOHRN0NI6iVeTuVgNKLpDJTiIh+aWM6AMpu95oA3JcQfAt9L+BHUe0noJzogBLr
	 ZdJQZZCAcfk9g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8EDD8C369C2
	for <ddprobe@lists.linux.dev>; Fri, 25 Apr 2025 13:49:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174558899357.26709.9551707593776807081.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: afae34335014cc2bccef985cb940827ca5ab2186b2738614bb44be99f605c1be
Date: Fri, 25 Apr 2025 13:49:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1745588993
