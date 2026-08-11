Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 39AD9313546
	for <ddprobe@lists.linux.dev>; Tue, 11 Aug 2026 10:20:35 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1786443635; cv=none; b=NJ87KEN4nItG7PoUt1uA8Jc49/i67DgH1tAbga0PwwKBsGi7Q/c2dpAUaDc2fMRGKwuJgMzmaEwFe5oreCB/3eLGjkZuHO1Teu3TxAD8Uk59By6IeJs/x11x9CFTVqkLAMTqlzvi+l75WotZ5RT5FVCajTWUyPDs7T0DMzKZfEY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1786443635; c=relaxed/simple;
	bh=lngCzYCJU1lnYwIVAEg2CWP+A6fQHaMP7Zl1QlmyaIY=;
	h=To:Subject:From:Message-Id:Date; b=b9+OztjFmzlJ5UPmyAaSTgArZX0J6/iIzcOCZv8t4JV7sAK17eVFwYVyYbag0LRZy7lBfsKJdN4KehVZzm8Iw/H2y+SQOUqeCdr5zdcKYu1Co9fyn3W+QY+YMMfFjuWZiwYbEC+Gdd92ApiCwtnOWr1kVMFGVWX9KNT+oWBAUNo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=MXecbcgS; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="MXecbcgS"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CAA55C2BCF6
	for <ddprobe@lists.linux.dev>; Tue, 11 Aug 2026 10:20:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1786443633;
	bh=lngCzYCJU1lnYwIVAEg2CWP+A6fQHaMP7Zl1QlmyaIY=;
	h=To:Subject:From:Date:From;
	b=MXecbcgSq1StaXPGoX3pCA2i2Be590Qz8Dm5TUsXjv7DsQS1Peq+sjPh9f04fznTm
	 5LBF4OQxEkoQIgnD0xmY+ocyNJax7UovFmDM1BRfbbJLlv7S56+TevS7QgfZJEBI06
	 byDqWahWaV5Ujl/UwGGSnVgMG3VPK/zez5lWRfvwx7B6ljEKSgXgpqB3L//gOlcoI9
	 VABUrDdumNXnggNqf8QytOonGggM1YaK+mC3Cx02Ar8y4Cp0V9yGjskXMgNAcPtfDB
	 wAtW0+UEDHqTH6g3+gXRTW6A3FDeKWjrAocl3um4Ig3LUSEMTboxSfD4RJ6PLiga9Q
	 lvn1mAvYVDnBQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AA1B8C5CFCF
	for <ddprobe@lists.linux.dev>; Tue, 11 Aug 2026 10:20:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178644363369.24251.10367251856725154704.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 517c3a8b1a63b4d092ebac2b47290c323358e66a5b7987d545d51904034011e5
Date: Tue, 11 Aug 2026 10:20:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1786443633
