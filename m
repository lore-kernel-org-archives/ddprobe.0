Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 08BB835966
	for <ddprobe@lists.linux.dev>; Tue, 17 Mar 2026 02:04:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1773713094; cv=none; b=AdQQKu3u9VVMWOzAyij9RLO3/ukISORhPN81gKSS7qRP2/zevf0ngpKHgdJrby/h8ZEGF7AWoQVSMIzNvxwCsahoAKg7DrkCEGrCXn4mttRGTvFaAFC/JvbfETz14GnAq8kAqOiwYDwGBo3ObVjnl4W6F2/mYX8MRmYQOHdVlAc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1773713094; c=relaxed/simple;
	bh=iFXdJin/CTdFDasFRefM+lE+nJ9GtkOCHfhW9B0JnIg=;
	h=To:Subject:From:Message-Id:Date; b=Wxj5FXukDHjOEPJ1ZiBDvr1gRuy/orp76pHzaZh9RBqdmOQMml01Qt4XxVW7f4jrCBjsfmksFkUnhJH9LHbK/ihgzyvDHx8EnisFRmt9rfVwQKgiRtEcJZ3WMCjAdJrJOfV1O2+c1dsbpVaRQUKswu47c6SGSfk6HiZUuoWTH08=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=kaU4hjaj; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="kaU4hjaj"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A022CC19421
	for <ddprobe@lists.linux.dev>; Tue, 17 Mar 2026 02:04:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1773713093;
	bh=iFXdJin/CTdFDasFRefM+lE+nJ9GtkOCHfhW9B0JnIg=;
	h=To:Subject:From:Date:From;
	b=kaU4hjajTqqnKBcBvim9JbN8ws23HN/0tUVjl0ZwtmcG7/KhOJho0D4IdjQ8gwFQy
	 35C9x7EJySQ8oQEPO76IlkTc5T9gAdUM21d1xlCI9TPFlEXRKmf0XdCBCkWqobcKTA
	 YM8YoJ8ySJaHgk3mIiL5XBNdmiIhD5tjTn+O7B7074yhVtXqQJLbjU4/lGDbENl3UO
	 9faDZJX1XbvJ7ZQZn+Q+aRl5D6DanrecMqVFnf+AXzT8uvWauAJOWn+jxC2h+sQp2y
	 DcknQy3A6aUVX/fY6v1TZLvlKwu3HNeWw0zUBBO45CLJqoGRasOARRTPDQbWIgayro
	 4uYG/FqwzVKaA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8F3F7FB5EA3
	for <ddprobe@lists.linux.dev>; Tue, 17 Mar 2026 02:04:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177371309357.2991.5309056219996404465.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: ac27c7065bb805c059052ca39897591a72d829d2fdb84b37ee4531c3c36a8a5c
Date: Tue, 17 Mar 2026 02:04:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1773713093
