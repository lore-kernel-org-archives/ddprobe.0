Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 43FD914B086
	for <ddprobe@lists.linux.dev>; Sat,  8 Mar 2025 06:38:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1741415934; cv=none; b=LqM1Tq0mxasxRHivQlwpoB5IbF3c1js3ntlX20lDCC90L9N1xoFGsYqY6Zxme2AHg2BoahwN4RlvqA5Y6z5tCYu7gzechBBfQEFN1+M8OiqUSjU5gOsRUd5D2AhgxEQXwuS2CYcOtYvv9DAbbPkEmd1MzI763QXkpGy/bTDysZU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1741415934; c=relaxed/simple;
	bh=rRWpYpStOMU15fPVhL49Ybg+Uw6NhKiBSZ52YWdm0JQ=;
	h=To:Subject:From:Message-Id:Date; b=spVgQGoMdmKvq6kAZ1LptqK+NbPvPL82GbLAW5Mt6SUjnsSvpCcRTynDw7b6VwzivpH6CzOMB5mX9oBmNBGgn9LUCZXxrrMJ8+Py3tNk4VFmfs7pIffMSSQkHkS/6fVBqvkxeT9XKf1xRedFcdq7iy3vNzedBhMx1ZL4GAd6W7E=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Le4Ij44f; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Le4Ij44f"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B233FC4CEE0
	for <ddprobe@lists.linux.dev>; Sat,  8 Mar 2025 06:38:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1741415933;
	bh=rRWpYpStOMU15fPVhL49Ybg+Uw6NhKiBSZ52YWdm0JQ=;
	h=To:Subject:From:Date:From;
	b=Le4Ij44fKAKsE3BSmc8/402QV7CbyhDTJbn79PC39ut0ZzJ17EZlJ7jpC/TxMyvw5
	 3YXezyeYzCG7w2B8hxMXGNRpsQRzh9XaNvTaVIl8DBkw9Lg/IA/XfxFJkGY0KTOX39
	 0gNQxWig+pz6xVcZIlOQBH/9foFNY9AccdEVwPfzzd3BpFyweCIqlaNQoee83kctnx
	 lWYi7YF26734NCvQGnbGy1i4yv/VM+dLsrv+FQcoYqy7F3XCub3/axPw/vumj9G/x7
	 DHv3UbEEVjCSubPEh3+XCezkkoduEqj0dUmPjf2EbCdge9Fk8+m62ysfwoQ8Caluez
	 T2lLZuolgYOuQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 95091C282EC
	for <ddprobe@lists.linux.dev>; Sat,  8 Mar 2025 06:38:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174141593359.15079.16018237669064707677.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 8e8f8efa73c3cd23bd023f2b69627c21b28fa56eb779272aa5c038163c35ca46
Date: Sat, 08 Mar 2025 06:38:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1741415933
