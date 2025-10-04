Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 241841A0BF1
	for <ddprobe@lists.linux.dev>; Sat,  4 Oct 2025 10:39:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1759574394; cv=none; b=a+7zfzhsgBDa4fBnW6RZdnUxy1py08kJfnd29nI3OTMSkEPFKw6EKWZHWV3uguqTtwA+7ZD/AfMKxRblr3nvLT7Iqpi8kNItvGso+ot/9qOFqJ1brf9BR+I5eyL3BHGzigQVT3slCXtkXLjwzxyD6YmimNXsNL36L1DOwijafbk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1759574394; c=relaxed/simple;
	bh=/JBiU9Zxf4QRo1sGzt9f1OWO4aL8YKNjwa1EcvEQbFY=;
	h=To:Subject:From:Message-Id:Date; b=qeu2jWTWKfc8mb32X3lzuRgeFXq9F/JPKkVSJc9KoPnhwjUl398ohw/sPQ6U9YN+g6Z9umBZpSsglUCYNldmDWSz4n4NXE9QFimu14iIwMIe48Qskai9yc9pmWV4wdkz4dPMbd02IHzOt2pbFMuRGa9DUqD+CSO4CKy3xe4B/xg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=PixsiUrp; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="PixsiUrp"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A893BC4CEF1
	for <ddprobe@lists.linux.dev>; Sat,  4 Oct 2025 10:39:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1759574393;
	bh=/JBiU9Zxf4QRo1sGzt9f1OWO4aL8YKNjwa1EcvEQbFY=;
	h=To:Subject:From:Date:From;
	b=PixsiUrp0x4JN0Oc3A0TxOxsdEBu3XwLHuZaMdciM9guJHu+t/4QebmvN6kDNbtio
	 CLeANoZEbcnapt1SfUYI1LK8gDvTQAdHfwxtkoVw+Snz/dDUwX0T7DIHzPhGgpjqX5
	 pavs3BmeEEi8DkMdH9JHzlqsN4kjUL2qBLoi8sNq2JlAkwNaL9Cf9pi9mMYNWCv0j5
	 28IGe9VkUQKmjgxhu0bgZ4TYu995xkRzCMQTs222IAvBylMIraeeeYr9r3ksvd7vW4
	 DxZcTYv/WVkIU8wa6+3wK9dd6FQPtiHgeWf7Gup21HALOd6vJEwZUHuwGBdoJFMltR
	 uwKO+tGizykrg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 95546CAC5B0
	for <ddprobe@lists.linux.dev>; Sat,  4 Oct 2025 10:39:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175957439358.25766.13724346010968583913.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 3ede8c507eec82d274b6c4edf6af1aaa01710e14b9a7757fd437f11a1c30dfe0
Date: Sat, 04 Oct 2025 10:39:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1759574393
