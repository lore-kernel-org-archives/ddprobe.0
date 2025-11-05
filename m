Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1FFBE2C15B0
	for <ddprobe@lists.linux.dev>; Wed,  5 Nov 2025 11:09:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1762340994; cv=none; b=gUAMxV41Wc84HOPVI8KgqklVcfSOXnqP2P76TZIVdXziZH4YM7opNjpHgNek39AxGffhvXen2YI6bAWQx1s7C70b6a3kIgB2syrURU83gwX8Gm4eQnJwMJtQMRka6cZsJouMrvMAy1OoBPN1Pa/wxKofgaM9qQ/6yInwAb7CdFg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1762340994; c=relaxed/simple;
	bh=rptPtuqsd7ax9HcWCGM2lNUHihYgfgT19TKqguToaGQ=;
	h=To:Subject:From:Message-Id:Date; b=kE8TXe8KBT7ffAlH+Js+LXPHXUSDqy/j+4gM9gWE+gl7T0fEyFESLTNl/v/VDroreNP4qXGEkTANZoVnrgCzopSt5kl89WHiyZ9b0oYUkMD2PCJYJ3Kkue2jKl9mPS3GPcfkWmVAaEJ38OPOp7vIepm+zZMDvbHdDD3XgiPJycw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=FmQI5/vz; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="FmQI5/vz"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A0D95C4CEFB
	for <ddprobe@lists.linux.dev>; Wed,  5 Nov 2025 11:09:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1762340993;
	bh=rptPtuqsd7ax9HcWCGM2lNUHihYgfgT19TKqguToaGQ=;
	h=To:Subject:From:Date:From;
	b=FmQI5/vzcGfHHLg1q9LmTNkdxaop1vqfRc+PptdMVIuiirb7yL3neT6sHbGOI3HCG
	 q9tZpKSxg/Czb+XgF5y3+jahQ7q9FLrT115bEUsAtMx4sN/adDbeKFVmX6XD+ZSdZt
	 TqS+DkCpowcBo+Likb7q6Sn+0MfHtWghLzK423QtWtPKPAzZSmLmiq0Rve2cfeDerz
	 NTR6z4xSgRt3v32eisR9uBsGGfNhtXk6lZEivw+24WQZyWnu6a5FyFqReORkAQ0nmY
	 2gu9Fr01O1Snu7zh14rAVNVYiIkiX4Se/azU6RuJ2kL39Z0fVOSgODbiBPzRwJIy9K
	 SKQUJ6MEubSUA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 939C2CCFA0D
	for <ddprobe@lists.linux.dev>; Wed,  5 Nov 2025 11:09:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176234099359.11612.10669792119424668013.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: eafe94f3bffc5392260d30cb3e6c1908b11d11506270a8030e8723917223870a
Date: Wed, 05 Nov 2025 11:09:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1762340993
