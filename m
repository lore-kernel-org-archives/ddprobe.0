Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C75D47082D
	for <ddprobe@lists.linux.dev>; Fri, 19 Sep 2025 09:49:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1758275393; cv=none; b=R34jCQ3e/RP4u3FnRoO1xKd8OK20n6vb+DaAAOlebGE0k3ZEalAntuZOkSzBhLIVdE//w0m+zcnjIKu4NB/2u0AKH1JMstBZSipfiXqTnzxFvVqLnOuvd7UgHwok4l8ZSRWxNEWkLSNFBDLc6fCzfDeYIaJYv66em70q/JkKUjQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1758275393; c=relaxed/simple;
	bh=EFLXcZbHny1T0lKmsUuFFzQtgyIpR1eeWPmSnghPYLI=;
	h=To:Subject:From:Message-Id:Date; b=cwX4CcRBq0YkeXxjPOIq+khIv3OASQy8cATGXuhpIkO0uWFY6XtXEHDIBxJrabnmODf8Q7iZYNGGOJOrxmN+m6NrmWxsomz1ldMgYc1hiO959+QtGL83xcZFMQZRW9O7ifVb2f7dy9Dq4WqBuPPOs5USC0ST6+vKnSEP2jR1kEc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=qGfu+T79; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="qGfu+T79"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A51D2C4CEF1
	for <ddprobe@lists.linux.dev>; Fri, 19 Sep 2025 09:49:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1758275393;
	bh=EFLXcZbHny1T0lKmsUuFFzQtgyIpR1eeWPmSnghPYLI=;
	h=To:Subject:From:Date:From;
	b=qGfu+T797rI0foKUlQamDIQxDx7SihoUTJPoupfXBI+hjQGXbbHmxPLYhvmJmbC6M
	 ML/YNXILSI8BaFdzps/2ITZ4k9tcUkHPYLR2Svh7CGSEYr/dEkEm0sVzAr+vSqlSu3
	 2d/yM5V0msY11cK7Lh1JTzUn5jRT+xmNxrmuMkPePAxfCEgpYrJKtSUEbM4LfVpwG5
	 77wXqk1h95ln5ImTGuHeb2JnkOOnSrpO5ytGxs9AlnjuMjLB0drxsg8J1lsIn2mMhQ
	 N2qntKuWEmv277QOp0XQs4OBiiPjfevVIrBPYOM+ehFdfEptxw3/p9n0iGhzSHbFdv
	 dhBfNnnhWBQ0g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 94C03CAC59A
	for <ddprobe@lists.linux.dev>; Fri, 19 Sep 2025 09:49:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175827539359.29669.343302040014581382.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: f1f227745eff82aa4a0c2c67f629f2ecbb7eb4173bbde37220bd637b89d03e1c
Date: Fri, 19 Sep 2025 09:49:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1758275393
