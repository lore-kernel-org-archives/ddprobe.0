Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4966A37A493
	for <ddprobe@lists.linux.dev>; Mon, 22 Jun 2026 09:56:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1782122194; cv=none; b=XjuFHvveyqLODEpLuTjbgpzSVfIugvUh3HcLrEjHcrC1O/Speq9v3a4fPi9hv+1C+PIqPGOd/tTkh48P4i+qWldu9Mshge7nn3fyj7VFo3636T5kkOt6vaadunGjWeO8jPXVJAOfBEdalgnBeZhzIiTe6rHazrSC8EquLx9Kzso=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1782122194; c=relaxed/simple;
	bh=frCjFStNAJPqEc+YbPkhXjwFbtq/IBuyKWFuZ/l4vqg=;
	h=To:Subject:From:Message-Id:Date; b=bRYe4GhVPqBlO92E5XO0VGUbBDVVvGYQclcqeKrNSuJh2n6v9M4C05SMgAo/7hrsF5E7uGCAm/lkKyVOvny2qNJxTpw27/tMrQlUIvCtBt1mCZxVrNaAFHIv0DUwe4nXviUuhTwSjdhoS0u10QYYhggGPwXGLoJcR4MmEWlpmW8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=hEcUWbyu; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="hEcUWbyu"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CA783C2BCC7
	for <ddprobe@lists.linux.dev>; Mon, 22 Jun 2026 09:56:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1782122193;
	bh=frCjFStNAJPqEc+YbPkhXjwFbtq/IBuyKWFuZ/l4vqg=;
	h=To:Subject:From:Date:From;
	b=hEcUWbyuEIDzBWQHqj4c91HlUkcFMvogbU5zH8plGZ0qV8xKfklc7UKMTGjVe9iMm
	 BYYoyA2+M/8BMYgP3NRcC8chg/FZ5qRnrtvUqxXv7cZuecbzfpCzRMYCCw02msK2UW
	 ZaaHS8WangyhWRvUnzp3bt2RCirxg50a2w0vhL4jlG5xb2uS19PEcXc8yX2pZU0Ey9
	 mhU+ytyLsuVWm5f4/ovi/ED4jWkpFtVyLVoAZ5BvOryCBhEi72xxFAkRk8nrqpEb8D
	 hAwoMbDWJ2CxKg7FuiNWUG5V7kq31ZDR8ggmr/LUKSOiGjzCSwT1CW9fvGhDMhX/yG
	 nSCv9pICeLo/g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id ACE4DCDB46F
	for <ddprobe@lists.linux.dev>; Mon, 22 Jun 2026 09:56:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178212219370.13420.1131344092238292974.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 9a4ba6f0f58e6aa68b7fc64c510b666ed73e08ffad772ceaf9336de1dbba154b
Date: Mon, 22 Jun 2026 09:56:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1782122193
