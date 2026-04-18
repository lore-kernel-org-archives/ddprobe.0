Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 28C9C26AA91
	for <ddprobe@lists.linux.dev>; Sat, 18 Apr 2026 15:47:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1776527254; cv=none; b=UDNZ9TLMhxW6iLSn0p9zDNp9TyoVgMtTNbBCyeRT05ivtvIK2Dt5iL2xiI/wqagLJN82BdCeD9kvnaCaKImDLCtNumS7S6UJ9ilOILfZnbCrLaVshYwxosdvDVdTpbAZtv5N2FPpuSBO73bGMLfEpErEVmSo1gAwDWeouobqUDY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1776527254; c=relaxed/simple;
	bh=s4OJsVI1KxhpBPAJlrrH4efNoE0LKdQbP8s/DkOqIl8=;
	h=To:Subject:From:Message-Id:Date; b=RxsN9L90BzELUMm5ytkYFxxhK1b2N9/NXcwHqaYJwtax7IXhC7ig8f6bkHtHtoDHRuERSFOqRz2XKKYptqBSGzNLX5tevnaezaty+D+iRu4ypMxGS2Uvvy0m09u33X8y2Num3cnUTqIR3BsPQV7laU2ZO+rfJSsP/Y7xfZS8Bds=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=CfkIf5fk; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="CfkIf5fk"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C0F89C19424
	for <ddprobe@lists.linux.dev>; Sat, 18 Apr 2026 15:47:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1776527253;
	bh=s4OJsVI1KxhpBPAJlrrH4efNoE0LKdQbP8s/DkOqIl8=;
	h=To:Subject:From:Date:From;
	b=CfkIf5fkh4jHqOgN7M0oUPt0Gfoi+WCMTtA/qmbHf6mZs6O5aUb8oSS1cHSxhSXPD
	 CArOYGLST0ndAWY/Fby1a+APlmpw5DLtWoviswDNdKDQpU4nUZ6LSbZr4yZ/1mzn7r
	 yMSlZXjM93PkX2Ar5eBn7wgXnL2PH6tAQAd5cJB/FB6WPom47mUb1Us82sIuve2DQy
	 dl7UEQHLYCyxheTzXgRmaFZDYOVvJaGIz5JZbc1yYYGsTIUro1fhGPTA1cZR5lutAM
	 SrkOBJEfVMksGJSRvDbPON9S49BRiJ0Vh7Fbz4xcohVB82ztNrfP4YJp6dT8XFOi7I
	 ErK+5BI5I1lYA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AC8D3F99C72
	for <ddprobe@lists.linux.dev>; Sat, 18 Apr 2026 15:47:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177652725368.2500.1458322630432709521.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: bb7770fc3fefbf3f3e248fe07477406e5775a331a55c1a6d9b8de6f494abc99f
Date: Sat, 18 Apr 2026 15:47:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1776527253
