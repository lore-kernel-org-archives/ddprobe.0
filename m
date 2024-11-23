Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1A53344C76
	for <ddprobe@lists.linux.dev>; Sat, 23 Nov 2024 05:05:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1732338354; cv=none; b=IoA4GEGNngIotWxSIe0xff4kGU94tOKR+2W90viVi+2BvY4DSCwIDr1fMpKSsJ9DcYEi/Rzet0Vu/g/qtYXvQjXi7fzJowAMn2JD6bw4hkA2sPB9c/qd6xqDN9HPDvgkxGPDQ++TM2W91n2wlltZ9jWvkfdwYnQLoWJbSio/yNw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1732338354; c=relaxed/simple;
	bh=QatLoVJFgytPGiTM4KE10Lo4K92DxOCqk8CYRJAnduM=;
	h=To:Subject:From:Message-Id:Date; b=j4sM7h9nRAQD0mJHphiVuBB3MbCSM/Audj7une1RlWI//Vy3+VN+7b/iT+FJdqUm/O7NwPRoaloUznyhNoyxvf63CNRAQe8az2Ei98ImAgeH++kptff6Www2+1aiS9o442nbL6kJOfkE8t89HNRYJ6xG9i42xiS6y3huErlS6/w=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Gb8g13Cl; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Gb8g13Cl"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A8685C4CECD
	for <ddprobe@lists.linux.dev>; Sat, 23 Nov 2024 05:05:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1732338353;
	bh=QatLoVJFgytPGiTM4KE10Lo4K92DxOCqk8CYRJAnduM=;
	h=To:Subject:From:Date:From;
	b=Gb8g13ClWKD5Zenre1Lp0mlm38xvB3qGABhYgstEtdhJ0RUQ+QMZkAriWImFmrbYX
	 42MfspoNEhv1dDCloSXr5SOATfWSIUdQwzH0X6P//V+hYJlxpnMFOVYkCPMmnLGOAc
	 mQ5nKE8Kxk8H2ZgbVYmPO7Hq7F3rfduaW+SaHVr8DbJSQzXTMsQDmTpEOOEaroXxpI
	 fVaDAYGmzQGhGaiXsrrSrzG4+bjrtr8xQ8e4yJYcjgnK6oSsIXornUuqmw19HNFwnK
	 XpA2zN7NvxEp15lOW3J5ykXh6ptnV7E0POuPiWtJ5XgZw5aX92t+ryXcBK6TQD0SX9
	 CarmALtLwIbtA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 93E02E6ADE2
	for <ddprobe@lists.linux.dev>; Sat, 23 Nov 2024 05:05:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173233835359.23812.17877685525617073480.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 0b720e9ea691fda582424b97033ca6647f64115d5bdd938be9e750d02dbcafb5
Date: Sat, 23 Nov 2024 05:05:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1732338353
