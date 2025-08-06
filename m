Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2A6A0194137
	for <ddprobe@lists.linux.dev>; Wed,  6 Aug 2025 20:19:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1754511594; cv=none; b=r7F7D8IpdidwYRjFX9G/0xiThkz57OliPHiVm8Ao38xNdOF6Q/LKzzMTzzuj/s9sEDhuBcfIfCvVDOHrFo9aFhpx1M+VT+prpiBy98V2bYCxA+S5nmMbKJpJrb6w6QEzFJ2JIRvLyNA0TcyvuGM89lnRVvif+MIXrOB3PIjpdDs=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1754511594; c=relaxed/simple;
	bh=sbs172bwbxIh9FHberxQDTZU4KyjPWtl7vtL+L7018w=;
	h=To:Subject:From:Message-Id:Date; b=KrOjHfTmBINW7G5jIKrauKW9/m9zOTpdh/GF6v7XPaMWIFg2mXgtCgrUk8bo0PFJfsMqnjbZyO70m9lgQCFbeN0fNZyU15Y/u5cWZvWAQxjiSdpeK12Amp2FUEQPMFdNAhnmgGHuB0FCeQ1H3+h8/iAvfiLTaJ0qPlXmC1ilaQk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=CiEQMzDi; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="CiEQMzDi"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A0B04C4CEE7
	for <ddprobe@lists.linux.dev>; Wed,  6 Aug 2025 20:19:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1754511593;
	bh=sbs172bwbxIh9FHberxQDTZU4KyjPWtl7vtL+L7018w=;
	h=To:Subject:From:Date:From;
	b=CiEQMzDiBNcVjfBlxE+MKE8rq/cfOvE21Z5xTW3t1j+NpUX7ZZxa7szBJ/4EhS/EW
	 D7aXj/P+gphrWjCfHdzvpc6hbqN2PZhRka/Iv1IaQhJZFI+3fGPU6VCxSYoGCQrVnS
	 M20AKFWbu6Q0mzfXqSumjnYcAVbpiNQiXcF/cITmIbWAMRO50RsCNvYUmAYQjCgRxJ
	 IZ+alr/uPEQOpQ26KoAxaYnBJjlY5VegBEpTjG6GNWKmVjn0KfN92R8wBmi5phUdya
	 ME6l9svvPeGL6Zbe1MjvBjvbpoKCX1iLijiQL6iyIVo5O+mCAS+6AXCztrsihAJfdd
	 e+b54DAv0tvLQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8EC90C87FD3
	for <ddprobe@lists.linux.dev>; Wed,  6 Aug 2025 20:19:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175451159357.6780.12712202287185841614.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 2264b2b6faa1a0a6f21ab7efb9643f347227dc4d34f1891afba06c57f9df6169
Date: Wed, 06 Aug 2025 20:19:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1754511593
