Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4DDD51F3D56
	for <ddprobe@lists.linux.dev>; Sat,  1 Aug 2026 00:50:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1785545434; cv=none; b=XLXmR6ZQR+mReEpppbut8JkwsxmrI0fhSblbXBzMe+AkR5TZ4y8w2Xe0w/WqX0AQPXS6My0Wlx1qAyvVjkBCf3ilFqbOx7EForSqEZjQVeS6+mwzVzvHi/0Mvi2kB/pulcaQfkkh0TiDVk/aiK7E8o2TGxHDIatI++qKx09Eusg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1785545434; c=relaxed/simple;
	bh=qGEqbs3vUk8qA2BTc6CspVbzkdUr0fg0aZIsYHhYj5s=;
	h=To:Subject:From:Message-Id:Date; b=b/goyl+yoGB8/0rKpi2miMe2c1b5TqjW+39Zo/psRvWoW8VV+DRRlBR16pI3CJLNzymLQ41nOi91OuepSesksGbC1GLt8DSfIaEAZpeFEGND2kWmihAzFyU5GrQxqBQf8hNSXBpkwvAdA43OiF3F8Bo0bpkA8UTG4IIrB7W27Rk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=CQmuahLA; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="CQmuahLA"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D87FBC2BCB9
	for <ddprobe@lists.linux.dev>; Sat,  1 Aug 2026 00:50:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1785545433;
	bh=qGEqbs3vUk8qA2BTc6CspVbzkdUr0fg0aZIsYHhYj5s=;
	h=To:Subject:From:Date:From;
	b=CQmuahLAuV36ne4NpsXyjcjBCEjoHBCLgB0Km0jNsEyR8OyVkW2YNpz1LupL4tlqi
	 9W9gU84AfERo1xzRqbC/rareaL96EASoHyW6fJLhA8NpD7KoJEXiUAC8L4lqlO+f+P
	 y8OaHNbqzLm77Cq5L5PR7K9EuzDLEYobp/VTLD3z1rI8NzzCm1NC8zBqTmONG8avwt
	 e3JifN3TkGOqeU1k4oXVYwE9f47toB247lRfu6EUgUZylf1oEC8WYcddoCF7lOUrpX
	 rukNFMSZuJZDNkSAnoeZ5Btc1+euWoGg/0PkqExW2wup+kWucPyriVtkQG/0c/ci+Z
	 8KqK9BK5UHOlQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AF4C1C5516F
	for <ddprobe@lists.linux.dev>; Sat,  1 Aug 2026 00:50:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178554543368.19211.3234034904971056335.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: d111ee2e42c9f1148ec8afda26c1b221dc6b1d92ef19ad155c803099df8ea0f6
Date: Sat, 01 Aug 2026 00:50:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1785545433
