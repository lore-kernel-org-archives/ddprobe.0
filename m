Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 219A917BA3
	for <ddprobe@lists.linux.dev>; Thu,  3 Jul 2025 05:49:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1751521794; cv=none; b=qZ+03iqq+i5C+uDQRkn/ChbjJkYydYLKZkiUN8kuWD5bZ9oSQGAOl238/hCf92eGp/I4Sdg5XKP6NNbtVQETMZv8PMed7UKzz6o3A6eDOTNF+FehAqJ3Ujiauia6rj9NIXQ7AlGNrqQVX73gXo+5YJYZEJ6x7MbUk84acJflaEA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1751521794; c=relaxed/simple;
	bh=bt9r/ttsRkG4p+EuxJicwqcxSG9JbiU1dM7h8QS0Enc=;
	h=To:Subject:From:Message-Id:Date; b=fsdu6QA2QVz/5uY7T96zfUDGjQutkMrsC3siChlXIe0EndYcceYvepTJPuU7U9WQ7ogSuzpTH9Bhdjeco2TZ0UY4Rzau7x/KJiSWqVFhyHDAXX7Y9OGMlucPidwFaiELlMLRtvWIMTlRToC4raVA/mEM52MACD05LcBuH0d5Mmk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=bHgSBP6e; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="bHgSBP6e"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9E6D1C4CEE3
	for <ddprobe@lists.linux.dev>; Thu,  3 Jul 2025 05:49:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1751521793;
	bh=bt9r/ttsRkG4p+EuxJicwqcxSG9JbiU1dM7h8QS0Enc=;
	h=To:Subject:From:Date:From;
	b=bHgSBP6eOjv3Hvh3s595gRo+xabvJge++kHenruQrICL26XL8qURf6cUcCf4bhJFc
	 2xBpXgAkMLXCjL9+EGpKuPZLmGBdWvfMFx/zYut8sXy0XiCj7Ug712ryxyrLt31iLi
	 fn6CPMbV1zf2MbLdX64s8yd/6+9UuwzRu27HnoCXNn6HByCa8EuKwWC0VSF+zPQG4O
	 8oZdEw4LmMB6iKh4V/L30Ew5/SbQpo3y2FD/LvYaP2mXSS8Fn6BFdfE1D7C2bfh7Fi
	 Z1WfNDHQ/CdBtfu0jc63LgCwXQXhvr1z+lal9yfv6+LB7Lc0nues12twyAYNYCuyiI
	 0FfXblcTaAGuA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8E7EAC77B7C
	for <ddprobe@lists.linux.dev>; Thu,  3 Jul 2025 05:49:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175152179357.31099.16943777355210926556.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 0de27c52c0b8f5e1f846d44059c1d625e3f3c2347081b780fe72f35b9f6eeb48
Date: Thu, 03 Jul 2025 05:49:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1751521793
