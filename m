Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2A1C02AE96
	for <ddprobe@lists.linux.dev>; Tue, 29 Apr 2025 04:49:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1745902194; cv=none; b=E5XyJOXY2EMqx9hILx4w5ZRQH9zFVVlzMgK7CEsSeB2d2ANCYmAkGRHkSEHFKzH56xdE0zT/mnrkI8G8xDnc16NyzS3ic9IgdcHWiqF0KVhSliAPLH3AbDvm0PPXEg9DFWDMzFJTR1N/dCOIExHM+QWYqiKxqBzYvMDicpJXPks=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1745902194; c=relaxed/simple;
	bh=Wyl9J6V+u8TPE6fT0KCX2w89lX+qKoPILiuV66iOuiE=;
	h=To:Subject:From:Message-Id:Date; b=qkjPh62JiMJGHZMmRgFgKelC4Oi0AuG3VbAyntY4j+Z6N2SxOkwKTl1typgjgRn1AJFJbiG6grH2oGtn+C7RQiBO1AcVIv8GDC82MmWciQzBpNx6NCynGWBCxw4ft2Q+h+4EcEI772AUH2hUTrgcDTqB6GgDJmcKClUXADMptPE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=gu1C+ZhK; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="gu1C+ZhK"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A0528C4CEE3
	for <ddprobe@lists.linux.dev>; Tue, 29 Apr 2025 04:49:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1745902193;
	bh=Wyl9J6V+u8TPE6fT0KCX2w89lX+qKoPILiuV66iOuiE=;
	h=To:Subject:From:Date:From;
	b=gu1C+ZhK3E/V0OQJvwgGZGvmAPBgfl6esNy7uXI4IfAHMG3qy7X5bv4b/3SN2Wf0T
	 4cBqE3hd78MMHlqPTjCZTx65IQewe68uzQO5LXS0ecerdZfI6iLsD6cSqZ81OD2uUA
	 yHLjKwJ9tRCSehCErPSxZVOhBYk2uEsOHlywmmApaxkWiAfZVJAFtLmNSsbpPb5YaK
	 IzfdwC8YB5iJG2RFiqjoeEU0BWTnii4p7+rEYFjp8A6coHuzoNlkEhfku/Sp/mqh/2
	 VDlyIzUd0SfUPwRC1gLH/lu04aMrW/zIh8scqdJmAXiIi0JNxfcAf8JYaOFIt19sDY
	 3uGqJ56C7cwfw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8F324C369CB
	for <ddprobe@lists.linux.dev>; Tue, 29 Apr 2025 04:49:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174590219357.5993.4387949068502067837.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: b9cc76867e987e8d0aaf8231594c6970270fc7d46f2802d857d4d7cc848da622
Date: Tue, 29 Apr 2025 04:49:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1745902193
