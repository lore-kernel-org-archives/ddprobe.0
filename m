Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3699E8C11
	for <ddprobe@lists.linux.dev>; Mon, 27 Jan 2025 03:25:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1737948354; cv=none; b=r7hQXVvwPQzT5SuPTTHV3ApnoKbqr6qClQChKqf0DxhQz9x4pmWOyUDgGTzLYZ2qjaqvevfInIcRuz6bo0yaIGe0H3B458z4eQ6qhoyWppixvbj0L+cRjVCfRxb1MGaMo8JnWrk2iShP1WZ8akqed4HIIbPC/ViyADTuObEkKEg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1737948354; c=relaxed/simple;
	bh=Gop8HzaeF1JCrBdImMosEoICowUlMQwTHzsb88ciNQ4=;
	h=To:Subject:From:Message-Id:Date; b=dJMkkuf3QqV1Jl85I8nhxG6fqXrjoueVIOfNw7K6dDWr81Hs3GXPq3wCjLi6Tm9egnuMYnC480BtniS16DdQvhcwqNYxDqR0iB3ick1EgWrCh/YWNEaSJaG2tDdqGyD9YpkTQYutMROaFp0f2EuepI1E5yHxH/gwLjjpxmQEXZA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=h/uHtYvV; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="h/uHtYvV"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A6655C4CED3
	for <ddprobe@lists.linux.dev>; Mon, 27 Jan 2025 03:25:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1737948353;
	bh=Gop8HzaeF1JCrBdImMosEoICowUlMQwTHzsb88ciNQ4=;
	h=To:Subject:From:Date:From;
	b=h/uHtYvVDSUWpq4OFNJN7pw6OM9w2DmROMQTBuOV5SgJibcBSIIA1mo0ZnaxxX+s/
	 quvHQSidc7qN45p0F+2XHy2md4lU9s+87W3yJidNilwIQ9HcckuWl77h483ItR2va+
	 uHqOP78+5osrOVvZLjGasG505gju41Xw+Q/+j+mQe5i10sjoIj2bsKMwaV4ansxcdw
	 aOen8UkE6rZj0SeSxy/XwdMq8vVIAO80il9c+jgdbrDJS5PPaWuMVoghf4TGkU0sIR
	 /c+cCTPbvds/PCuYV4WmDb3TbLeYxX6SyElxKclh7QWN1yQpZS9C2KIVbwgxTZRdYi
	 XGz6h+kmlJ/GA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 91430C0218F
	for <ddprobe@lists.linux.dev>; Mon, 27 Jan 2025 03:25:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173794835358.26198.14535556763159535155.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: ef1552cabf449a176b6aeb863a0a20358925292be3381b4902970ee4dc6739ca
Date: Mon, 27 Jan 2025 03:25:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1737948353
