Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 15759182BC
	for <ddprobe@lists.linux.dev>; Sun, 13 Jul 2025 02:49:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1752374994; cv=none; b=PjMcUe66NZJ60YZZ/3zfHIfPmnpbAm2WPu0FFkn7b+2+F7btVp2DEIQj6YjcwWzrYVXks3oEv81rymo29nSgbHj4LkN2Hs7cH1wIW5610pY6/hF/05tb/0R4ihKxdtO9BV5Peux+po0IzzS8JIEwYL3MBObWVrQ84N+4kqzm4O8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1752374994; c=relaxed/simple;
	bh=ICLzny/psQmgTatsW7E1939RUkGHnYce05rJnsmuAcE=;
	h=To:Subject:From:Message-Id:Date; b=e3RTY7gyKpXEOy9KfuALze70Mka3xv67OD9pbVu+UWF/TEj636CQm4a14nW2cq4WI9Hb8/rsBzJBxwzQBd4rkEAsjUO9ARPuNfReCLcvwh4+2a/pmC5ocWekIDXJut6Dk1+AseFsZnxXd9FVt9YQFrwrDTnh2L7IBJtf+DESRkk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=qh5G5DY9; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="qh5G5DY9"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A26DBC4CEEF
	for <ddprobe@lists.linux.dev>; Sun, 13 Jul 2025 02:49:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1752374993;
	bh=ICLzny/psQmgTatsW7E1939RUkGHnYce05rJnsmuAcE=;
	h=To:Subject:From:Date:From;
	b=qh5G5DY92qkoNYPXvxwKLlSth+oA8TE/X/ptRIYjr1pXsL+efF+JigQ89vSZmY/8r
	 zz3ZWCcT/QJ0fTZ0yno8qlxcEAq8vBYnIKjkqg3I0bcgCE73SjSrnNe7hHHjhisgAB
	 0LpsLE0kYIBVsRYFg78V1FUTCpUUJWyQ8n9nt3KeT3HX6Ga9p1BcQi2A/pDUX2FiZr
	 rLcfubRjmk+CK/oWytaPVxWvIfs8ClKTw+4+q8quZmAzLnZOSMV4CG6d2OPlvKvhQQ
	 rgmUzxZt5zzxhDoX1AeV+ea2GwnO6hzHe8/F2yD9+coCnbdk0wakp1vfSKsSsGQNxl
	 gnFOAd+/NgukA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9141DC83F1D
	for <ddprobe@lists.linux.dev>; Sun, 13 Jul 2025 02:49:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175237499357.5371.8307187120684977819.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: d736990f7075d4554eff11dfdc639bcf9d2f1eb7d19c81238b544573178cf766
Date: Sun, 13 Jul 2025 02:49:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1752374993
