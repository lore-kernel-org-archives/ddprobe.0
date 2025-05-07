Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2D3112820D2
	for <ddprobe@lists.linux.dev>; Wed,  7 May 2025 15:19:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1746631194; cv=none; b=TAaE37NtBYILUXaMrUiC6uQwTaI7O7J9l12mIyIWVfN06hh5o332w7xeY3jSK10yHdUKD6yj7mf9pJNYHahfzXEYneHnDpC3/uGTPy4hBQ3M+qMSbnD7QrgNiEPdbK22ZfOcDDnMPoO+85lVZloknHLEeFlOGNDQQ04SIgAYnOw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1746631194; c=relaxed/simple;
	bh=qny2XRtiyj4vVKnvGYxE5kLM1GqBzxCn0mf+AKwThu0=;
	h=To:Subject:From:Message-Id:Date; b=p/Tdiuh7uwcL9rPK0Llz/LFEdQfwhCfeO33I3WXTo58hzeXHMzRbYYlo+3vvSGVuw+i7BLqV0pDw1n0OImQaZjZh5FIqbbiz3oQTA0zOu0NdSDGeFSrDPTbKg1PzGcS9jtEYLb1dcjQKVg+cRXveaFCxl2VD/IwbUhLGyo80i8s=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=nddxAjrM; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="nddxAjrM"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9C091C4CEE2
	for <ddprobe@lists.linux.dev>; Wed,  7 May 2025 15:19:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1746631193;
	bh=qny2XRtiyj4vVKnvGYxE5kLM1GqBzxCn0mf+AKwThu0=;
	h=To:Subject:From:Date:From;
	b=nddxAjrMjG3UZ0cJa2WXEtyrm4bgQmrTYMqJrXCq0k9T0H8xa7oZUKir2nqCfu+d8
	 1MOJsfqGUjD2B1GQJlt2EnedOrgrZ0OlGQO9OSGSrl0OjFp6RXo6YW3UQkUrhlNpd9
	 5Yhuy9CbgoqzyPlLyyRp5kx+jyOsFKFl1xhTvN8Yy8YljG2idd44W8DDCLImjCX1KN
	 ThDlfTvlpsoNrWj6Cyb2uCiUmA/qRFU6HeNaGyfiP038h5sunXcX3GkEiFABTQVw9d
	 D+Tu3ovGV0YQmHGn0NxfY/cYkQeKFvB7N/ZDjl26bBCkxs94cBWiXkXkz0+ec8Wn09
	 ST7ZEbetYV+xg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8E751C3ABC0
	for <ddprobe@lists.linux.dev>; Wed,  7 May 2025 15:19:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174663119357.24004.8114867657945887446.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 5388b9e64c58c4619c94cb3f53a1fd72e5d22c08450512d43a2e938f7df506c5
Date: Wed, 07 May 2025 15:19:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1746631193
