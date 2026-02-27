Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0EA5E25FA05
	for <ddprobe@lists.linux.dev>; Fri, 27 Feb 2026 08:34:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1772181294; cv=none; b=DBSno7sXUJvY3YEZEWv/+C0F5l3vQsAHieyNQnhx+8Ul4ONLj5mdPUS4ayLJbn7gLlr6Ct26kTUAwJchOziEKGjrm/Aw5ajC2hz0IyhBYbQpqqPoVEHKYEiuyLp9NFiphE8rqBng049NZtuYzWEX93CL+vPkb8+xOw/KoKJtIBo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1772181294; c=relaxed/simple;
	bh=r6DGAiJEGd0cg6D+OIFHM3Ku+kJR8UMEUxaFKdfHDTA=;
	h=To:Subject:From:Message-Id:Date; b=tikwY42yzLPKdia2bv9ygBAB0IO29waLJ0j5+91gn9QVokfnRlZ0Mj28OjWH3r7WR7uY67qPktV1DpvOoWIx8rSiy6BY5KyaOh+kIfZ6lO1lGSDSNmK2k6vtnR3xYgYx2ppem2g/RxmKQ5fgZOKOVGdSlHcT4oq05iGHqfo2ROk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=hD7m4gO3; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="hD7m4gO3"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A4A96C116C6
	for <ddprobe@lists.linux.dev>; Fri, 27 Feb 2026 08:34:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1772181293;
	bh=r6DGAiJEGd0cg6D+OIFHM3Ku+kJR8UMEUxaFKdfHDTA=;
	h=To:Subject:From:Date:From;
	b=hD7m4gO3bp/uB97tpLaasvjrb5URQawVcFEicqHwmOYmTV6iRp82Kq5MM2E2keY1w
	 kcq2hiRQfJg6OMl3HvC3z+21eI3eByWskKaTwjsnkLxMBTuv7Guftz81Igbnp+kfL3
	 e21cXmmYCqyVsDUgMhRzuSF//VzBPU3MCC1rahgg8larLczxK92dlSRn8sz2fZUxx+
	 gd1MqOn9+in6x7Lwli13slECK61b+GqXoNjO+wJQIuTja0TRa6PxyUcQ2VSNt8a5d4
	 cQmrcMUuZh3dkknuyRSo+Jp1rB1YsMYTnNYsTHMOt83ukvvhpfuH35N/sHlxnMeR9K
	 d5Njm/sBl4TVg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 91459FD530E
	for <ddprobe@lists.linux.dev>; Fri, 27 Feb 2026 08:34:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177218129358.32324.17812511439623871301.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: a0f3550ff14b2ca15e6a1e684e88ca49a05e9522c09e987dc0d02b5509bce87c
Date: Fri, 27 Feb 2026 08:34:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1772181293
