Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 12E6D4207F
	for <ddprobe@lists.linux.dev>; Mon, 15 Sep 2025 05:39:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1757914795; cv=none; b=mI//fYJSI2Er6+y7icVxZHj6/gvCVIO+7v5fv6Xn4w2sn8pw0RiuO2pHbfuiIwoySWXHEJuKb0N5aK5zxQupkkO8Yi1gKr0itUjKaqz/2LSBws/T2y7rXL9Hbe63rV5ymbO4h4zq7JGQ8c38i4RWCweRkQL4+6Bt4JeXXDyp3h4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1757914795; c=relaxed/simple;
	bh=dxu28P0OSkOgsdjf/Z0uBwx0eLcQNXlmbpKye9VI0mc=;
	h=To:Subject:From:Message-Id:Date; b=nHYr02JX1Yzu0FbmVtmhOajTb2lUVtQ5WFQeKu7WC52dym64vzl7E9RTyqIqSWpcJo2ms97609ah/nCoGo3OzbaVAuT4rVH0qkpCBfNEx8xccLyuo98XSX1iDWHp4RdhC1p5hoOj3QV7YipVrJksoiiopHrKpVrbROShN1SD7Zw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ZNTUucBo; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ZNTUucBo"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A073AC4CEF1
	for <ddprobe@lists.linux.dev>; Mon, 15 Sep 2025 05:39:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1757914793;
	bh=dxu28P0OSkOgsdjf/Z0uBwx0eLcQNXlmbpKye9VI0mc=;
	h=To:Subject:From:Date:From;
	b=ZNTUucBoK2JSAjiPbhoxf9esCEzjfVAurwWg8ANvqWxsfsNCC+jY8/gDUu8H8Dr/d
	 5lUOqDRTG7uIq3KeKP3iT40S3C2r02bvVAHyoJVeG3j3jLGwaqGE5/cHQUpjcrmPmJ
	 q2rTo9hSvYs9ceasJ53ujNPafz153VbgkakSIyvxBgPI1/D9ZxgUrqMghquJlM/mod
	 apSYkq9RWVjUG4etkI7ANhA95iw5wYtEtmnMU1NqE/to36rdcJ8G9rscZJ2JsyjUvU
	 kNZbotKeaEW2nYwtX2bxAdounlYOwjumPLqD1ZkoQhyBub2IFJaCy486Xdc8w5PpBU
	 X5bCj113JzHUw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8E9E1CAC58E
	for <ddprobe@lists.linux.dev>; Mon, 15 Sep 2025 05:39:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175791479357.15919.8358193824327954059.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: da185198dc348625197dfde070150ae73348aad09a176abfb0980c4d4a517689
Date: Mon, 15 Sep 2025 05:39:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1757914793
