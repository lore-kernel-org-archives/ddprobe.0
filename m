Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 245C825B08D
	for <ddprobe@lists.linux.dev>; Tue,  2 Jun 2026 13:44:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1780407874; cv=none; b=oFFdDaTT6p8VwBKvvkomWjl4fshxl8DdO9r3iFC4d9sa7L6fmmTSU5MKGo9MRfgZ6Jkyyu7Y3WV8S702BPp8Mer4acLt28ifIYbFOAepHPtOrxXLgc70ZwbErQLa5lrhnXIVehmQ8DXxYfWaeaA0Fp9TNgqkMZL03mx7HlgLrUg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1780407874; c=relaxed/simple;
	bh=yNdhNxZ0dGcQbyWSLwF0t97J2P+6zYhMiOD5fCmIv0M=;
	h=To:Subject:From:Message-Id:Date; b=baeXnc/TBmX1j67CLx3CaTA4ngsB2fg2H650SYfO3iW3HVQKTnnCWzwf+3fs5QhXCKZZviSxo0a2MaHeGhcLuUD3LZO0ystHdrV3qnJJX17h3NEUfEyx7YiGXKQ0zCaosK7l3CdMnnUnsnb+Q5JjLqr5BUjFisOqzStkSLemKaE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=I9U+GqcI; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="I9U+GqcI"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C425EC2BCB4
	for <ddprobe@lists.linux.dev>; Tue,  2 Jun 2026 13:44:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1780407873;
	bh=yNdhNxZ0dGcQbyWSLwF0t97J2P+6zYhMiOD5fCmIv0M=;
	h=To:Subject:From:Date:From;
	b=I9U+GqcId3xUvz775qsuLOq6R+r70BpB4UxWOl7Nk3DN3uNHpDnAppRcgHWG99pHX
	 lS7JhTMjw3bu1gy3j26voQNdMthnomTOYGi0dK3QEOcaH5MMPYePU4R5JnZVbKHS2t
	 D891Us+37BrbhkDMpix2TdL/KooQobDDELLQAQNwxvJ5D7nwSyg3lCoLr4pIpWOR5f
	 PnveUhFJ8FYSmUUdfkfgJb5Pdeb/TknMceTbIwjQC0ZapdKfbExsh+4sipDA26tGtU
	 RoAthQSDhjqJINl/CEqnLvTyA/fC+qfyZaVqOk0QkvXZXEkXrWfU2xFWvqS8RE8b6Y
	 nn/va2LjPoZMA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AAFF8CD5BD1
	for <ddprobe@lists.linux.dev>; Tue,  2 Jun 2026 13:44:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178040787369.25839.4163635680529454774.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 46905f5d7b577e2312a8e44689b01392ea47ec138c91d5ef1e26f980544dc986
Date: Tue, 02 Jun 2026 13:44:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1780407873
