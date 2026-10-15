Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 45A752C86D
	for <ddprobe@lists.linux.dev>; Thu, 15 Oct 2026 14:40:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1792075234; cv=none; b=FSG6iKnAy/4nVxfHeNsf/Yu0ylEgy3iJRszbnm87z6PfuM1rfjubnc0L0dfzwkklOgIi50D7aJZZJIhwToo9AAZGxNUwdfbtDaPVhJ8002gGGTjqTZ/bpPLLr+te+aN0HRf+KRpDOVdKjNF8mxYtee2KueKaP8g9vpIJbUsgP2E=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1792075234; c=relaxed/simple;
	bh=fseL+dKHjy5Fzb15zR9spjQm1No00yEmyoyMAYYzQyk=;
	h=To:Subject:From:Message-Id:Date; b=YD84GZ7f1NgWa5cN5BpPKkd+c09CZ+fNPhn0nzlPhaStWw9kPi6cAfR6RFKWlu3aG0n1UXnhEPfOHHBz1VO259J+XGiQ4mGc4EPCuFRhf69FmFpLEHmtYMf3jRGA5ZBDHwbfzrrAm3gZCew7MYws8XHuDBtKeLBHtokpT517ypQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=kOjJprFW; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="kOjJprFW"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CE55BC2BCC7
	for <ddprobe@lists.linux.dev>; Thu, 15 Oct 2026 14:40:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1792075233;
	bh=fseL+dKHjy5Fzb15zR9spjQm1No00yEmyoyMAYYzQyk=;
	h=To:Subject:From:Date:From;
	b=kOjJprFW+z1JEBSmXtE1GMU9UAo2nuLkDWgmtvNcP/3BMYRr2Z+WT0KI8WcXp+frj
	 vvXfMGXZEf3CjOVfzHKbEUPRK3WI0rour48kbch/ogxbauTd8fh16+i+jefmRZwOBs
	 OXUffViMdZY4zOV5OcGlk5eWxbj3L+TIcCJTg8jqOWTFVhjr+zJjNmcBQZZki4Bur+
	 4YkTmHvjauCEoBT219PRpUKB7p93XPqVcnV1TVj7uJ16TL5mKb94JvE+tQQn/SYTm/
	 u3b9ZbCjPU19Lfst79JHZfmD2JluxcAWTMS+0B7N2xA+a1hW3FMEFWBJBW7S6IhPoM
	 Y+SmuB/w+K3lA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AA69ECC6B34
	for <ddprobe@lists.linux.dev>; Thu, 15 Oct 2026 14:40:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <179207523368.308.5172396896492414275.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: d93b7187d8159876a0e192f88670c8eecb310db6cd082f97835fdb15200aa8cb
Date: Thu, 15 Oct 2026 14:40:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1792075233
