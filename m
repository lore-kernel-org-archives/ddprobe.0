Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 77F9E3D3B8
	for <ddprobe@lists.linux.dev>; Fri, 24 May 2024 22:33:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1716590003; cv=none; b=QgL1qm+FT2EmRtpgs2N2cocMflQDbu/Fj8LcQfEE7hdMRZxmMxSNbNnEbtlYEpilasKSGdYD9AE2DZOjTMEOhU8lEnxC2+DaQ7/Q7IX7McIx4gAgRbjuEWbCGFMlb6A4ajWWjsK2MxDQ23pzQBW5Axg89ArKvNJvrqZLWuRu2VU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1716590003; c=relaxed/simple;
	bh=DJZYJFkYiGSaF/9n2oNlsBfumI9aA6ZARLWV4QBPWVk=;
	h=To:Subject:From:Message-Id:Date; b=TPEP/2G2HchS6dMweSo2CnvoX8mt5b24t9M3Hku2aIjh7o0XYECCJduYowzvHzxtp6iWHFoObRxFNW1lrxV56x1lQJ/wdU1+E+vpBPxHaBJ/Bs3RkD1breawI5+tF4BtQp9pBtyYvCdh1W/nEZgnSW652GmPXp7E5J8XdjVjZsE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=rcTuPBUw; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="rcTuPBUw"
Received: by smtp.kernel.org (Postfix) with ESMTPS id F2385C2BBFC
	for <ddprobe@lists.linux.dev>; Fri, 24 May 2024 22:33:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1716590003;
	bh=DJZYJFkYiGSaF/9n2oNlsBfumI9aA6ZARLWV4QBPWVk=;
	h=To:Subject:From:Date:From;
	b=rcTuPBUwoWYZnQ4IxzvU9dEO+1d85LTR27R3E705aXbmZZgclQDB+lD8TeNWWSbxj
	 4tZwXxAsDTgO+LM6EXK1y6/pAr6Q4YGf+r9BAfUF6CqD7u+oqn/20/q3MmQPa/gXah
	 CnPRr3B2cUNcrvhgksWVluTUF65Q02Mrofpw3e6ssuaCWFEa0AbfqRcAAR+NHnYvDG
	 MN/KuX/69VkCFR4O5Ij1aXXnmmVDfe/Rrwvp/jfNpXKWbgMp5g4dML3zjBOhRt5iDX
	 PDcD4PkpTJOFQ+WYAIuDwzQXCxD7v/UFnobS+gSsdJI5WhR9f5nCg4n5NNIU037Stk
	 yWRDVYU4XuOtw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id DC349C25B74
	for <ddprobe@lists.linux.dev>; Fri, 24 May 2024 22:33:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171659000280.10036.8024820722321629757.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 3fc17946f5217ae9e303a1609c2c6a5aaa0477d9727e4fc020878eaf92b857cc
Date: Fri, 24 May 2024 22:33:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1716590002
