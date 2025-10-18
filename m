Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 28F4638F9C
	for <ddprobe@lists.linux.dev>; Sat, 18 Oct 2025 22:59:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1760828394; cv=none; b=QDeXWYWFWWwYsS+pgaykAYJOJad8dJy3Sf5NZWHSSOtdqHEKl2fEKlW1tRG65lAfZXoNAysHTUarUgBqoFLxvsfq6jWyv4XHI5zyvpltcd+oedcNqI4OR/Bfka//CRLFBQXRsEphc0Rup/vfw5e47FRonUYfqgv45okbU5Wa2DA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1760828394; c=relaxed/simple;
	bh=kXDUa/Sr9iA/oUhA7M/V8lw/pe9MB6C2K39M0Pch5Io=;
	h=To:Subject:From:Message-Id:Date; b=eyJRBxQU1wS502vr7N1vwgPaWXh68aCQETiOmzE7GhwdLloFucL2a09QjMVMXm1Z9uPKXpDOPxF//pRPGUu8pYAxnnOQN/x+yuNZOica+SKq7+vijqvYIjuEfqyyRhjgzCDaIGQ/h2tuA0P/EZaskaKf7Y2MW9F21FsaH9r8vFg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=q5+PN3l5; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="q5+PN3l5"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A862DC4CEF8
	for <ddprobe@lists.linux.dev>; Sat, 18 Oct 2025 22:59:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1760828393;
	bh=kXDUa/Sr9iA/oUhA7M/V8lw/pe9MB6C2K39M0Pch5Io=;
	h=To:Subject:From:Date:From;
	b=q5+PN3l5ixrF12wYP6ynLXeHuDaEsbE48eECMpUPfK3DO5fEdEnw7kjUT7vUtc2jY
	 /MIXm0N322rVqcUeebNwu6WNSGBxPwHQilcOZb378KJRHeUCZbaHYiMkiIGafoagLk
	 ULHYT4YwxFNvLvqpcHnmEVsfKYkrk5yKmCQTcK5qxxiUMQt4/Md0ZMeS4zUajJFUse
	 3zBOt5CNImbX8De45bO8zZsxDkMYADuxRCXLWO3GX7G3jLEDuDdcIZ8nDvbZXXyRF4
	 U5I5BcdvdHocjAQ1gX3LnVJv+xpnCw0YdA70kwJLreQd4TCXaq50BSUySMy5hgcr1V
	 KoZ0eaZecytyw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9213CCCD193
	for <ddprobe@lists.linux.dev>; Sat, 18 Oct 2025 22:59:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176082839358.8109.10878252821009869684.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: ed61fce3abd1113344eef78030761a31a4651d77f31a9c1307fc2e960c1fb3da
Date: Sat, 18 Oct 2025 22:59:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1760828393
