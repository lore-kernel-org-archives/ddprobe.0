Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 40E7313FEE
	for <ddprobe@lists.linux.dev>; Sat, 17 Oct 2026 00:10:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1792195834; cv=none; b=AMmFqdYb1maJZTmJbwNv0luf5PE587sf5w+GrMTXOEiaVvRzRcciF1fqkZEwy9Dj+mC78r2IkbIdhvsoo7uvL5FAat09GN72ICaYs0oIl+5gtuXSicb8BkUy82QIru56fwpLNoT8Wu8VT4Ycnb6nL8WkV7ZPoljxF12PlcG6BTs=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1792195834; c=relaxed/simple;
	bh=q3x9R3a1Z+82m17/yM5VtSP7E6EhNVd5L4CT5Gb0TR0=;
	h=To:Subject:From:Message-Id:Date; b=UW6G/hGRjs/pvRW/gOgNOyL3ice0iFoQHR79S5ou/eVTaobVs8drPql8sf5PRdvUpG049ZSNr3hptswhXE5NrTvK4+Ymroh5s2MN/k14vJDSfymyiTza9I2axNMrk0iVopILcDryBXOC5n2BAK9srGdOE9j6LhNEXXfEnxjlExI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=MslG/GJz; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="MslG/GJz"
Received: by smtp.kernel.org (Postfix) with ESMTPS id DEEA1C2BCF4
	for <ddprobe@lists.linux.dev>; Sat, 17 Oct 2026 00:10:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1792195833;
	bh=q3x9R3a1Z+82m17/yM5VtSP7E6EhNVd5L4CT5Gb0TR0=;
	h=To:Subject:From:Date:From;
	b=MslG/GJzv33KQMA5OisOE+YEtvKVNBa3LLsNCnTTYR6BmQPLA1zxy1vd8BagzGaZd
	 ym+guecH6q8BKP9/4GvOc41umjDARIkEtCP9xnobswHnOHPlkamhnvfWzGUaUwjB1F
	 j7e+ab9Z2wraNuW9jtYva37vIVlCpo4LSA1P0j2xTKZOSE+FuEwjMYBLjKYW8ywHMf
	 pzlw1HVccvTmMfggiqrijDlEZzgyIQ1Wvtijoj8pyOZHUvKE9XCub5Rq/7OjJnXi1t
	 iD37LvQy5L7vQ3lL2w3EFejPtaZ2HqMtRrb56bNft1qCXoWejzMG0ME3oJ5L4LeNtQ
	 4SQhfAzY0klXA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B9C0CCCA46C
	for <ddprobe@lists.linux.dev>; Sat, 17 Oct 2026 00:10:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <179219583371.5322.10937235083796530677.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 42f969664926d1fb1590357474e30af27ab34e01690b994bbae2110e77832a8d
Date: Sat, 17 Oct 2026 00:10:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1792195833
