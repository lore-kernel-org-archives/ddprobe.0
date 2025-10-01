Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 413F74315A
	for <ddprobe@lists.linux.dev>; Wed,  1 Oct 2025 14:09:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1759327794; cv=none; b=M8ZqzeKTJl9TXjtpUXCWN9DupDcyvNI8UnGPZ+EIiAzYhL35eH0N10qXfmQ2fP7bGmuigRs06thr/C+0lXkyH7M9nKiafGGXmnUHl8wWbLq6zwAbqFapqlknqotrkcCYXRTqSXMisXoY0u0lRmN62g9aX/BRv/tJFUSLtlT4AD8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1759327794; c=relaxed/simple;
	bh=ZXomFH+B+ijV7B78Boqp1YPDdqgy96y6ifiqrnFMasI=;
	h=To:Subject:From:Message-Id:Date; b=UVXvKjF1Dh+yq06rTj0+s4a7xeqRviVUw0zCIcIOX+nAPwvPSUO9Tjm8o05U86DET73djhUVcENTxNnxyB0HTeyYCwTj506KZ4wdgUyc5EupucfC3y9K5twkFO7BCV9DkS/il68dW2khdjvs5mQf5GEsPr/3aDTaqgCppJ9e7kM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=nlf/m2Mi; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="nlf/m2Mi"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D196BC4CEF1
	for <ddprobe@lists.linux.dev>; Wed,  1 Oct 2025 14:09:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1759327793;
	bh=ZXomFH+B+ijV7B78Boqp1YPDdqgy96y6ifiqrnFMasI=;
	h=To:Subject:From:Date:From;
	b=nlf/m2Mi1yk+KfKBwV4btbuRd/IeZTa4X1pF3/nATtq1VfytT/EYzR8eyoIMG9m6j
	 LESFInVTSGpyjINA57xARdrlWmONOx8S1iOc3YOahFhruuBLxKgMQsUwQ/v2ef59HK
	 ezWVKwgKDkmqE2G7jRtNINEe3JFvB9sO0m2Xb4N+dRWHFSQUEj/gsf85Zmc1c7y/7H
	 akqIn+pStcCyk8p9TSSvQ/ujbrK1azvENBPby3wsIIgem7nEAq9meka0AOFKYj6HfC
	 GazOoaEoF5RKqy4j9DMPZYc6u6Ueetn4FbH+jFNrLV/l3Pf3SKs3c5Fy0YYaqiHiJs
	 sNU1F0dWfUI/w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B59F3CAC5BB
	for <ddprobe@lists.linux.dev>; Wed,  1 Oct 2025 14:09:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175932779372.20325.4633844624881932620.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 2c2e7722bc4d47c5f99055e64beb238aa31745010282fd1a8a3a83e26bf82c8c
Date: Wed, 01 Oct 2025 14:09:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1759327793
