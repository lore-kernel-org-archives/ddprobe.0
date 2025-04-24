Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 50A8D22ACFA
	for <ddprobe@lists.linux.dev>; Thu, 24 Apr 2025 11:39:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1745494794; cv=none; b=GSzSDTHcv5pU4UMm3oL7hHWrrwiYYaAXt+oo+GLu+nyG9lkDAg2Ri4Vi2s8tvj2Z0TVJgh3HD5kTghDkthbnehdEeXpRc/NhvWgfQaEDTVrtRNtONq95/QoZTOluMSQvDoC/3G55h4v3sOT4rfCFz9ahGPzJB7dZ61uuYqs3xIk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1745494794; c=relaxed/simple;
	bh=dvhmQd2o3pB+2t1alPRTEJ0fcfF3LbySuj68NWBL9vg=;
	h=To:Subject:From:Message-Id:Date; b=uzqNwyIWPewXmLzuqnXC0z1FFQctLgm44wxYNBzBZmmGq2u+IfKstzhkjPreDzKPar15wLjRUcsJP0SlApY/Aq8p77FFlPG2CrbryCSriUu2EoRBkDrq5h2vbvaiw14e9WtW8DEuUlD8iXYlyxWPcHQw7MBkxU0yFYd26oL123E=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=VqCJdcYP; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="VqCJdcYP"
Received: by smtp.kernel.org (Postfix) with ESMTPS id ACE70C4CEE3
	for <ddprobe@lists.linux.dev>; Thu, 24 Apr 2025 11:39:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1745494793;
	bh=dvhmQd2o3pB+2t1alPRTEJ0fcfF3LbySuj68NWBL9vg=;
	h=To:Subject:From:Date:From;
	b=VqCJdcYPEUVP/flP5Q0iT8UyCxz4I+9I454vpMap+hnKitHh5yPb1iWVoiMfm0W3H
	 QexoT3jxX5iD8W0Aub+/YLxFGRlTr+KGVB+nUAEkuhbhpoueP9DGnEQiZRxGZ2a+va
	 06yYST/ocaK/jotVXdqgpWNSXC6WhnbJLPjwDHhRd7ZZUxOdOMrugGUFQNssEmg4Tw
	 K5Wa1nL90hreWlqAM1LlxSbJUCi3FNfB8vL4m/O3DEvP6wh6aMWbPRFbstOEMlqq/Z
	 VGmbil4/r3Hq7ekXKiCMXeCxzjoPYoOktXXL6LyHS0h+CNkPEAZ2k/t4wk7hauKVlt
	 YMc9n9sdlw5wA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 99C9DC369AB
	for <ddprobe@lists.linux.dev>; Thu, 24 Apr 2025 11:39:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174549479362.15061.2235419106120848026.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: b009d09739392bfe176db0c1bafb46e1bb918181f68065666766081ba4a0615a
Date: Thu, 24 Apr 2025 11:39:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1745494793
