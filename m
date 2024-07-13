Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5AD151094E
	for <ddprobe@lists.linux.dev>; Sat, 13 Jul 2024 11:50:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1720871423; cv=none; b=tk+hmmjmj9jsE9+Yf+BvgTGeK0DZT7rvLX2sMod128PRWwx6nbRJglAULDgC78L14wf86yaTfRVvkpodwMbguoSNbv6vue3ya1ZrFFNybUKQIZj/IXoRZFXLO8/K/NdPMPz401i8bkoaFBSU9cu2qMzneDSDuXGT23WA1FqfkTY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1720871423; c=relaxed/simple;
	bh=8Q5TUWLSodU8UKbXT7bzZ4+zaGhaANtyYupi5zkzUEY=;
	h=To:Subject:From:Message-Id:Date; b=C+GIk16qTNU5p6Rg6NS08z/ktlUGfle7aqpyndCgc2yhoQS8Kzs0UHM9xhthuo+m+wJkd+a2sS8nt444bKe59j3AkA29JxcMclMEVbOd8MzC1euyVdh6bdRW68w95rocEXv+4G7JkHIue0O+S8G9wQ9752RDndkMW161v4ue+Ms=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=oiBH3sek; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="oiBH3sek"
Received: by smtp.kernel.org (Postfix) with ESMTPS id E030DC32781
	for <ddprobe@lists.linux.dev>; Sat, 13 Jul 2024 11:50:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1720871422;
	bh=8Q5TUWLSodU8UKbXT7bzZ4+zaGhaANtyYupi5zkzUEY=;
	h=To:Subject:From:Date:From;
	b=oiBH3sekhyL3zg0Sr3DaJOi4m1EFqgTXoHWJJEAqqOkBCZ2XJYcezSiUB3utzF+Vx
	 bNyTepQzGAk/S3yYT+zP3apS3p567Sp6Z6HyEuxqJcwlTMCclmn90lv/p4bbtMEvVR
	 8EoYi+BTuapz0n5sQmdqxzHDmGbR+7DZrp8mxFSmRR7vMRT/L12VoqEY92qpQe3khJ
	 6MNuUM37q5e8shMI07HwFMEA2crjIKd7AF6R+wvnBLjnhY2PUAaGKRa+os7BEC5lsU
	 sN5wy7cuGY/wdtqz79hlh6ANOyjD7fdzGid5VrCK3eOahs39K/EiGhypVNplXvDJ0H
	 IKe3yyAURRgrw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C9206C3DA42
	for <ddprobe@lists.linux.dev>; Sat, 13 Jul 2024 11:50:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172087142279.12080.15903042278671037386.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 3f7c47f1f08d410297230a3be711e681a0a1a589f28de47377c5ef4a134d0de4
Date: Sat, 13 Jul 2024 11:50:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1720871422
