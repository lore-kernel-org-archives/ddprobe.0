Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id F02E515534D
	for <ddprobe@lists.linux.dev>; Thu, 18 Apr 2024 08:49:22 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1713430163; cv=none; b=LdbA4pQJlZSMq33ecNGVqWs8TXngcBycbCzUuYQ2tzUUpCtJJtlSm+MPl25FuV99z0GTJ3cDnfmvaCtLFFX1vk5rrCRmdh5C/1H3CgTN4D1ZlYVFY3tFlXe3XazGByCTJC7wtZdQlZlJTuqmOiDX1Uu1Ap7tpnLpFn7/3MOFIc8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1713430163; c=relaxed/simple;
	bh=weXkhm2aahVif5GPjnJNhCtOIEEBtAqoe5vq4p6IdUM=;
	h=To:Subject:From:Message-Id:Date; b=XmK+TFLE45KCw/IGlxLNr8ZZEet382jjRliOnKjsTeq32vtfTyyI+Pyi6IU6kfz1i9UJRIL9t7pUv+w8EAOwVxjRN4lZkdy+JorcX6+Jsg3x4xaVRQO9DvuVAbfSOg0NlShptY9xHh3nqy/QPqeYUlSbUg7xQ7m9E/rBZXnAUD8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=py9gnymi; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="py9gnymi"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C5DBCC113CC
	for <ddprobe@lists.linux.dev>; Thu, 18 Apr 2024 08:49:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1713430162;
	bh=weXkhm2aahVif5GPjnJNhCtOIEEBtAqoe5vq4p6IdUM=;
	h=To:Subject:From:Date:From;
	b=py9gnymio7C1PY+mLeRNP/e4OLXa9p+ZkOTSahtWsH+4BTAOOmpREPmTTkpxj5Pzo
	 j0i40rggdGpRDU3Cppm/r/+QdLg4TuRn4mfPJxrib5OoqsWP5D/tHyxAhZ84S8Ym1/
	 DJOk1MVdGWLSV/suxaFtUweVoGOpa5Gu+woHrepE5aifiqJZi3+3/M7gwCg+ntDGIr
	 3qdqfWP6uZyVX/9AomqCFfvvC48PuLvspmkID93eoCLmZ4PSs4WQg5liAzYRTKkkhX
	 lDKGwTuzVIe9bHc4SBLWgoBwwDWncoEZYVRGL44VtvdexLBPFgRUsY7kz0yP/LuIhB
	 eOR6+WMyqG8Hg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id BAFAEC4345F
	for <ddprobe@lists.linux.dev>; Thu, 18 Apr 2024 08:49:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171343016275.4047.4474786660899420965.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 6607cef5adf0704f3642af7ebaca7f15a30f3f18818a501236d15f8059202846
Date: Thu, 18 Apr 2024 08:49:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1713430162
