Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5618E186E26
	for <ddprobe@lists.linux.dev>; Mon, 17 Jun 2024 06:58:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1718607503; cv=none; b=ZKvLwL3s+8GOXn6fXvZb7PWmfhf/l3DhQ5Gv1zBkuBAjTO73VgoWZkenI/OjpmU8347B3eH5s8b0gL/3AzktA9MFUMySO4uDtiFhFkUxZcCaKgtvuGIW8TgFn5YxYZwvkdmMB4CjlrH1gInoQxcQYw0JGHMweGARQUOOcIEo8Io=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1718607503; c=relaxed/simple;
	bh=Awywhp8HaaSk5Z+4xSoV9fn6vROvNEYLE7wNN3657f8=;
	h=To:Subject:From:Message-Id:Date; b=pD4etT35Sob5JB85w/ud/JmvZaejm6fOw6Wphrw10eNXPZVPSwHXICRK9QEIZM7sDn2fwR3akNoYrU5zqdSpQmebUxQ/JxUmDwvspHCmSHQVlP3dR1vRM4GTu/qMfahXftrkBVbIt7yqv2cPRsak3UdW8+iqfnSxXpRzMz5tnJw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Umur9xrh; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Umur9xrh"
Received: by smtp.kernel.org (Postfix) with ESMTPS id DF618C2BD10
	for <ddprobe@lists.linux.dev>; Mon, 17 Jun 2024 06:58:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1718607502;
	bh=Awywhp8HaaSk5Z+4xSoV9fn6vROvNEYLE7wNN3657f8=;
	h=To:Subject:From:Date:From;
	b=Umur9xrh5a1XRSFPu9NVitZsKvyVhl3DJoX2jk+i5STd82Cd+RsBcY+s99UUnw3uS
	 LkzmpL5t0ku9BkAHJ5ZCOuAvb+w3VRwkOeZrbrlya+U5IvIGtRAdDHzPSrfK92jA+v
	 v9oVhizLpfQgpRtiA6i1CGE79YpdCXVjMI+JverS/YBkZrcFt2/adj4R1NHt34c97X
	 JXHzMdrZpZq9wiRtUkkoqzNrP+537AAUNF33TObCU8IywYIyvVHLZzfUIOeKnzber3
	 zS3yCQ/BjzdWXrR0OmciBfdE4pgRKWczxb84Yd1IEi5FQAXwogQajrhCpr4RWM4aTj
	 I5opYd7Dn2Adg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C7A12C27C6E
	for <ddprobe@lists.linux.dev>; Mon, 17 Jun 2024 06:58:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171860750280.24782.5493013432646672466.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 66a4e4a9ac9a9ad96599cf2937bbd090c39237dc9167e0379721b6bb02f678b5
Date: Mon, 17 Jun 2024 06:58:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1718607502
