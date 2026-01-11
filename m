Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1B8E8134CF
	for <ddprobe@lists.linux.dev>; Sun, 11 Jan 2026 15:33:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1768145634; cv=none; b=q1NOVQmL3Nt036mcNkcAtJxnLSq5GDWoQY/qmqPQGaY3QYK7kfUtybwnG49PlQ4pROlKSTNW6fuEQ2ry/gJG7yk0FzX16mR+HI6LivcMmByxqCzGzqRV8LGz7JPUJSEPJBkYSwBgnLntuds/uZKZH1lOG8e9CC3Yr5ZAROTx2Vc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1768145634; c=relaxed/simple;
	bh=MnrYmx8bjCH/Lty2pKx2etGt3I4rVwG1OYA3tJxCRmM=;
	h=To:Subject:From:Message-Id:Date; b=OGGHI0AEzjBwbLXprgMciSA3QYcoy4KwonEX2rP++Ne4aKKV/ELP0NPCH5rrAvXFBuXUTRodUeHiz13h5SObCY2a5SzHlSRN0+0t7tm78CHGfFJdY/DUrvdMCvc9hBD3GDIKdI4PS9+7kLNW6dYSEfHfOSEMR1gByaLyREx+Y/Y=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=JuSkX23y; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="JuSkX23y"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AA06BC4CEF7
	for <ddprobe@lists.linux.dev>; Sun, 11 Jan 2026 15:33:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1768145633;
	bh=MnrYmx8bjCH/Lty2pKx2etGt3I4rVwG1OYA3tJxCRmM=;
	h=To:Subject:From:Date:From;
	b=JuSkX23yXHfAiBdeA4+LQtB/KbiOlttewovT19ibbRPehiikw0OA3pltKCnEazV97
	 67B2sl0JNcJGPwYwk4tsF3jLl+ikf5mD5AEBmZlYNBMhg9FUIzTFIO4EVWkDAyynFn
	 R9Cr9uQvVLsA3e3+vbUjXzR5ATvBMGeaaJ1XcKIY5Hmklwk040ipvHVpnxsgru+OAr
	 WkdgB+GNHLW0uIQ4XZ5r6FhhdGVCtqv8A6IlHh8zu76sS3Po5dHc2hesD3wSKGDfh3
	 fKNU8X7Xqb9iMJB3dx4Ms1EfJNw7oUNg2PfAZ+uAppcrHXaG0NF72XFCsqoqmrqBxA
	 7guL9ODiPVRIQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 96F65D2502F
	for <ddprobe@lists.linux.dev>; Sun, 11 Jan 2026 15:33:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176814563358.31805.14157320835899009361.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: d3381cb2444bbde76d101c30b005863de1f8b76a6464e31c0d90a0cbfaea51b0
Date: Sun, 11 Jan 2026 15:33:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1768145633
