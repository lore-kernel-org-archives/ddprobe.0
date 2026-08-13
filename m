Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 315F22ED141
	for <ddprobe@lists.linux.dev>; Thu, 13 Aug 2026 02:20:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1786587638; cv=none; b=GRhLGmhugkQzjHKbTSE0B5MB6gx+PfX8jTk+ftpTkJbd1HuNqNJWC4PMHCvR9A324ULl7boZNHH8WbIZJBFO1SKShFaTSMyKdL04Da3fKb+Ef2WFY9d/pkJQyM/7AWpUJGJSg5RyVaEMHIJjsiejNtKHNo3SrP60RhpNAlgQuf0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1786587638; c=relaxed/simple;
	bh=TCpPSG4rskzz8a1/pa2Q80bacYwl0fTGkuqku5BvK0Y=;
	h=To:Subject:From:Message-Id:Date; b=cGXQ8l7yCCJjWh6DT39jWHvvtRLEBSsO/1Eqy4km24xnun1NE42kwVEwuDYK9rgWwYyQgVprcn2OW/WWuKmZNjwi8dAs8u5F8rbehrn3rphQ0QWtTC/d3gc0eHiuWMwu676pP9UzHvfDOJOZ/yhrsSxsPHCeaaSuwjAvnklwujE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=TyEuVZdA; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="TyEuVZdA"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D90AFC2BCB3
	for <ddprobe@lists.linux.dev>; Thu, 13 Aug 2026 02:20:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1786587633;
	bh=TCpPSG4rskzz8a1/pa2Q80bacYwl0fTGkuqku5BvK0Y=;
	h=To:Subject:From:Date:From;
	b=TyEuVZdAMUnx5Dr1QMYj7m5aRXJs7WXAEQvvJx+W69/PZuRPsL2gRT1eHyWCH86jn
	 2Om+EUM2geVjgiOqFWTNOBDFbgutIxFPt9mZy1GfFWg0Ex7VOIj8uMX+CdjU61uLNK
	 i4oDHgeyiCrKXsR/ocN0cdDcEnd/GyPmgpO0XOMKw+JNFOuIZA4oSryL9EuqEwZDXR
	 QaLc7JUcUL4WEbUjKtPxovE7us7vv21ec3lH4l409f6W/pq9FaifI3Iha2piLnJZjI
	 i3tKV8837jMrV2Nr9xokyF9cAx4PCreA54PO4GlulGJuU1Lp80gjC7czviCuPpgvVe
	 E+9LWNGv5JSpg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B6F01C5AD5A
	for <ddprobe@lists.linux.dev>; Thu, 13 Aug 2026 02:20:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178658763368.28280.9578074038078969369.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: d96090b14f557fe6ee88b034d539dd5b745562fe78a0cc5f1ceef89f3c5a12f6
Date: Thu, 13 Aug 2026 02:20:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1786587633
