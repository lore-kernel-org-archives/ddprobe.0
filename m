Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2062C1C69D
	for <ddprobe@lists.linux.dev>; Sat, 20 Dec 2025 03:03:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1766199834; cv=none; b=NAJcQPBQG3GogEDtHJ39/NXmmiyZ1Yrj30glLTy5ZfJE+OMHVqI1Rhfs81QOSoeGRCVqrkhlWZ6Cgo9OTuOWYRaLRSlsHjkOMcCd4zOiAjvbFSr50u/PfqIYtIiXMIjcWdY+yplyqCZN1d0UWt6+Qafzauf6mGUykrZGPmMfEn0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1766199834; c=relaxed/simple;
	bh=SN6yiuWtuD8WvPwbCzVEw5p04xBwKORLJIQpTl0wavk=;
	h=To:Subject:From:Message-Id:Date; b=pd4u5V9pmQ9AsyBKTgVcRMnnRImAYDbqIJqAa2KuWgrVhC3ft5Md+aTaycCtEyjJ3eurbtmGunj7jC9W94qEumaLR6RbBorqbCPj8oESPvAw+VCH2VIVjdRbph/9TtSeCergf5VToiJxC168VIjGCLmtXW6aRX1zXZoJ4q5WGXM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=YJwIIM8I; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="YJwIIM8I"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AB468C4CEF1
	for <ddprobe@lists.linux.dev>; Sat, 20 Dec 2025 03:03:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1766199833;
	bh=SN6yiuWtuD8WvPwbCzVEw5p04xBwKORLJIQpTl0wavk=;
	h=To:Subject:From:Date:From;
	b=YJwIIM8IyCjBJuTUI5AefIAithpbBwUkNA4CVIRmttTflwjGGmhZgu0qzdhh6193/
	 yUFf6GHA+QlF5orjNDmkyc8SwFEH3pJ2TgPtFSULtQD6l26NmUv+n1CdkiI7zGPlUt
	 aZG0JVzDdBkTgLd2mkOvZUfAp5CY/7NAVehIW1+Kn8dtHktKDA3BXwEp18Lzu+9WvY
	 QMtdPM78acgbILgVtllGGA1rm0c8Ytg8iPjrhRHVrv7Wgu7lWb6CGColdIIh3mUKft
	 xbc0rcDlWf1KbcHXY62xUXoxmlBml67wgKrfPd91jfZStC3+ZTjXJ2oUVWugW2ktCX
	 F+OtL28aR6EtA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 96011E668AA
	for <ddprobe@lists.linux.dev>; Sat, 20 Dec 2025 03:03:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176619983358.27634.9274436157558131674.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 9ed8555fcb428057bcfd93cc90b80a29079b5cc355eb3dd17a24ec4e9736736e
Date: Sat, 20 Dec 2025 03:03:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1766199833
