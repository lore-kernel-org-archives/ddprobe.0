Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1DBAF34A794
	for <ddprobe@lists.linux.dev>; Wed,  8 Apr 2026 21:05:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1775682334; cv=none; b=MZUqTs0EAJGis7Tp5HM+CsHsuBoh4AZJ5fX0Esb3gQD0jR7dHfDfE56hiV+4+nkNBUY+ZOTafHI8fx6OvudjCqyt4kVoKCTcbLScAduREEJnehVHC1BR6yzXxPmmHTeAvwonYcJkvP08siyUbdPYyJ/aFCxso654qqZv7hbQhwg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1775682334; c=relaxed/simple;
	bh=Xo0rakbtHbkknLquR8uoW3T8lzImsIVV7uEGarbEh10=;
	h=To:Subject:From:Message-Id:Date; b=XOKWwPJH9HQh7htrZNmsdyZlq+xtEsnEHp7cvQqCWgtnZiy8iyReTyovzuOCzcfdMMBMJM+4Wjtka3BOmVTJ1lLNdMoCadJeaol4zv97+d+Y+SKvuUUlKEASC7d3zNRMzNU0JG5Os4Jna7NUVE1x8WEVS04Oi9Cs9o/T22OMeA4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Yo5uLC0w; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Yo5uLC0w"
Received: by smtp.kernel.org (Postfix) with ESMTPS id BCD37C19421
	for <ddprobe@lists.linux.dev>; Wed,  8 Apr 2026 21:05:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1775682333;
	bh=Xo0rakbtHbkknLquR8uoW3T8lzImsIVV7uEGarbEh10=;
	h=To:Subject:From:Date:From;
	b=Yo5uLC0wGwmuPJKPwg2QgEDQv5KZsPU5Vwbe93yitL6AHxLpxXBnEtBjCHvBmmNNI
	 e7sqcSyKnjBn9NQY3p2uWnMF1sikln6feObbD5Eve2rE/TOaRHVq8Ee30EF2nkZQaD
	 NRhwk/f3UUIAXnC1HG41nWTOz9GcnMwDmhbI8uPtlEihU1LGUedLtSRGliPtEwzud+
	 UOLHiZUgyIjjlubK3T1+TDcrRopg+90w3PKfmgkgDQvUpxFkvbRW9GkqZhG6Yt01YV
	 AVd5KQTEXjy84Z7ShT3c0JRFX3dV88aJ7GtbzzgCeeCrwB+tZZcWF0Vs9AJswwKxp7
	 eUnjELN1EtOdw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AACBF10FC441
	for <ddprobe@lists.linux.dev>; Wed,  8 Apr 2026 21:05:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177568233369.4981.8356795926352592537.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: a8bb37c99899101b91dd3b519b10cf42e09a7830fc8956a8cbf2fabb6657aa79
Date: Wed, 08 Apr 2026 21:05:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1775682333
