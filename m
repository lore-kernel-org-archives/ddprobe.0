Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3D2BB1993B0
	for <ddprobe@lists.linux.dev>; Sat, 14 Sep 2024 12:45:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1726317954; cv=none; b=O4eQ8EZ45pbBtRnfoqERWX8TPzUBt7wT0FT5S12yCl9QTiyF9OhIqw50OwZIIqFaVui17QwpGU5U+SK/VHep9SQ0OkEcx9piyIjX+QYBtIFJ2xj+MwsE6vzdzIRo6ysIJns9wSPzbiR1ibN/rRz3yoJWw6dh9lXJTJ059SfUBX4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1726317954; c=relaxed/simple;
	bh=u6SyhhYBfgDQgecmwCDo5Sbyxcvz5+jPiZ55u6V1EJs=;
	h=To:Subject:From:Message-Id:Date; b=YfKqT/NCE/J6SwJs2fHaYRtmFLfHctBsQxjNZaH26Cd9U448INC9Zd2S0txFep0MXZtFyu6xy45b+U/PJL9auWgCs+Yi7j5Jv2cxdCaNsUi7dTGQ2ngVRJFdPtQH8dpZ9eOGnh55YUBJtrvwKXLdCNacMJX1f/aDrf/+JWp09zY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=nAdZTCSl; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="nAdZTCSl"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A5BA5C4CEC0
	for <ddprobe@lists.linux.dev>; Sat, 14 Sep 2024 12:45:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1726317953;
	bh=u6SyhhYBfgDQgecmwCDo5Sbyxcvz5+jPiZ55u6V1EJs=;
	h=To:Subject:From:Date:From;
	b=nAdZTCSlBh7iCEgEaL50eQcL4nWxBjUBDvIMXs0hNmw8Vsp2n3ATPF7xfQeKwG0Qk
	 CVQIBFTPY0UGgD8yKd8YDVGfi3ozXdfMoy1jFIoZzB3EXvgY+Msct396xUcUqhTHSc
	 4lVb//Mf0v8PXYrPEyOlzdwv587Xl7ll9W2hVDv892kNkjj0jI0AQbr+BHzMtvnhWK
	 gOjHkyrzEIFSiLVAffK+uWPLPsju+8hXLyEZ2glJPF+Fdsk5zc+FUMce2OZDBIYSDB
	 1pui8az43xsnK81xs/IsMvR26Yo1f22KxX3pPm2qS8qgvmMGJRdwG0uhtXYhT9kc9O
	 pfoWabaqjQrZA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 95A33C02195
	for <ddprobe@lists.linux.dev>; Sat, 14 Sep 2024 12:45:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172631795360.2274.3740008036310857995.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 6652196f05d08071f3c6963b3c82ab9c73036994f7744df3ca202642df6a7ea4
Date: Sat, 14 Sep 2024 12:45:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1726317953
