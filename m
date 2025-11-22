Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1BFFA42AA6
	for <ddprobe@lists.linux.dev>; Sat, 22 Nov 2025 12:51:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1763815914; cv=none; b=lkmN0QU/YwJZkSdnt//6J3jQZlnbHeW2KlHrIk0uT1D7hnhbNGNmQg+L3Rap5c+YLeFax35lldz5MW+4IMI153GOhD1E5SMGbiZNN8QBn6GqosELL5eVQzEmA24d6cCjaieChjnnXg3UiFzH8TzQ1zvkYYiaZOgWehW4eHhRIdI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1763815914; c=relaxed/simple;
	bh=GHG74fTtXbea1nVjtpWufwgCkntlv6r9ZzqbDbNxYB4=;
	h=To:Subject:From:Message-Id:Date; b=g5UwjfsoirXkYNWY8jMTDfaOKjhBuGYpQBDEmPclCPe51FlEn7IsRMdHebMcpBuG1ngImu5QALZuqMrh0me06vujmoAj0IbDhE6z2w2OfZjt3Y99tyqrlJeH7fKTKmnUj+OvXVvcvU3vYSUlCoEfAjS1hzPiE0W8UxTXzC2AVgQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=jh5mt6hA; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="jh5mt6hA"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A9C83C4CEF5
	for <ddprobe@lists.linux.dev>; Sat, 22 Nov 2025 12:51:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1763815913;
	bh=GHG74fTtXbea1nVjtpWufwgCkntlv6r9ZzqbDbNxYB4=;
	h=To:Subject:From:Date:From;
	b=jh5mt6hAOnwX2wFeL+gl0JDEWo1BuD9gd/vRLjT8Rc/jyie5HsYSjtsdBPyRRs3AG
	 2XR3xSqwh47gdlb5hKET7KOAxfuOJI7dM1BtQE55BwknUwlbexsXPJFx/zMgwIqiZz
	 5rAFoOJ1Wia0lhV8Rs8Rr8ec48e1upaOkOPQY3Fh/ivHQyW+Z/nunPDpvuK4oGvsTO
	 mwlmgD7LFDcRGzVtqnx5356vnWMV07MFQINClnRfo7aMuk6w4L/jLCDz3/e0TJS1Gu
	 Yyuze4Ma5gCT5yuKLGF6Uo/UxQTjVwn9SMbx4+zopm7f7QlT39SwqRXBfSvE3zyKTq
	 1guDeVtFb5lRQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 97D45CFC534
	for <ddprobe@lists.linux.dev>; Sat, 22 Nov 2025 12:51:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176381591358.27876.14961717149237276044.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: e3e5f450a2bb05a25f636842cbb75b93d0e829630fa6ec4196ebbea90ec665a9
Date: Sat, 22 Nov 2025 12:51:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1763815913
