Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4032C10957
	for <ddprobe@lists.linux.dev>; Sun,  1 Jun 2025 01:09:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1748740194; cv=none; b=q+f61q6tAvXShYoC067sSASkb5fPwg3gownxna+LvnYdPJxQisQvpm6UO1ks9JKGkGun+kOl6PRrcGmiDS8vO4Wskxpe5TqRTQToIAUqE315LpBMdDSvwXEYTlpcv6M0cKpGQ01ksZTsIixINDmp0vnxOStiLMWD8fpkWeiRiP4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1748740194; c=relaxed/simple;
	bh=Z2GjmS9CGArNGqnZwk+Xyj1aqGRXGzwwSsNDQor0F9s=;
	h=To:Subject:From:Message-Id:Date; b=klh3f3JE7L/pxW0lYSMez1EqP5PUbOPX7WuZ2jJmptoH7uEgfqJimOSwd55nOrXHGUyC3s6wLxIjsqiK9BhRrbo/3YqepKSzGMtXkDU/neE/qEpGeMwPhlbTMero5/b/FJnNXJkUC3jtuoLMDbQKDVc3ZXGXLqwVSNsMvD2X2z8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=RgyaYqGl; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="RgyaYqGl"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A9BB5C4CEEE
	for <ddprobe@lists.linux.dev>; Sun,  1 Jun 2025 01:09:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1748740193;
	bh=Z2GjmS9CGArNGqnZwk+Xyj1aqGRXGzwwSsNDQor0F9s=;
	h=To:Subject:From:Date:From;
	b=RgyaYqGlik7LuRVR/5JYA3kv3HGgxiR4eI9Yin1FWuu3mhqCVPgOx5/PELXtwPzGZ
	 YyOsfLdKUWvotE4PYjBx433jcRaZROcwr9quDYFY+TLaOvBp+ZYkKDxE9Zhp4IE4Pb
	 UG+UHrgcdZqFfRmKEcwTN3jFuYZf2iHbB0as+gMTH3OEPSffYyT6/nBbl73QX5jBFb
	 aEirmtzfIl7h1NxZmEHYPImyNHVCiaLmUhLadTdhlj6xsACy8SFu22DA/zfjVMeIa2
	 V7cVS4QB0OTGoK6Mtda8jiuJrxkaH/Q2Y8dOzAP42K8syOl4SkgN66IhIRqnuqYEGR
	 htnSgFUWpuBkA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 975F9C5AE59
	for <ddprobe@lists.linux.dev>; Sun,  1 Jun 2025 01:09:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174874019358.21371.137027696154583175.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 8024770695fabdfd0698962f225e30b5fc1b9bdf3d43b46f29bae411ee36c5f8
Date: Sun, 01 Jun 2025 01:09:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1748740193
