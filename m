Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2CEBB23E32E
	for <ddprobe@lists.linux.dev>; Fri,  6 Jun 2025 23:39:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1749253194; cv=none; b=LMxdlUsv7pOwaqACw4C2ZfPDX201mB16BEtGYYLQGhGjAOwCVbDBkg9QUMc2IfLAIQBjAC5ajvQC9mQ+FD/bwHjNJ4GRokjxppA93+HO3qqrYr5YNrPHVfvrGqAIe/JsV0i71n9r0s8dm1ESgZWvsJ0dMri0n0J8Lz5kLp+sSkM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1749253194; c=relaxed/simple;
	bh=2FBWURJ7qQqBSEdwJqJkteMq+QAAOG77zCH1+1SLpSE=;
	h=To:Subject:From:Message-Id:Date; b=WDGyKIDXXyFyiMl5wduGjLLs9YGJq0jyUB7S5PCcF/wxFHvSRxU4VRy8cO8tAO/f0/Vs48/l9qzGWXUxksR6k0U+xB8/otlOgMGUrm+gJH9d2+2FiNvwqx1SYBj6+S6hSdb9nwyvP3aLAvQFySxqVq2hiVt0HZ+EYOPLDJIHpEk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=LzIYy09b; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="LzIYy09b"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AA0EDC4CEEB
	for <ddprobe@lists.linux.dev>; Fri,  6 Jun 2025 23:39:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1749253193;
	bh=2FBWURJ7qQqBSEdwJqJkteMq+QAAOG77zCH1+1SLpSE=;
	h=To:Subject:From:Date:From;
	b=LzIYy09b+j2yN2mtlasYI9RlxJfap60lqBeHRwU+P5SRUC7/DtDu8KN9z5U0o2BBg
	 0UpyNRz9uH4OJkB7eJIzb0Xp00Vnhs1xfZdtUtZWDsh7h2kkLjUEjPrHWT/1DiPT3W
	 GwyQA2ZupqzgD3HaKx0EuUiE/NEFJr5bYQCrKo2fx2NwCI7nva6wrWSQhloYWFriqJ
	 izGipEnQPgcdXl06b0Vhi9BEn0oWqXO05p0/8xTT61+s2QbSVxEsv/AwyDeNBBnKNd
	 V3fBxQuZTwtRlu9xn4gZaVhueYLwm+0YllSIpqjHKYEx0mkIjmxtfrAWqdLcILQyhM
	 pVYTgjfgDbbzA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 96862C5AD49
	for <ddprobe@lists.linux.dev>; Fri,  6 Jun 2025 23:39:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174925319358.10098.15317455301181295626.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 845bf473fbcbab2f476d385a49ea442615289cb21207af8619b2b1dcb79bba40
Date: Fri, 06 Jun 2025 23:39:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1749253193
