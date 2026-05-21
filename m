Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3F0DC23E356
	for <ddprobe@lists.linux.dev>; Thu, 21 May 2026 15:11:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1779376294; cv=none; b=CU39uiD25ZilGWZxSpnjLSP5c//vwRliUciL3zfuw9LG6W4/vSSxAEoSCMt0+mK8t+xZj/9dj0YJYljf8ocoLsNb6bijHe9DACVAbXFJrZXxlWUoe5pw3JCn/6aZqtvzGfJAm8qGWwBpQovvec9nF4UL/lnKDM51OZHr3//ZQsU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1779376294; c=relaxed/simple;
	bh=rZ/ifW8qz44WPd3SpEfg9EXUkEL7WSVdWNonzq8oyAk=;
	h=To:Subject:From:Message-Id:Date; b=dkC5IVPvZf3l/LqisP3swOmlCkRkX8aR8RWwlAznwLef8O52AwXkLoCREZoY7D6TLK5nKLmYrGX0SUEvWfNCm14EOH87rcpSc3UwpbrX+PLana2ycBJZW2VG33F/rMMkhQQBZm8tkfB1Xyay2NS+Zbbx+mskW+3lqh8x8VZqVX0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=lruHO04O; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="lruHO04O"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D7A35C2BCB9
	for <ddprobe@lists.linux.dev>; Thu, 21 May 2026 15:11:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1779376293;
	bh=rZ/ifW8qz44WPd3SpEfg9EXUkEL7WSVdWNonzq8oyAk=;
	h=To:Subject:From:Date:From;
	b=lruHO04OFcyyKQ/8JytZILFY5r3adlC0vcVe375ATWvD+ZpcHDBEISPY4M4com524
	 3+2Lxb0a/kx423IqO+R0ZSAFQ+y11J5OupPRhZjuV+ISfoCF1aKvokc+QK6smwXXOx
	 kr/7fQjHR8xeQ9d+by1jq+zOqIWNLFSlMAUm2Na5bmWIVQsBz7QWjkK1RMlZIqVIEV
	 LUVyCTVlviU8xWFXerDuLxbyHzQGnIMPHHS+OlSnYC4LtNPTNp8bUurpbUdqvqoUqD
	 nHuWRf3VKyXBxyrJ7evmLeLWbmqa0UPcestPfG/eQyYO9hg8m3F6/aYfErHMdS6vTI
	 P6MGyT5RBhbDA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id BE711CD5BAC
	for <ddprobe@lists.linux.dev>; Thu, 21 May 2026 15:11:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177937629376.14035.2780980017159527096.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 8c464a5d67982cc4c9e10d77f378105901403b2bb7cd946d9ba40ede0eae98d2
Date: Thu, 21 May 2026 15:11:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1779376293
