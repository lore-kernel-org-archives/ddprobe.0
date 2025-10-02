Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 25CFD39FD9
	for <ddprobe@lists.linux.dev>; Thu,  2 Oct 2025 01:29:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1759368594; cv=none; b=btChulMNUrahPsQsamYV7pDCm20xCB7TzEajeyNWhPqOfLDU5rBgVrb+PtWOi2MAWvuw8vQRLSl1ZEyH3RnIJhtZu8U+rTU5BxgQVkalaeNoZbPx8B0lhkjLqI8VcE1tR48dhLIJssL3qp1Ge/oDnd+NNaV1SRoLvQcsNvTuKnY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1759368594; c=relaxed/simple;
	bh=ZbmGvlaTDNNqvWBuYestKdcE9EPgLEf4gH225lKXJ5c=;
	h=To:Subject:From:Message-Id:Date; b=CTo8jCUl/3V8kxoBnnRIE5k3vxM5ZKQRlFumqYrtCgP1Z/KudMJDjHabu4sSiEgnSDzqAEBaCebaZj8ik2Ywo/38QGFlz56VObYlF6ajnDRmLoAWXsdnyIb/npcuNWB90aZpXyV8tTjcho6si8tBGrgB29yQ05ZN0QdH3oPr76w=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=AyhjN3F2; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="AyhjN3F2"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A5B77C4CEF1
	for <ddprobe@lists.linux.dev>; Thu,  2 Oct 2025 01:29:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1759368593;
	bh=ZbmGvlaTDNNqvWBuYestKdcE9EPgLEf4gH225lKXJ5c=;
	h=To:Subject:From:Date:From;
	b=AyhjN3F2lo+GDyYWOENHkyo6eiAJlOxfjIzZOoKm5uzoksAk3uUy73h2Lalvk5WRR
	 nJC6P9G8uRwOIT6yoKzclmYsaLvtAG68fEo15TdWbRJ84+2sxVqWiMGjHsGeE9afoE
	 yu2zwXCOToJTu3+FOrCO5qL12tVuMepK89Dww+6Fgz0YldGKXHI7iYJWJUdU4ByodD
	 WIxgc8fobSRlhPKhv6haC62Cs/QweKYTP9onu3/QcnTQfU5JK017fEPN/8Y60YOJPA
	 su34/cRFaewZH+BQmH+51WbYjNXJsOX0WZUyvr9/Xqg/VkI+IhoosG5PYZ4sTFxcjn
	 gYnXj9b1cD3Fg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 93063CCD182
	for <ddprobe@lists.linux.dev>; Thu,  2 Oct 2025 01:29:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175936859359.16264.18285466073117686716.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 5ace9c49b2cafa4e3854932b3069059928bbc4365bf9a9a920aeccc3115dafc3
Date: Thu, 02 Oct 2025 01:29:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1759368593
