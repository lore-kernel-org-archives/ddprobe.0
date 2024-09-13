Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3BF4A17BB3A
	for <ddprobe@lists.linux.dev>; Fri, 13 Sep 2024 11:35:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1726227354; cv=none; b=Ja9FIS8662/gFPPMcM9oLlSGs8vxYMEIh5KwrBOjtvI2LNXwdo47EkL5w7i4JNknVkPC1YVrD6IOXDnxWT5SmPSbX+RJ2EWco0AGL/i+AeTI+bX+HniSgRVfsNjOrlemE6Ks4OGtbRXoFa8xNm0Mazj+QeveQBeK7Mo/NUF2LSE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1726227354; c=relaxed/simple;
	bh=1409/9iHu+XW+VjqQ+nyWJA+qAxgeHvfzhHfYuSUvcs=;
	h=To:Subject:From:Message-Id:Date; b=SKDi5P7fGq/MpIlHWw+XVvGPPZsN14dy6K11PfevNxjFzd26frQBfpBADc1zqxH1JXujhEJLrq6rgKsG+H6B5QyyS5Bd907ks1aqE4Pu2JLY0BUvmNjBDDvMoxHRXHvi8fOaEh5B7CmbaUXtbYoRfp0wom+dUObLjlRl0+aGzrA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Ikw0wln6; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Ikw0wln6"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A8C22C4CEC0
	for <ddprobe@lists.linux.dev>; Fri, 13 Sep 2024 11:35:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1726227353;
	bh=1409/9iHu+XW+VjqQ+nyWJA+qAxgeHvfzhHfYuSUvcs=;
	h=To:Subject:From:Date:From;
	b=Ikw0wln6w01jVn/HJ3LrW3SmVII5OdW8E4kbwB3NuT6GF46x/7OItet66ie9gaDqP
	 omcMzUMPoci51aBu1HnJXy+Ioq394DpTRxL/0/6Y7pigWVzbk0TPKyafA8rC1JUCHW
	 7sT2TZgDVhoN97PYUnthsAtWvo60TtgOM2ZtMmIkEnuneJVSgM2L7YrRNtzUBdlrCP
	 X42TPsTb+9gN1yrV3MF83K7p0eV885j4bmImmV6dvQ8PCxddofYSgi/NpytoDgIc9V
	 c6z0MhpnXvtWyE5B16GuccepHXByDMxppIFOfvdcFJaf/sS/SqYdFnKWZYNZ4+ZIEs
	 hWoSpfpeUPoqw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 92F6FFA3746
	for <ddprobe@lists.linux.dev>; Fri, 13 Sep 2024 11:35:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172622735359.23683.18295002726208194401.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 42e97a58442970b490072535ab9f4f7979f6f21dd58dfb5500bda313813b3f17
Date: Fri, 13 Sep 2024 11:35:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1726227353
