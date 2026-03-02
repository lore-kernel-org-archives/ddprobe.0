Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2E25D20D4FF
	for <ddprobe@lists.linux.dev>; Mon,  2 Mar 2026 14:14:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1772460894; cv=none; b=qymFfFmnL/bukfxinC5objyiaF79g5t4bK9l9ch/liDvjeW3GLxvWGxt6b4Ewf++QlpC7JhAkkBcLc0M5xzqPG1KsDolloPTED2mdjIzLhRoIqaR1B1boZgdogaqYktZyPZnpmJkwS7LOlBJ7R29uGjua+bXpb9vmSfhKpB7j78=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1772460894; c=relaxed/simple;
	bh=HMSCBTnK8YRAjaK+yOGGp9dbmap/HrYbxphkjEkrBAc=;
	h=To:Subject:From:Message-Id:Date; b=gQNfAPkuEyxoGHUEQ6AvI+O7Uc4cysLrv8OMNbmA15EARQtyqKTQ+ivnLJkfk1bi58ns3lH0lxnuF/xv6mhAdsOKhyoOpEQa1IwdEFdG6l8+dtueXZvDlOq9KXbDqz382LoldK6y0LFSIq2XeCaSlTJ/+Kk5mzRCW1AxUB2e7b0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=i+iKI4//; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="i+iKI4//"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AFB4EC19423
	for <ddprobe@lists.linux.dev>; Mon,  2 Mar 2026 14:14:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1772460893;
	bh=HMSCBTnK8YRAjaK+yOGGp9dbmap/HrYbxphkjEkrBAc=;
	h=To:Subject:From:Date:From;
	b=i+iKI4//PlFWJfmfd8hI8YG1Z5V2O2+1ZZecvl3H/oWRWvoIMpeoMLRLUjYcDMIKg
	 YFSMq+vc0WVXy3UJJ7bK91JAvng4fGLE01TVQl2xGgfqBANIfYEcCe2bRWXroazzom
	 Sjnz7wiJF/2cFWodnzKWC2Vu0ob7Qbux9d43bCoLK3yFQNPUJh4QqUFhtOdSTe24gQ
	 yvVjo0UUd2tElo/JOBSix2zzRnYzQ1A0+stX5acnnIhX5JLdTNAh3DduRtxXQW6zKU
	 ZCSW0mWIaVrjjNsQ46k0CPZ1JijnNXqsteG2+vu35yr3CWSpREArb1+x1Ha9mvgO1e
	 50lVM13ZcK4fQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 99F41EA4E09
	for <ddprobe@lists.linux.dev>; Mon,  2 Mar 2026 14:14:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177246089362.14581.11063681530472752264.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 36fa4658c4739721d7705a43e33f4bfd5ff8f1333df0d3369f9b12497fa3328c
Date: Mon, 02 Mar 2026 14:14:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1772460893
