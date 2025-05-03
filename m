Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 450921917C2
	for <ddprobe@lists.linux.dev>; Sat,  3 May 2025 05:29:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1746250194; cv=none; b=vAwOR4TZnraJao416mDbUyos+a+WVnxiEQZC5fKV3gUH3x7Z88Gm/V+13eRVIxdIwooXD6N8tJyUVVL6WCs6igZqkeQ7Xfgj8Wj8pqZeeAhwMiOjZAU+E6/t/0kyAfHzDTuPHlFdnfV8JX1cMsg01wi4CnpY810FFF+HUymlu4I=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1746250194; c=relaxed/simple;
	bh=wBmVhX6Hbuv5/N3Kjy0b/ZdPsnJum60DXMxoJ7wxW1Y=;
	h=To:Subject:From:Message-Id:Date; b=Bpv5/88a13DhtnsQsrgdRzt3KW7ORQU0Homvjp94DFMQEkVFsg7P3Fgj1HPjoKXIOuqJ6JL1msanCMmvl97orJ0yYVxfcB8rpwemG79O7yN0HU9/5Ql6LVn0tnNJyAP9aDriIKIdBtBCOo+Jxd7kUaWJ6Sb7DoFvNy8pYvISlvo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=j0BeQ5CK; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="j0BeQ5CK"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B0526C4CEE3
	for <ddprobe@lists.linux.dev>; Sat,  3 May 2025 05:29:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1746250193;
	bh=wBmVhX6Hbuv5/N3Kjy0b/ZdPsnJum60DXMxoJ7wxW1Y=;
	h=To:Subject:From:Date:From;
	b=j0BeQ5CKj182SqfBavYu8qzCOCTq+qY5bo6m3SbhF9zYy200MUIR9eq6oz4Bi8Myk
	 xcIfwZ9yhwrdeQfhDSeFSADB39em5mCRwfJ9OBmzuljhmViZ49kJaYhGg1LpFODuN+
	 X/w/4lZcACiDqUIL1pVUepUOwJGAtOM0l3k/UeE1VJEdbo6V6p1HP+lY5nzW3v9flD
	 GRtHtOSzUtlKMoIOgtbU6bTi3TTf+Q2OAFrovjz37ll+nKNWDF6z0OMLlDdJYw2L9i
	 kNqueSjGCA2GYoofx4fiDVnTyo8X0tmiqnAGW+/kgIXQmWBrWiqZzKlwEmTXb4fmbx
	 adIq/D5dGPWeA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9E314C369D9
	for <ddprobe@lists.linux.dev>; Sat,  3 May 2025 05:29:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174625019361.25519.8337660124844074916.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 41090914d36be2a13e35b4b2e8724606214ae0c11fe750183e631039794a748e
Date: Sat, 03 May 2025 05:29:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1746250193
