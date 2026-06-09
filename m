Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2C24E313E34
	for <ddprobe@lists.linux.dev>; Tue,  9 Jun 2026 05:14:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1780982074; cv=none; b=sjW8sxxZV2gq1SfJFsJVXySjikAsStIvDC2g4UqiwYFUF1JsLJlydpV569KfHY6CUN/qHXaKBFzZo1pqgd5gr0qfMZ/bIeu9/9LabW2NrmTW3kghbUgNTwOqJ3GewRXvS7icCRCTu+UGF0JNs0GCHMFoDoSovcylcjQyqkZbcx8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1780982074; c=relaxed/simple;
	bh=f7lbVmMJh3S5hvm17wifoiC9Oh7/SsqFqXxjbTjdELE=;
	h=To:Subject:From:Message-Id:Date; b=TjjwaNNT2R32Y0Pg5gJaVRd5DwEw2bB40B6fmWfRh2XUdERJTY8zNVf57V+HiQEq5kZ8EwS0rb9NKQLp54l2kHOjTyCfLXe+0m5jNaUXbKdpNkD7qtioygNSu/3v8Rd4iNVhlqGBD4T5s6h2qDwBYyhE2GjVRntK1ra6ZrBbBD0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=YJ8+VJ5d; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="YJ8+VJ5d"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CA396C2BCB4
	for <ddprobe@lists.linux.dev>; Tue,  9 Jun 2026 05:14:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1780982073;
	bh=f7lbVmMJh3S5hvm17wifoiC9Oh7/SsqFqXxjbTjdELE=;
	h=To:Subject:From:Date:From;
	b=YJ8+VJ5d8oYtE/edi0bTyq3sJHHKkTsacEeA4tWwl56FAo1OycdDbEid8XlpIfM9n
	 usw4Y995Tu07NUomTUrrVD1jULK9pgxnCbpNSUoUxIdXxKpi/IOLxnRGmoOpbBIE4i
	 4TkN9bgS6pgudHZWnS934NmYGxhTcUZxnEH+BJGcBZgbwnivYQF3B0tNZHOem8bF7F
	 tg36iXiQ68761tbBZz3iLMS0Ishw5IqpbprX6nqMEqh0QmSMBUI3xF0lJfpHZxjIDJ
	 GLaBNIS9ooeDYIl5poJxyVf1wd/oB5G/hCHLzAKPAp2hxUuiHgw+jppvF9JeIIcX0M
	 Hd6tcfTZQcgNA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AE9D1CD8CAE
	for <ddprobe@lists.linux.dev>; Tue,  9 Jun 2026 05:14:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178098207370.7067.3753028587934061452.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 04d4ca01e8431fb5809db5dd0ab999c79abafe2401a5c4ead36e2704b212fe4a
Date: Tue, 09 Jun 2026 05:14:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1780982073
