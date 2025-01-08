Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4A1A61FBEAF
	for <ddprobe@lists.linux.dev>; Wed,  8 Jan 2025 13:35:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1736343354; cv=none; b=qCg+TsQGM+M4m9UMEGPUsOJLYzhnTi1kCv2IEN3DmldN6YeJT8Pae0NpHVWtjHIqifUMHrbWFp2ewrWLke/BZ6aLr05JpWCh8xy7CwjYjGAbqvRKX4l6R7JUSMPqaf7XDN1Hxd1+sAs4vgHfO+9UkfFv+5bE13NAAKUrr12jtGo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1736343354; c=relaxed/simple;
	bh=Ak7y00/OX4DERCzatrZsIo3lhh0ppOFnPwYWCKdSbRQ=;
	h=To:Subject:From:Message-Id:Date; b=fJdcwBEK1oLfoMHExxwHqe4opWI2wVKkr5LHRm/ij86JoUkoZ0PQVNPiCyqdHv4jnHPvKkiRqc3t4Q+EebTYMlcR1YNWmwH++vM3s62Yrrr4m4z1fICo72fyZZbMnntDGNEePUtQjg1NRVkaAFNSkFAKxGgbkl246/vcB0Tx0Us=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=O2hEEFeO; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="O2hEEFeO"
Received: by smtp.kernel.org (Postfix) with ESMTPS id BCA4DC4CEDF
	for <ddprobe@lists.linux.dev>; Wed,  8 Jan 2025 13:35:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1736343353;
	bh=Ak7y00/OX4DERCzatrZsIo3lhh0ppOFnPwYWCKdSbRQ=;
	h=To:Subject:From:Date:From;
	b=O2hEEFeOXBSRXlzAfQ6S96yQ0t8Rf9YPHB/s8/mizYNVxy1qQUsIX8AzelVpVKLY1
	 2NC8rbt3ZNzrolkUUWVM+KAhNjoZaczQCxvZm+s39RXgseA5pkW2HAHZryxeaLjwPN
	 hkm37w0JsEASkuKhb1tBJSfw7XKJTRIsEDEozW+mOOMsQhHQR2ZR4zish9wsFj5nN3
	 x8CRzgQELokgYBiQDDNcngUK7xCs/ORLf8TDouLzaWnBjB0l6PdNIKfTEfn7ZdukK5
	 daYFCx0k7sA9rhmuJKXzYP3k0DaSXu73yyktFK3+vXGaewWGBXHas8O0SPEDEDTJGF
	 e8LnfHDoozVVg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A3802E7719A
	for <ddprobe@lists.linux.dev>; Wed,  8 Jan 2025 13:35:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173634335366.4729.16117727365740639723.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 3458387661b3775d52154d1dfa3b9dedb8f21e4e2dbfe5c252bcd9f510a8cb20
Date: Wed, 08 Jan 2025 13:35:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1736343353
