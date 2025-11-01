Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 11B8815687D
	for <ddprobe@lists.linux.dev>; Sat,  1 Nov 2025 05:59:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1761976794; cv=none; b=MLJEQj4LItREytXYNNpoNFeykCtaYZpxiw/qlLOZ/ciMkTzdyKElvIjTnZEwqSCBUZrx69cElRGSAjVshMCFrzO0t+tJVz9HNZVsqhXssM5APnq+aDoWaq88g6z4lp4UhqnRNMJdq64mYVbwnBXnoWns3JKkO5pkXhTLwz0Ervw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1761976794; c=relaxed/simple;
	bh=SAONzztxEMctRIMma0tRik2uUkrmM6//lJ8t6SckJ3M=;
	h=To:Subject:From:Message-Id:Date; b=llUK+RAk5V0SrFU2l2T5fAqotYl5bsfkRlOylK+CYjbmITG5WbbHK95oIlexaNEM0/LmR4l4UnZQ4UTT6NU0atqhJqI1nUsB+869oJ0WIGDgydCUqUGzbtFlWxuFkjrDwycmCr9vJplAFacBt6KlD8SeUlhzl/mOymNcv5M9yNg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Uvftlga4; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Uvftlga4"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A7D28C4CEF1
	for <ddprobe@lists.linux.dev>; Sat,  1 Nov 2025 05:59:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1761976793;
	bh=SAONzztxEMctRIMma0tRik2uUkrmM6//lJ8t6SckJ3M=;
	h=To:Subject:From:Date:From;
	b=Uvftlga4p56IBG9y2AzrW2B5cA9jnbfAGZuuAVLl0bvI+Y3Nzyh6KdvRK9U3UyAoH
	 rWLMSqbopIf34tTpw4Rd/ZPM8XC7P2pmh9jRrUAN1raEAhOjz0FExlcAU5SlEIqZVP
	 aktReJ8yhTSFgoiy3ExA4rwtBIdFczr2iqMWxQZ4Y3FEdi1oms9uNWmClozdufrhw3
	 m7vYWU8RqmmJglOlckjte99r8DfXijLbLqoJKmS2wldV+8JHAnkyseWcjjUnH17mBO
	 tKSbEa4mhPnKPuQgNxM1R9t62+QjhUtbv6LIuelwDCUkL4QyTfXWAy5Nxe31tqNQOo
	 pLP9bM4LMLFUQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 956A5CCF9F8
	for <ddprobe@lists.linux.dev>; Sat,  1 Nov 2025 05:59:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176197679357.26828.723732720686610557.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 99c71af943bcdcfb1a6ef6c4baf34e7f0cce834dbaed9cff4b1df1ad91a42013
Date: Sat, 01 Nov 2025 05:59:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1761976793
