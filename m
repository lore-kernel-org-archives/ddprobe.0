Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 26FF0182D2
	for <ddprobe@lists.linux.dev>; Mon,  6 Jan 2025 14:35:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1736174154; cv=none; b=oQEEGPb5fQiRCK4sLn7eInAwh7OmjNs1nXd+bcVVGeOTi53Bwac0sPYUyG9HvsDB+6gltVbHDGQ3WMxXbjniBmEH5ey6S8bMwQxhdmk0yeN7edrNsOHZDKl2Bc4QSvQsKZYRbWlZJeHqsAOjGEGYuGBynqzCaee92GWTjf61n4o=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1736174154; c=relaxed/simple;
	bh=0BrT+58c51u8M+4QA8StlSjWwrVzw1ukTsvscYgGefs=;
	h=To:Subject:From:Message-Id:Date; b=dA00tasT8HUBEbxy76GrXEo9URXMPwbqqe2vCVt2IlYgAVG5cOBU/UcXAOFXiEydDaGf9KkF+Kk4KXHODUPmnsNaJc35a0EXiDeb5IMcvJQJkjowDj1i6oq11ASywhgs7CfZWzvFFUSBsNo3mrvBMslc3Rm32k7lSXzhVKi3hNc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=CnKb5k0C; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="CnKb5k0C"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A9409C4CEE0
	for <ddprobe@lists.linux.dev>; Mon,  6 Jan 2025 14:35:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1736174153;
	bh=0BrT+58c51u8M+4QA8StlSjWwrVzw1ukTsvscYgGefs=;
	h=To:Subject:From:Date:From;
	b=CnKb5k0CGeOWaRhfvlFlbxSHqW98sgHpX3cSF/6HdLaG/fcNx1ZO0Uy+pJkYCPufj
	 BoAV79mKycKkJWIIxjgbsTQx1dtDWHcwrk5xTrARb70FrxaIy25e3lCeZN1yphjbMg
	 B9xAFTBHIVrlIiXsYWl8rlDo3aICMtas5+9NgjvKx08R9REwDRsLhAwIpxpIYzkS+3
	 lSxGSmtEE8lYfCrqKASha4PL4WvlQ6Ps36v/elgR96RqgFpL3VY+RUr3ZT/z/FurAw
	 BRHyoMtUskNZ7eq0fqCUlebW27MRa0iSGHA/WPq3AZKV5apqPy7LZoXpueBG6hh84c
	 EBZi/t+xuHYqw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 97D38E77198
	for <ddprobe@lists.linux.dev>; Mon,  6 Jan 2025 14:35:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173617415358.6278.15427252829683014057.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: b0195e61c550ef10a0025f36fa5df038c8988dc866fc0c263f2eb3e3041df962
Date: Mon, 06 Jan 2025 14:35:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1736174153
