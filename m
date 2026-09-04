Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 801A8379EEF
	for <ddprobe@lists.linux.dev>; Fri,  4 Sep 2026 03:20:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1788492034; cv=none; b=GPvvdscHnmh2TzEL1C8uRrjD8nYW23MVVlQDq7pmWVGejt2ii5jgelLAmJxeW61Zok2wyWlQgwcca/D8s2pKITjdb6JNtEj97M8j8oYQPWcrB3B83gUpJekX48zxaqESfqLs4rU1JG9tZXocKKysVLLI5GxD97ORHUNxuPPj2SA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1788492034; c=relaxed/simple;
	bh=VZIi/jqXWwz78goDn6tR22ZVFL9CPUF3IpQKzWmeuqk=;
	h=To:Subject:From:Message-Id:Date; b=j4moIk+o0ANq/ex3nQz2gridVbIuqqHuS1SbxD76d9AxGDCHTcw+MchUqAVTG4pp/cY4JD6c2BJueK0u7RjCVDJCmOHtyfFlkenSC7okoqrzHQY1ci6lctBY7Jg703anZNUmXNvQ5GDj8Gy34Mrd+ePARN04+3NEaJm2ewxaK8g=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=is7rLsxJ; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="is7rLsxJ"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 1646FC2BCF4
	for <ddprobe@lists.linux.dev>; Fri,  4 Sep 2026 03:20:34 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1788492034;
	bh=VZIi/jqXWwz78goDn6tR22ZVFL9CPUF3IpQKzWmeuqk=;
	h=To:Subject:From:Date:From;
	b=is7rLsxJKoLd0ISYLLhVEc2lYabsowqdKa82pr02ilbbT6KZNI7vXJyqaoG4kF5ta
	 3tipr1ZsELgrAEi3RM98V0/4Qk9Wl1C6hIZntfV3Qg09+dKivvq/wDyPPUulS/JiJq
	 fDKEwqf9c1pAVXbDOkymOQuJ/OXroDpDZRt46DB3j2tpaerxqRQd365O5/7NGziWFw
	 z3NYGtBLFcVjvIY/KpEXjo7pCxN3H14BJQEJ66vb/G2yeoL+yN47uPWA+H+AvTAwnM
	 I+OVQYVCv/pgbGcCC+sRoSQe3uPJEeJ7wjKeA41VMMWt+oZWSUghgMljkELLaJoPTx
	 +PFNW54eDzbyw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B2975C624DB
	for <ddprobe@lists.linux.dev>; Fri,  4 Sep 2026 03:20:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178849203369.27905.7422594769732395403.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: b44437bcd0e691f5ecba5271bc3ddd54f80027e6bc7c8e7cf7044dca2ecaa0aa
Date: Fri, 04 Sep 2026 03:20:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1788492033
