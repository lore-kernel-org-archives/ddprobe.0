Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 51B0642D74E
	for <ddprobe@lists.linux.dev>; Mon, 27 Jul 2026 20:40:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1785184834; cv=none; b=DnSYM9u8j2MZc5r/T8gEROfEAyqoqVo5Vdby+z8uuCk+9vHYn7x7eBZT7orkLdeDg2Q5B9HVA5jESl6nYEeIV94VxdTp62aQWlP+pdfUcR15fAiIVXokw4ulK/7XijUtCRwcTA8S584AJblRPTubdy0Pkja0PGcH57ozvvRwcM8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1785184834; c=relaxed/simple;
	bh=26Zp0Ba+jbBt2zGMK47qKNB/OggOKzkrIcAVJgvHKJM=;
	h=To:Subject:From:Message-Id:Date; b=mxOcTMQv1F2pHz6jwzTB/woSZYyKI9AF1s16IgZCMhprvYkmmBHyjmUuOrzsivKk764CUs9t/0imd1Bhh0+YVpxlDf1PppwyOvIaF7eqippvIMzWdlWHBYybd3jbpu0i3U9ffZvAXTDdR4Z+BGI8ExGXMG4UP5eFKau2HZnWxXE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=riIAD5bJ; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="riIAD5bJ"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D0F44C2BCFB
	for <ddprobe@lists.linux.dev>; Mon, 27 Jul 2026 20:40:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1785184833;
	bh=26Zp0Ba+jbBt2zGMK47qKNB/OggOKzkrIcAVJgvHKJM=;
	h=To:Subject:From:Date:From;
	b=riIAD5bJFBszxESjfLJf+CH5kMWkyVaAZO1mbvNj8GB9LnCKAfAZ1K6lTesIzb9zp
	 etN1OkrzP9YlMKXu5TwUrzkUzfXdguseMGmbM/E6EHZQMcTm3SXX7ClAOb+UJo/WgU
	 MEJlNtSGt+q5mG/RpCxcXCyg5XM93kE4Rp8EO0FGcnJlXVYOsHxe0G/dtPnIVokfsg
	 x5hBmOqB5UzAwWwhF9PZI8L5I0EslPcT/ytV8cd2cuv2H2YugpDd0d/Nhpnzt/v9Ff
	 g9a5BMcAKZhUaAb22kSsVevOdKh44Pk+lhArIvds8/QiG/i77dMLqeoOt78049Q1k+
	 GEIjCDLkqJZfA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B0778C53219
	for <ddprobe@lists.linux.dev>; Mon, 27 Jul 2026 20:40:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178518483371.11636.18062976256067371651.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 18cdcf114981acb5a99c8fb73ff0b2c43f8d81e8d073ecd8a6b3c5316212e220
Date: Mon, 27 Jul 2026 20:40:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1785184833
