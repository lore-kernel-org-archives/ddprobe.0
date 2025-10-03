Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 22CF01A38F9
	for <ddprobe@lists.linux.dev>; Fri,  3 Oct 2025 08:59:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1759481995; cv=none; b=mfthXXihaPFmi6YUzSrgQx31yAZe9RWgHolZBS/3z1fCHRmL3jcCUs+qKPgr7+fOMl7ju2V4S21vOiBfLqta1qDc8BbQ2Rc3olDCU2D/ns4lstBx5fbh0ZDf/LzqxTVMikoJ3SN3sdP5EBlucPey7R5e5tKoKzBP4nqtzQ8f0EM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1759481995; c=relaxed/simple;
	bh=6wjQkd4e25XMo/qsCgRHhqIc7NRVqhVdZxukasrxoho=;
	h=To:Subject:From:Message-Id:Date; b=ZYbiZeALj3VRE0+UnSHy8GDFQxPkRxrjV+3jjSawFeH7Wo+pxCreQKG5cbPQ3ro4dUVAKBPuK8NHq6ZCDto5H0r6FCzVyBgO9mq2A8RnYCt8HJamrdGIi4qf9PRzN0AksG8OC6FiD/0fgM3nN643WPvkG1nQ8zzj7Q5rbeHxs0E=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=dAd+kSSv; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="dAd+kSSv"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A4E8DC4CEF5
	for <ddprobe@lists.linux.dev>; Fri,  3 Oct 2025 08:59:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1759481993;
	bh=6wjQkd4e25XMo/qsCgRHhqIc7NRVqhVdZxukasrxoho=;
	h=To:Subject:From:Date:From;
	b=dAd+kSSvk6EP9JfnKAdJz2/NiUWhys4E8YkN9uRCkbHOYJ4LQea2BS15u361SgVoG
	 ZMs6NhM8pcdhjMIcUg8PfvnXc8meMg5ETcha5U+G9UkSbMR7C5+0oG8jU3rWNcA0MP
	 CwtTN91ZTuP0YE6r/d37nNc5Q94I72hg7vF6zlue7ZC+e74sQgUEg1N5HjMvUeL0f4
	 nSFk3htwj+ADrjwUDlYPlwbOT6DZuhs9BPb+FgUQ5B1Xhq/VsXiEpV7XcQGdyB1Uhl
	 p2c1b6OIEbqPUOCh9JoXU4xT1O2EAw6BrsI+yZwshpbtpV9yYwAIP3SWyfVetfYM2X
	 ucG9L46l/A91A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 91F1DCCA470
	for <ddprobe@lists.linux.dev>; Fri,  3 Oct 2025 08:59:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175948199357.30218.13329475374801508440.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 236f1422ef2a2124804cea22ba2ad3704b18753542fb6d273d274407f0ea5d3b
Date: Fri, 03 Oct 2025 08:59:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1759481993
