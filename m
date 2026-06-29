Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 585AD410D09
	for <ddprobe@lists.linux.dev>; Mon, 29 Jun 2026 14:28:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1782743314; cv=none; b=MihAXU2uE2ShmUcHCgzgy1ldqiCzbZSfAKAY8lIBlPx9GOl8IkRZlUiNydVyA0AGhxaje6JPYalDjRAhf3/LaF/IFJ7LjibSN1x2QtV75mnU3eXtajIq0GusM22evZEtgOy+Mt9kEuV8YIeYnBJXsNN8R+TomR0jlTC8V9751Xc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1782743314; c=relaxed/simple;
	bh=zO6dI4/xQQJgYpcvXfIMkWHP0SF0YY5b+WnKv21OatE=;
	h=To:Subject:From:Message-Id:Date; b=j8MDVD1SXBZLHUMebU0UuS73i/CK9De3uE486hxU7vwEUEWJseN0Ud7Kq2jiIGAybhypsj3MSK2+tFxRauvDhr/RfSb1au/sa07YrhIhFYBwJgf6tkeq9k3XuCvJViubdigCm4DQz4WQhLcdumEJo1MSy5ud9ee1FwBRhIVahbg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ADB76gnZ; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ADB76gnZ"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D78BFC19425
	for <ddprobe@lists.linux.dev>; Mon, 29 Jun 2026 14:28:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1782743313;
	bh=zO6dI4/xQQJgYpcvXfIMkWHP0SF0YY5b+WnKv21OatE=;
	h=To:Subject:From:Date:From;
	b=ADB76gnZ1+NEc/36UKEZtxZSgR+hWEGqdagBv6C66QUHe+YUzEBPAtWGcxHcrGJWF
	 XOpifaHTZkjV0Uo59qAU2vIy9OAkUtcPE5RHjoPhwY3kOKbqmpv1zBAExoD+1R40oR
	 BhTkb55QBz2+nw2qCAoleqpMR7JGN4Tz1R5TVdWKlwuYQVOp2L3kVjo8RCW4UWstC9
	 KTeGQ5TjPnzdospMDfpE47wmba6j+IhTv4rSwkaryrf7NwnVR2pLBox9k5am75spTA
	 ycl1rn4rjEiBfxkbtFqHFNfijTKtj7DLJExGcytCRbID0JNvlyWeWtC97ItInaIAUR
	 TwZ0t/x9RN56w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B049DC43458
	for <ddprobe@lists.linux.dev>; Mon, 29 Jun 2026 14:28:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178274331370.16451.4089052140242655309.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: dbeb2b84b9365e91b6834ad58e090326f0f8bf37509a7b8996d48617ecd50a85
Date: Mon, 29 Jun 2026 14:28:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1782743313
