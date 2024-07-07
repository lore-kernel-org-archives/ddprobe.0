Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 72671181
	for <ddprobe@lists.linux.dev>; Sun,  7 Jul 2024 00:06:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1720310783; cv=none; b=Dg1dVOmqoxnlH3qNbq6jasSX3oQa5cSJ1ah38/CQZFozEv7/Tkow0ptKgK29wVLsMYm8Q7k+Q5J7A5RDJ5sq7gmhaufm2wGhgbm3C0azDqc2EMryxluc1NIaTqesYo44tA4ddpr5JUuLwTVXcbn0x7ALgzbLnyTfswh/78tBLSY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1720310783; c=relaxed/simple;
	bh=QJlYfrt7CEJMfIpwjnTE1b7n5EcsxjPggczazMkMng0=;
	h=To:Subject:From:Message-Id:Date; b=vDpYmit0oJaqXjlJ2TcYgdV95C5FsJP7biRA30SjV5hY+p8atin7YvDk+BZbHTzKjeVJOBGszCAh3NT7sj29HMuq8m85qO5IRWMx5ih+0KHrA01LON/gYfN4eURdnlXoSOPFcIehOXyIMmasL5Xojcps2ZsTt+gGokiGp1ta4QA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=krm7Z+Ej; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="krm7Z+Ej"
Received: by smtp.kernel.org (Postfix) with ESMTPS id DF4D8C32786
	for <ddprobe@lists.linux.dev>; Sun,  7 Jul 2024 00:06:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1720310782;
	bh=QJlYfrt7CEJMfIpwjnTE1b7n5EcsxjPggczazMkMng0=;
	h=To:Subject:From:Date:From;
	b=krm7Z+EjUNZKLEZvV0efShGBi+9+0uGokxm9Qv2iu8mHIg3TC0Lk9Y511/8PTVgj1
	 4HNRg4j6Rp2imi/4KAejXTJdaoevKws6NPX3xt64/h7ttQU4tSP2S3N/dgB/F1XQ/y
	 wknJ4FGTaBXCHeloiCk5dnFrXUQNo0F7ycf/uZOSZgC4U2njd/HeA8JnSM66ieMNjh
	 o31+1eAddz5yDeRmjFBqU0e7Dtu0wiuLfDEwf4L7zFTKMeaHW+yuIsCvattv6ojKVO
	 tO6Dco+J1MdR3a2zzb0wj6d26Q5ZquLMhP7e2uHuC1cG5N1jRar0WhQqtkWfJTEa+H
	 x1cxO0EMiZApg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id CBFA0C2BD09
	for <ddprobe@lists.linux.dev>; Sun,  7 Jul 2024 00:06:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172031078278.9568.6982514649552896401.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: a2705125f8fa2016d265bbd01ddb02430a6501013ad1405a75e7aeeef159bf60
Date: Sun, 07 Jul 2024 00:06:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1720310782
