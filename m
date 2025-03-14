Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6BEEF20371A
	for <ddprobe@lists.linux.dev>; Fri, 14 Mar 2025 18:28:54 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1741976934; cv=none; b=OXloYDaDZFtDxn9EjmhNBQgZXgWmR+FDGDkBnwhvqyqGNUIup/76vvZPckw0hgUwm7B1foMrl5oRiFOnziafWqn9d2AuIip/u0efVr9tdH76/YNeOmO2uQ2wxB4w8JfwjUUfVSQ5S7un2ZyaRGn2kZtap7wqEipV5TTdAkQxPvU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1741976934; c=relaxed/simple;
	bh=3lySRt1spy6iliImALvSHtQjO4bbF8MHFxI1PvAdcng=;
	h=To:Subject:From:Message-Id:Date; b=EeEXIFFzOH4j7uMrc+cnCE/eorkytBEgbbDnDcS35qs/1CAaGCDbIzt0NXp4t+qWH03tJB4/l8RFmEsDLv6sUg92Gkx8avhuxHtTF9tuM4UjIHCmo/wM5aYQEz9hzfQA4ZS1e4fV+yVOMy2/B6lDprtG7REuGiyTZ2IuuQr4e60=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=S6rixytL; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="S6rixytL"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D2A15C4CEE3
	for <ddprobe@lists.linux.dev>; Fri, 14 Mar 2025 18:28:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1741976933;
	bh=3lySRt1spy6iliImALvSHtQjO4bbF8MHFxI1PvAdcng=;
	h=To:Subject:From:Date:From;
	b=S6rixytLRfJ/rs726PplRJIqzZ0+4w8obzxUKRNI+OVOgcFsXnEM7YlyAt5DwU132
	 ESCdBlLsq9ZsuFOAgI2zYZcL+5azrJWmFnmTU6mVH8fWt7YvJVhyYvWbWvuiR3tUf0
	 ywA+OUX5kSr4ay7nXgtSqla1W8OPxxlPbD07xBmQWccSoghkLoodMbpkx0C9DNIKZn
	 mkrTfsnyuv3mE9I4Ei17o54ITI128oeRY3jcVGbLAQ4jickuAb1SAJRACC5Oy3rQOF
	 zYLSrREMXjnn/vYx/bCHeR/PjlbuEATsrrfuMo7kjkp+YpSfYC2wX63FI+f8VllyR+
	 ItE9YvSSkhSLQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B15CBC35FF1
	for <ddprobe@lists.linux.dev>; Fri, 14 Mar 2025 18:28:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174197693370.29314.10895549752911302572.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: d0e8f49ffd147a7dd8da0d13cbfb83b0a5dba567e562c9af91965d740c4585c7
Date: Fri, 14 Mar 2025 18:28:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1741976933
