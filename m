Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2907F319601
	for <ddprobe@lists.linux.dev>; Tue, 27 Jan 2026 17:43:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1769535834; cv=none; b=ErKYF1MEJnUezLUdkEFa67TdrROc4Ctv3ZYjj6uJXlUtfE3XsJUKX0UnGiSz8KsqgHVBwYF0RZZ5Nx3dWMbHBU8Wa6nAQuTy2BT6pEY9VR5k7MSUYtiN47EgGUhmyqpXNivEb/GoNfF5AsaDpgKlpv1ARgI2IiuDIpC2f1sZDIo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1769535834; c=relaxed/simple;
	bh=N0rsuQ37jC0jY3zA+sr/Efpm/oxleuDejL0R+C8ieDg=;
	h=To:Subject:From:Message-Id:Date; b=RL/D591DV4MPnlToRmrQeUWfwidY6i6Vxv4xKpDiRMV3RbzbHq8xZJLgeZhEpHK+msneZlX0uJ64M0ET5ZvVnrey3t5+2uWByX8yyYCNe6smuT60LudOmX1oC8OnfqPNzV7AJpjt1cW8NlRUX7fFpqGGbJGr81W8uSbDWNz8kl8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=audH7uQm; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="audH7uQm"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A3FAFC116C6
	for <ddprobe@lists.linux.dev>; Tue, 27 Jan 2026 17:43:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1769535833;
	bh=N0rsuQ37jC0jY3zA+sr/Efpm/oxleuDejL0R+C8ieDg=;
	h=To:Subject:From:Date:From;
	b=audH7uQmoWN/NINGGFQyc/PzLuqns7JDRabOJD1hzblHXB+z8fiDkSqcWLH0m/20I
	 FAjMC4OztwFWcZdSMOuRp/dgED/iHy6PrZH36mVBOTOal4yfOFxt9GzE9qVHnI2t5g
	 RmSYLjCqZLkp7+fLmKTRCcDXT1be9oZlClKOEy1JQkyaKyRAS8PYdMaF6rp0Fr6FnU
	 LW9y0xn9mXJbJw62q3YWtvaqo28LMj5YDUUDrbCoOLL7O0+yUqBCWr4J5UciOAtMI4
	 7wGjmv2qOff2srF4asJHrxLXkDISEOBmM5WorqlQZ9riKa4dVTT3C1kiJIyYkkgE0t
	 0ap1SsGB+cb3Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 90BC4D2FEC8
	for <ddprobe@lists.linux.dev>; Tue, 27 Jan 2026 17:43:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176953583358.20152.7324332418377809003.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: a5d9ae8ba54da68a47496736235527e19ab5f03ce0c828804fd2dc9036651205
Date: Tue, 27 Jan 2026 17:43:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1769535833
