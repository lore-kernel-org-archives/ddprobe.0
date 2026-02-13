Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0D9562DF146
	for <ddprobe@lists.linux.dev>; Fri, 13 Feb 2026 09:54:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1770976494; cv=none; b=MpdwptW9/Wm/wAO9oQ9mXhsV+NqVbcT5Djs6OSO7ECpWJXE/qA1VIT2YYU+CsCZz2kgLUI86oiwOqN3PluplZSaoOl8LHN+TsIlPWbFw2s6EJNly1Ttf8pnTY5XJgulgt0IlhdXhEWrQ91FMBQRc3mXYn7r42nykeo6H01o/glk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1770976494; c=relaxed/simple;
	bh=VyMiCoB3wqgQoxLnOidMrP25FKYcCiaTG/aXz5jlowo=;
	h=To:Subject:From:Message-Id:Date; b=k+rprGmCRVHB5UdYvBjI8pQZhUBHFJsGE5yzIop9wCbT4siXuYHDNTXnZ5BRYDinelqtz7NVat86VkEWjXcmG0G7hdJg3gExLRC1SCZJUiSk8TYw/IiTiQPJCJlng/cc0LGCSlOtLPPHRSYaq987GeZ5/VWqGzT7zO2YQmW2O/k=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=F2MvDyNy; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="F2MvDyNy"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A6C8DC16AAE
	for <ddprobe@lists.linux.dev>; Fri, 13 Feb 2026 09:54:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1770976493;
	bh=VyMiCoB3wqgQoxLnOidMrP25FKYcCiaTG/aXz5jlowo=;
	h=To:Subject:From:Date:From;
	b=F2MvDyNyud92+L0UCV1pr6nMGMdrjtfFjHrOUkhhnbhFkh30ed5SMeoV/e11r+q44
	 Fxd5DKtpamD41MkdbDtlnTsBmmOkeoEHU2G46ZAR72X0EIf/dOFeUZa25aGP0we6Y2
	 nCzTBXpPtfkEu6PDdOLCeSMnEm6LR7zTdnw23KAWKSBN4DKbAbBKaX6U/lizh3UsNo
	 jtEqcU3a0+vFIRdREHxZNoDpf7kclcamkW4GblZZ7NJjZGQ9s2uG+/AZuIFN+gRll/
	 aduKdkBa+FYqNPA299MkNsDXlutPZOFxjs5Grux4JKEYILcvaqz2T5xaWO9DS7cnP+
	 DSbCGWkOvryNg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 939B6EEA860
	for <ddprobe@lists.linux.dev>; Fri, 13 Feb 2026 09:54:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177097649359.20293.4196814282689561683.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 095ebc1b762f03f3df87b6df8f191c01839b1e755ae3a86587e4875025c213a8
Date: Fri, 13 Feb 2026 09:54:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1770976493
