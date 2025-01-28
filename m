Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5392C1AA1FE
	for <ddprobe@lists.linux.dev>; Tue, 28 Jan 2025 16:25:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1738081554; cv=none; b=ughdF5HweU5YIpoavdsrbZwWPWBMhLwLqzPENMl5VRQnIAlf2kmwlR2oqdc+bhtjQvkrUzvlJ7XdBlMj4IoKWkHZowYoA1nsxdLEwEMSxSilcLBpZNcA3prsM8D9UDkvBF2ecT35tmwlbxskx5Ze7OlPwzAbGUV3v932oZpOoLo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1738081554; c=relaxed/simple;
	bh=YC1RU0LYO2W9uu8veSWBmPjrj131cj9/WJanR2ulnP8=;
	h=To:Subject:From:Message-Id:Date; b=rKLCoFZ6cGkIntnEw2PpsJMWoDELKfOD0/ap5HKIfGIMf+prYkEeGJOwhEoRDmb9V/ZBljlfGNyEkIZbxUefWwxf7ngzFm3P5+1yqdLr72darXqr0O/Zk53gdb5BGC6M6xb9Sc+G9Ge6cLcfgL+jPuhIdnTyXNHIE/D9HA5EBO8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=bnnvMMb6; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="bnnvMMb6"
Received: by smtp.kernel.org (Postfix) with ESMTPS id ADCDBC4CED3
	for <ddprobe@lists.linux.dev>; Tue, 28 Jan 2025 16:25:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1738081553;
	bh=YC1RU0LYO2W9uu8veSWBmPjrj131cj9/WJanR2ulnP8=;
	h=To:Subject:From:Date:From;
	b=bnnvMMb6/PPFU67799aNyGQsVKXfNuf8pW9R8sMT4qo4HGE5kTDzelD62yIFi7x8n
	 Z6hRB2k/q1PtWIX541AxbZ8WLL0vDl5uljULOCWE0fbrCqXHxudlmYtYdsAce8/SdB
	 TL4vp/qwmwgdwEmo9Zqi/0Y6QKLuDk/TsFd5rL/i5iV3Dk+VdRmBsBQYgHd2PMlP6k
	 zGUTKoAjst7ZwA+A4tG5mXzvIvHFp+qzSrHTIN60NArEOOHo7NYw9hoggc+aYLU62k
	 Lb+DH/wbgCew/WwR56gkT3B/7ThrBcc392qetkd4UmMb4Cy1T8olwDBkn/YHFBHrQR
	 KmxDjR40MUcvg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9D48EC0218A
	for <ddprobe@lists.linux.dev>; Tue, 28 Jan 2025 16:25:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173808155363.32609.17751021975270466167.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: a821b842042900cf68b23766aec851f7a09c613b7bb388501fe337f6335f634f
Date: Tue, 28 Jan 2025 16:25:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1738081553
