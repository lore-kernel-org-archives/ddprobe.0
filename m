Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 13D5D1F3D20
	for <ddprobe@lists.linux.dev>; Sat,  7 Jun 2025 07:09:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1749280195; cv=none; b=mhMq2spTGNA1uzzljWnrRS0iqkF3CwHGCpALtV20zldMSC9bZOsg1euaTN116y9BQJL3Qt+c/yZTVWezwUIvkU7pOyFviS7m9jX9QV+NR27C30hHIcjmQspCkYP1z+WFqmOA+pLYrj/YERSCW+eoYaqPv31BpJt7zcJgkJfAEc0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1749280195; c=relaxed/simple;
	bh=X2OqGXan2/xuAX85FU3d3/Yc+trURl/B6KmHnjxYCK0=;
	h=To:Subject:From:Message-Id:Date; b=imH3I2MzrnBaI0dlC7SHwxNH7d/Lt+KwIqd/zjA5h78crKQdaEfIIWtuML5AEzOvWFfiNORipS3IY4mWN/DZTFn6QNC6thM0T8Nl/P/aCNeBOznU4SidXg2cT5G5pEpXUaYcHPT8uqCgpPiXvkps0GBIWhI32iPIDKqcjGQ3fAk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=uzEUURzh; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="uzEUURzh"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9E35AC4CEE4
	for <ddprobe@lists.linux.dev>; Sat,  7 Jun 2025 07:09:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1749280193;
	bh=X2OqGXan2/xuAX85FU3d3/Yc+trURl/B6KmHnjxYCK0=;
	h=To:Subject:From:Date:From;
	b=uzEUURzh1vJ5KomtG/NZ1IX6HZ/RQT1NIEjw1mnhr1DZxCdDKceVfij2FinxI7xow
	 Au1XOkRDaKDbNYl1d6tuW6OaNsZwduOe/333UjxVxBApvRQiqb6mtiWfoNZXXmoq/I
	 ccA1vkwPbtnejKpLzVHPWeQZVlFBpgHziUW4B3LsTXv5mbBPWNeCFInXmiVCs8M3f3
	 HEb+66OmmfU/Pe74Nh+hAY6dvIwz62FBvemSjdJQPu10mmJ47uIEMSbg+ilkGiZDzx
	 hOwqCI/BykIV0wLh1nVJK017CjHbfifMczLqAgrFsgV/X0pyd6n4CDgW1C0Nvin0Z/
	 RSAauQ0D7i46A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8F37DC5B543
	for <ddprobe@lists.linux.dev>; Sat,  7 Jun 2025 07:09:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174928019357.27815.7982235327831545973.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 7f89912611565075ee0403e94b5d8e144ee9a70fcf778ee42a825a200d9ba505
Date: Sat, 07 Jun 2025 07:09:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1749280193
