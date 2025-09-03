Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2F2D02882B2
	for <ddprobe@lists.linux.dev>; Wed,  3 Sep 2025 02:59:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1756868394; cv=none; b=IoHZ213i22rt0VPjHV0zlvvAUvD0i38iQRZXDqF3VRtoy/eoEfDHetY4FQIjLQV+rgfwPIBrmA10qXUEFOe88QgiB1++KEFmNXZZEfaukdAy4pQVARWlm4c0IiPdBgFVJHkR/1gREqNz1+sH5l/fAS8RC6+gN1I6PLfry7/S/No=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1756868394; c=relaxed/simple;
	bh=8LSX9B941rQ63uc1uX5IHmACCB/dORKkZQd6xAQK14Y=;
	h=To:Subject:From:Message-Id:Date; b=O18IT4anADJJxaL9igq4A58hSHIbSZyDmLspS6xF3eB+BowNuGvgPzuGA83gvOEtHUk+UNe7vnxnXC6uo3rqQCaSYha+lnaxeWalo31ZoPVVQMEOtFF8RJKw2cmvoLX402liF3NEEuG9Kzp7y4HvN1gT+R/xH4IR+A+H5/1pGmA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=kNgb0gjy; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="kNgb0gjy"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A4AB5C4CEF7
	for <ddprobe@lists.linux.dev>; Wed,  3 Sep 2025 02:59:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1756868393;
	bh=8LSX9B941rQ63uc1uX5IHmACCB/dORKkZQd6xAQK14Y=;
	h=To:Subject:From:Date:From;
	b=kNgb0gjyIqbQEMHAWPuE9zaOKc1uRGulOR9JzgbJsKQ2oV+ccFRD3wivwADvZjD5i
	 +Rv+WGTb/jrM73VFnMguZeJDcKyU2CDUHJw9zF74uGD7hfA/zJlxYYngERzu/IZSci
	 lY6CJuA48uwYHRndvb5M5VXq6EJcTb4kY92j//+8iNdbme0As32aD9bo8BPAEsxeAJ
	 D8HUeVKihzAY7btb6Tft7GM93Mws0Q4AXGEOlzbmMlSe5JmMk6Ip0nW2Ah1mYdubFm
	 Oi3Fssqu8Tpc6FHajFeQ4N/pE1fLwkMubbJ5l+sANV4BGHLSo1+sFKDttykOoxMH+L
	 9wzHBpgoazrbA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 90255CA0FED
	for <ddprobe@lists.linux.dev>; Wed,  3 Sep 2025 02:59:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175686839358.21832.2814651303016427557.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: e9071b3698975454831f63b50076236672c01d73c7105812d5ec0d45e3f335d7
Date: Wed, 03 Sep 2025 02:59:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1756868393
