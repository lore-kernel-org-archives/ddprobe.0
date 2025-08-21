Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C28512EC549
	for <ddprobe@lists.linux.dev>; Thu, 21 Aug 2025 14:39:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1755787193; cv=none; b=u8w7f8mRmLKrbSYJld/n+/Zd7ex05LFndCy0mS7Bgzl61fHJGIxwEkNS89ZfFhGi5BceQ6MGkzDk+ScVvuGaZoo/mX0McrCaYf+UrG5Qj/glD5N+nMS7HF8y6hDS6w7rpHw8w1h2bQf+dSHfIo9FIy26PNlD8m1PWpgt9vGExGI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1755787193; c=relaxed/simple;
	bh=F2v9tm68M3b1TgDkaDq32Ai2DeaHrfuEBSKE5CyEc3o=;
	h=To:Subject:From:Message-Id:Date; b=Nfw0DKct/MDU//gCcomu2r16tWI3g9xQSeFcAB77QYmaOeLdkl29txD6n2Gjef9Fq1IOunc9UapMFykMHrHz46I/DZJUBeWOiSrB6AjgzZkcOKbRwJplGnLSRJFS/+QMCzjdLBsBQBLiuvgUEuIErkHJmqxNxMJLjLEcpivhD7Y=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=gvmqFhIB; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="gvmqFhIB"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9B1AAC4CEED
	for <ddprobe@lists.linux.dev>; Thu, 21 Aug 2025 14:39:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1755787193;
	bh=F2v9tm68M3b1TgDkaDq32Ai2DeaHrfuEBSKE5CyEc3o=;
	h=To:Subject:From:Date:From;
	b=gvmqFhIB5EYXsOO/dLUzGLhjb2/GwFCsfnoBjMh0WjksL0gPmnalT7F3zmBWtB//8
	 Gd0dpyHfCzZKDHBs+/Np0zGLHgWM3GkLglONcEesHnteqWJzHrPaOuAuYJBDYrCTMk
	 l9wLEF1VS9irUlyZ8S1PChj/tjeWOJB2Kw44c7/1HbJgPoYAlmcSBN/2YtnOjXmDj5
	 0BvB71uxP+re99URhZyC5qwsOG7ZdmpimCC1WjxSKbuyUfXabjHKI6L6TupquHSTBF
	 GBY2qZNOdNrFA1x3wjVKatAfu4admMWqyf8BFQdq8vsjCiSEOcQNVzGypbL0m6idD9
	 6MYlwziKEP3OQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8EBDDCA0EF8
	for <ddprobe@lists.linux.dev>; Thu, 21 Aug 2025 14:39:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175578719357.27144.13868208348067515082.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: ec9a5d262c2778b0aae836e864cab59108c37ddd2b52ba500a0230b497467bdc
Date: Thu, 21 Aug 2025 14:39:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1755787193
