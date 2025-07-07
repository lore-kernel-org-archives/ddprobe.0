Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 250F028E7
	for <ddprobe@lists.linux.dev>; Mon,  7 Jul 2025 01:39:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1751852394; cv=none; b=T1UW5LrWhIZU/mjn6l6PJU3jnRg1/UUn0Rpl97fYdqHTiHsSrzyoynZY9su5E+Vp05xbREIoETXoecVlP/u95zHzSQL6EfAISTcYXzOPdFlXGhEY58PeydEkFpVI2SGWXpp9XTXke6t/Vm/ADG0D7wdcl4Gmy1TIRWBsLcgwYn0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1751852394; c=relaxed/simple;
	bh=5bdqxcVRF2BATr7AUpB8y1VyFAr3HTd7du6Evm+YqUE=;
	h=To:Subject:From:Message-Id:Date; b=dx3m5bvuFbXGN29sjD/7QtcQmO6LLn3JtlFQNHs3gV0FNnjgEWQczHo6NKK19P6OZV84MAtKXolPyDm//j/I7zSi4CfmFPTxoCIGbGTQpP7iCXXU7jSFzIh9xsiGiceOkb34m1/WDUJ7/AXG84Pdn0mfhBgcghVswXyBlPfRHOA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=fbJakbr5; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="fbJakbr5"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A0482C4CEED
	for <ddprobe@lists.linux.dev>; Mon,  7 Jul 2025 01:39:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1751852393;
	bh=5bdqxcVRF2BATr7AUpB8y1VyFAr3HTd7du6Evm+YqUE=;
	h=To:Subject:From:Date:From;
	b=fbJakbr55J4Vfu6iPM4DXTr+CZyyk4eSg44YxHvdMsGD86M14xAYmiWuagZiRKUhh
	 yO0Prf/U3jCDlVQzrYLhoA8vBWdlU41pmbEQbumP1c3sNanoY7CCWiMR52fbA6MR+F
	 yW/u6TQxAEBNgq0qLEH8bcvDp8KGvst0jRrO3ZjtyVMkVMpZ1/4+pU6SH0kOdq/f5c
	 LTIGdszo8qTlEIZ4DrYgbQ+84j3PhbrLu/NmrExXhnjI7e9btkMYgdfFe/MdKm8vy7
	 cYjuaqcbJHIgHoIhgRA6mNwotRUxV2Sv+xGA4+krOq1RSSgR04HT+BbskGNiq87Wvm
	 Y5g8IknxhkEYA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8E299C83F07
	for <ddprobe@lists.linux.dev>; Mon,  7 Jul 2025 01:39:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175185239357.4620.13178215558340336688.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 68ba87a82d035a0cd5cad8f2e212906505b0878c2bdae4d7ed2ac3f9713d5654
Date: Mon, 07 Jul 2025 01:39:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1751852393
