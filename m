Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3828510FA
	for <ddprobe@lists.linux.dev>; Sat, 27 Jul 2024 02:35:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1722047754; cv=none; b=g0DvqHbBrdpdi+YirYcDrAuAozQ3S4nptIfYSawBJZgmP5cGzmJF2dm+/vg/N0g54R6e674trxThMnOy6F+wWPMzyguV6lquHzqT9QGjOk+GFLFv0jYV86/UKo/og9OZZxQ9ZrJCzOYqJBT8NBqwvyzSfXmrWulQsclvgkuPmbk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1722047754; c=relaxed/simple;
	bh=T60bhn00zRnoeDuiIE3ouQ3sJqna37qxuERMtwQrhoc=;
	h=To:Subject:From:Message-Id:Date; b=fr9g0lNx4fqzSgtN0fLUn9FbNeCwpf4srbeaY+SKPiAoPdfWQHp4kaxBRoYEi8adHGSPrOTPi69pu35d1sksZaxusWRD/XEo+LD9otXCG+1R4UTPM8CP9QB7HWxHiQI050NHtirMYk1Wo+TzQWz6glmvpdj+UjVQihfLOP168ac=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=gjncqsQ+; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="gjncqsQ+"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B87AAC32782
	for <ddprobe@lists.linux.dev>; Sat, 27 Jul 2024 02:35:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1722047753;
	bh=T60bhn00zRnoeDuiIE3ouQ3sJqna37qxuERMtwQrhoc=;
	h=To:Subject:From:Date:From;
	b=gjncqsQ+STMSy1Isueb/yYiZIesN8ipC6KOOGfroCRyQfuJ7l19JNDsEFTCTjUHCr
	 hK1BEIyRVxCeiYvEB+jS4Oc+iI3lPDPPs//OW8MLNuc8F1jwVsKAKWJzzKR+IzMZyx
	 6oU5yW5FAteFNmr84fOW4dpg+4rItBCPVR+9GY+EdAAfT08PBxLsZULAEPdzwNvGTo
	 xipQTit3n1/ZQ8q5tEO29WtLZveyrmtAMVKJ4B/YWsFQhR90fwlxylP2YKlUd6G0Um
	 +B/kzyr1XJk+KB4viXee9XIhYUUVhIjyywIYVRHO1GtkIO/qYZVebQ2XeDvTTCoZ2Z
	 AIvzK/aDmokUw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A4991C3DA49
	for <ddprobe@lists.linux.dev>; Sat, 27 Jul 2024 02:35:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172204775362.13299.6945114954445225612.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: fe14c603102bc4a3cd07e0bd5c21b46b236b6fec103f3628b6361261e25af199
Date: Sat, 27 Jul 2024 02:35:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1722047753
