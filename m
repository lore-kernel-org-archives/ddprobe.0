Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 713FE205E26
	for <ddprobe@lists.linux.dev>; Sat, 20 Apr 2024 05:40:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1713591623; cv=none; b=cpHnGY762ix4VhwXnogoLz00ukIOz/7kMS0obe/93cIh9DtU2fmeMo/qRCyfVr1j+hv7o81fIYVylGhcURu1Mt4r0o9YvFadYzxbIohA7UVbZYK4wru5NNuYxs3WoJVM5m2d35qORsECLVJ5N5gC3iq63RxazUhfzO2AnsUtqWI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1713591623; c=relaxed/simple;
	bh=6tQVoRPqsevNsCmBgnwDUL8BmZabzNdy7BLHeeu5PnA=;
	h=To:Subject:From:Message-Id:Date; b=GEnJ/FNagIblW8nBgOxw7UGW1lVHmpVgG18yK6lH046hJiT+kGrkca/YKAtRPU6A0l1p+P/MKOhe0qn3pR7eZPAg59x2spq54+flslIuxnOJwE+meZpb9zSvf5UlSOv3FNmwok9FXV4Iu9oelB7Dl0dOTqUDs3qywyJbGBrN2yo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=rYTNAEPE; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="rYTNAEPE"
Received: by smtp.kernel.org (Postfix) with ESMTPS id F021AC072AA
	for <ddprobe@lists.linux.dev>; Sat, 20 Apr 2024 05:40:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1713591623;
	bh=6tQVoRPqsevNsCmBgnwDUL8BmZabzNdy7BLHeeu5PnA=;
	h=To:Subject:From:Date:From;
	b=rYTNAEPE+la0HQizHX5gvnAqeYHwKJmqOusj33z9hopBTAlB6/9VbIkma0fTAJ9Ow
	 GSuO748b/RUp3YCS0rRnroQpEuAU1QXxsbVkW6tdUP9o4mxx5jHqtZ94qK1cLTNAA+
	 TQIaHW/aXoLfZmjeEjAp4rOiFKYDWAYmHADMGrHHJUXhxddUbU0uA3LXpqwj0g1pW9
	 lDlHDXsm0/35yLioMCynvOYpMd2LRfy3eLF8SEE2tb5tNk/OKK0BUspa5ClpxRASLE
	 TZYSOXfeV1Z+rY8TsPV6aJpatFNXaMtI8pOvCap0MBel3GIpxMh5KfIgsPe97XkATw
	 HrWACkSDidQUQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id D6EA1C4345F
	for <ddprobe@lists.linux.dev>; Sat, 20 Apr 2024 05:40:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171359162283.32236.39605964033240517.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 5a5a74d7d5d7223786475a6659183073e5f01e6d1707be709103c8986d3466a6
Date: Sat, 20 Apr 2024 05:40:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1713591622
