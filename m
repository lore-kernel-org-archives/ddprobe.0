Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3E85B2367CF
	for <ddprobe@lists.linux.dev>; Thu,  9 Jul 2026 12:58:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1783601914; cv=none; b=eKDwpaGVV15MrwbAmDLjSDoZiU+Z0Lud5gBs+ZSwvkILpvLpw82srcJLxiZE58Yk3/rHFjI1HxUBGgaUYQkspk6N2gEDpmaYfdU6yhEzg3VlgBktOEEoC2aWS5Nzk2kWjHzhMkUYBzIucLo97Qw9NTvzqxVgrdY2E2qiX7EOrG4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1783601914; c=relaxed/simple;
	bh=MJftW1DUztp3qKVRJCqXpzVVH+4Ud1Q5/aKnbwtSQjU=;
	h=To:Subject:From:Message-Id:Date; b=PI6s3WRzdxZnjHP1G186qVxFRcCJi2Iq5are2BRSXBI/yPBmEum95gn4qNbb8lAtFszPOyuk7aIVwndrE/GsnTlNaZiR4wBQaX6mq+YcppUpdN3TT7+yjhPRorfqrdh3wwgmW9cE0jtQ6w8vDaBX8A76Sbs+Zeg4DkZf/McrpNU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=t5/GYXQ8; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="t5/GYXQ8"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CBB15C2BCB7
	for <ddprobe@lists.linux.dev>; Thu,  9 Jul 2026 12:58:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1783601913;
	bh=MJftW1DUztp3qKVRJCqXpzVVH+4Ud1Q5/aKnbwtSQjU=;
	h=To:Subject:From:Date:From;
	b=t5/GYXQ8wM/CAhSLxbJpmU7SUz9ETlXGRDSzsAjeJu2Btkoo1yyafx9cxpc5aRiWf
	 xKGJxLdOoiFtrD0oRzhC9ISv5MOZu3t+ujnkdvQBaXxCTo4Q9SknODG5n6yupAmF7a
	 jie9lFiOITmA1Io0siEkkdltWk9kHdReFwi3qjb/MGbhktJFRcDwTAQ19YW51ymgvj
	 AWCkmJWJjE/JqPik2+ednh4WE9Y9pjlhV0mA2Fa0dHARwS6cNAz2pIoRN4TrZZWNEx
	 VLQDV9pMxwQBnVJsTCZRRCL7o2ZNS4a6pIIS3w+M2OhMMMy7oz97s9YWafFpP3D5vg
	 3nrwG8vmorCIQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AA16BC43458
	for <ddprobe@lists.linux.dev>; Thu,  9 Jul 2026 12:58:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178360191368.21497.5947386249489992396.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 4519f927ccf3226151b601808a90839cd89aa113436ee694879aef2336968de6
Date: Thu, 09 Jul 2026 12:58:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1783601913
