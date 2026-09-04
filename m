Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 763EF382F0F
	for <ddprobe@lists.linux.dev>; Fri,  4 Sep 2026 12:00:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1788523234; cv=none; b=AhaRmeULS4WvXydkWTap2fEYbiZVmF+bhgrlvrQIbz5F/K2Y4RBfwDe6/SY2YdnTZCft189d/Nkrb0gu1jNh9AiagTwmLiS0qIX/7/gk6KYudi7Xblq2vuHnJXtVbJZCARZQ3hx4iiWcOuse20+bbMQ6wymKBmfubAs2obcReag=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1788523234; c=relaxed/simple;
	bh=aCkpyWVHNC+hYB6JI1zkx+z5QwLjUCQXtQwvBM42OpU=;
	h=To:Subject:From:Message-Id:Date; b=R/MvnHFBfGUnv5EhJEolhDHAvIUDKfHhLMzxF9u9Ao0Rg0bd0YGQrtF3fQoK5D7j9riQSSr1SoeV4XGvcAxdrNLfFx9MMfw+pywQF2ve4901HJByinkjx4YG1SAZ4O6DNb4Tbc68MEiw91TzwXTykbkaFhmQ6kObrVk1ZjM4XOU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=epkotQG2; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="epkotQG2"
Received: by smtp.kernel.org (Postfix) with ESMTPS id DA0FCC2BCC7
	for <ddprobe@lists.linux.dev>; Fri,  4 Sep 2026 12:00:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1788523233;
	bh=aCkpyWVHNC+hYB6JI1zkx+z5QwLjUCQXtQwvBM42OpU=;
	h=To:Subject:From:Date:From;
	b=epkotQG2yngKmKRKoGBDJK4OjZBlwQe3TGgVWheQoIbQ/i86f+eCLIMtHF32pocOg
	 l4jE1gnr1y5XKcp/k0wf+6B/c5CcSKIoYFTXoU/1gZZTQVCb8jfPdy4j77tW3M9qSI
	 lLcJQ1PLdzcIuwu31/uGwUkNIuAVTBdPLjDsz0W3xlf2xoXQk3M7p+Kc363v8Qvm8I
	 fxnLU2/hvJpm7/oy3Nuw0hSjNLtVqJgRnc0Gfa9cT67Q4p3hnJPYSM6ZHkDd5vLiHe
	 E1IkXwRWkDq3gesdB8aW0KPIQZ9uhtco1Qdg14niPLHmcwE2W9ZfaONiBg8zCUamwU
	 jW28zsytIikwg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AFD25C624D3
	for <ddprobe@lists.linux.dev>; Fri,  4 Sep 2026 12:00:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178852323370.21099.197196538714750877.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: ae9874473250d1d55326e2cd235705a8baedf0b588ba694a1ba977c09220407d
Date: Fri, 04 Sep 2026 12:00:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1788523233
