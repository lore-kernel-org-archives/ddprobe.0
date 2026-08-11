Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id E89BB3148D9
	for <ddprobe@lists.linux.dev>; Tue, 11 Aug 2026 07:20:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1786432835; cv=none; b=V+oIFP4TMZliUPN/lm7SAt6lJ5T/mBA+YXeiB78zbq9w0IDyb8Lk4sg8aNTVDyNd7VQcCryXpA6OAJALfyLeqFcvBKonbhDvuUuHsmV6znalrtpEQYS/Jn/M+Yj8heq4zKk2Cch3v6/yfkQDalajZFSIS7x0SrgvH8+fEi/aICI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1786432835; c=relaxed/simple;
	bh=8Kntc3SwEUPOqs205cLXsTIq+2IttylAcD0MwwPB7Kw=;
	h=To:Subject:From:Message-Id:Date; b=m9IvCExZoeHrb15MbBmsYJg+7o2Eaq5DaH4E6xBMI3Xd97Y+yyTv6H73jX9hmC8VqCHTsetU2VWvOiEiwzRm0HkPH6IzSFLei6B3qXA8NqCc8uVQQiyvzDc2Pa5M9D3gGnh/Chf8WYxOWREOIvq5AeX4gVIL5sKcIbqN/3/DkOs=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=SeMxm4Gg; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="SeMxm4Gg"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D057BC2BCC7
	for <ddprobe@lists.linux.dev>; Tue, 11 Aug 2026 07:20:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1786432833;
	bh=8Kntc3SwEUPOqs205cLXsTIq+2IttylAcD0MwwPB7Kw=;
	h=To:Subject:From:Date:From;
	b=SeMxm4Gg99nvWKMqYRH+fAIrqE0efbPywmG9Q9ErzoE0T79jMprGKdW4E38zJhAwE
	 60+7p/cD17wsuZk2JXTFS2Wz0zhD4D13eaeZZO0ZDwyuvjCHuVQKLCg+EBVXtmIac9
	 URuWK2ReZA/CYA3OU1kXXoQ5ZQpW3sq2+z+abTUzc1hgWJ6fuzmkm5TECEpWU8hte8
	 h9TgdtWez8sTWKEsl9tsla5FxQIlBKyMuwRvzAGXc3quhG1T6tiTfHJyyLLbI2LqGn
	 NwTN5SMU9jgSgc1VE1Ybtik/Ee3CWtWLP9uhd2L8ghzTUuThN1CQEzthP4/4UeOaT4
	 YenWujL+8u9Hw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id ABF13C5AC67
	for <ddprobe@lists.linux.dev>; Tue, 11 Aug 2026 07:20:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178643283368.6603.13700337241656902924.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 4d9d325d1fc044a5987d1dd3e6b177abc411418c9a3f7e3210909714d6ba2089
Date: Tue, 11 Aug 2026 07:20:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1786432833
