Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 091252BCF65
	for <ddprobe@lists.linux.dev>; Wed, 16 Jul 2025 19:19:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1752693594; cv=none; b=PWkNIthQK2g6GuvAa3TT8iZeMS7eek+R8zjW9Aj8cKzHC3+tQPS1th1w4n/lqSD54VEQimpuM8aGCoTvkoHZFQnZn59/RVck/JTqHTE2DVLB8nD5H+SRvalTPc44/TRDRr0UOGSlktJdH8ipjVyzuu4vmAXUnPuE30aeD7rQX80=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1752693594; c=relaxed/simple;
	bh=6phvPZLNcVd3RqEARuhmJYwGpnccBz8bdugpux72U5Y=;
	h=To:Subject:From:Message-Id:Date; b=rXowbtg9YCth6kPQO3JLBtpFv4LsPlIw9YPtuA1urDLjv87OLTi0S2YeG0BCYfmRsQGBKynz+t9FttWJOrXMPZI1xjZHJer68ohgd19bk//RVbyxgKF4K3yoW/IArOVtTLeorIuLdI03C2VVbXtZk8bPz8KcRvLYpL3fhcyBGGI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=HVDdbxBR; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="HVDdbxBR"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9DCBCC4CEF4
	for <ddprobe@lists.linux.dev>; Wed, 16 Jul 2025 19:19:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1752693593;
	bh=6phvPZLNcVd3RqEARuhmJYwGpnccBz8bdugpux72U5Y=;
	h=To:Subject:From:Date:From;
	b=HVDdbxBRnF9mah6ewZipz6Te9yp4Sgjm5cg3JmlKGJ/5gK4BnpscVU4U4Hq1cYCB6
	 dtcTcVCL4bs/IcdDsjY6fwH1xeNcAO0clpQFFVQf9Mib6fhGr+Ka4S2ssY5hD/uWiG
	 U5Cv2VnW3P14IbFBNKY8r3VhFQDlafrMUIxG9XXdElGwXUXcmMjeV9/mTA84Ogx9/b
	 2KTXknsqHFu0y3ih/SOKBRtbISN88F75vMQ5/hFK7AzaD2a9heLd9IFQXHbwi/BlMY
	 X2TSfOQAxs37kE/NeIG6mJiaJSEz/gw6eot2t1LZrnQGmZ4ASUAGtP/VA71/fb7mgI
	 ZtbZgz+ntyzwA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8FB63C83F22
	for <ddprobe@lists.linux.dev>; Wed, 16 Jul 2025 19:19:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175269359358.19551.17210348516153741262.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: d8a4754a540a642298d8d8bd60f67388eff4ac6b67fbe69e3cb524f5e3aa5b8c
Date: Wed, 16 Jul 2025 19:19:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1752693593
