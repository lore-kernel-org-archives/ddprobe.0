Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 29A331C695
	for <ddprobe@lists.linux.dev>; Sun, 23 Nov 2025 03:41:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1763869314; cv=none; b=ANYY2bwMZabSXC9TIIopAoUr4aHWu80b3VZFJROa54uiJ2JG2395xs7rGtnaGZIB0xiWFzirea4lANR4RphKrjvUrqriBW4a5I45MtIMndDPIElBFZYEs+Xi+jkx+0SdEpK05XZEgIywmlnwa6816WcOeXm17y+dfyN6NKfrKNA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1763869314; c=relaxed/simple;
	bh=grpugYMT7MfnsqWZtgSz6OXzVl8qgGo3qK06DDGB1r0=;
	h=To:Subject:From:Message-Id:Date; b=tSnPMpy5uH20UOPkxdpaWxdC8kDUAyGQt65ttZxQwsQmdYV49I1+aZ3XoqSgHzkCJ8uLa6FR4vIj1D7LMArDdLOEPYdsVTEOCYvU92G/O+wlvmDnx4ymEmEOnKjl5NH1/XRPGs0JfuxBdKzrqrpbX5AK7XWzQfkJVWNmDapwf+g=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=D6Sm23Z6; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="D6Sm23Z6"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AE127C116B1
	for <ddprobe@lists.linux.dev>; Sun, 23 Nov 2025 03:41:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1763869313;
	bh=grpugYMT7MfnsqWZtgSz6OXzVl8qgGo3qK06DDGB1r0=;
	h=To:Subject:From:Date:From;
	b=D6Sm23Z6vLPnk7O3tu4dV8X4FF2J7LgXXqd0ZW+eMr3cPDO82oIT6+uZHO/AhZjCr
	 fdU64iPTP0V58wqsZF/BFF0LAvd5Xr4KgJDIFLwhKOjhoTbjetRmyarrmhg1ZWyVRx
	 SmywFkJAZiQxOEyf038xbxsrUjpcUYg0WAkwPakhhWcSDgXR46X5nbaHVqJgFGlv6Q
	 7XUZ4rzG54Z/MYVTBQoVeLdWGiQFmSOEc0jVjqeio/Vys8FXIcynOtExG4FKrHg0Rj
	 4Wde70QSaZUNLWxHKH2BxePPQRc0APpzwvivsr1pH5WaD/NOueEzxICra5grfmbnDo
	 rH5m0V2a6p8vQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 969D3CFC518
	for <ddprobe@lists.linux.dev>; Sun, 23 Nov 2025 03:41:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176386931358.31750.11143243853033309658.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 5ba1ee3b0fb98f2f54127a812aca50a6fe3e3ed3f1de322a086ff51768f4e7ff
Date: Sun, 23 Nov 2025 03:41:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1763869313
