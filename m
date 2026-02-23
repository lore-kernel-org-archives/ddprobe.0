Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2C49135B654
	for <ddprobe@lists.linux.dev>; Mon, 23 Feb 2026 10:54:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1771844094; cv=none; b=B2K3rSficOX8gNDjRd73wTHJu5h58DFsrmyDgX7EzlM0ufP8TTl9Db1glW2nj21rx8EnkBJlH3c9woahwwR2KArEd17bUv/hkA+R6cLomnrIf9EuNHgNnHC2T99a61cvpxju5l4MR7+j/mhUQXXqvXYX9DtYDTszulnacA7Z5DQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1771844094; c=relaxed/simple;
	bh=e4tk2fuQpVsZC4CKQ46h5goHXGx0rejjS4u66EwU/0U=;
	h=To:Subject:From:Message-Id:Date; b=buxbW2ETkzyH6QfT5XRYZhSH63iS9LPYUZM619P+h9O+y8FDm6I6Q1lNJuaeHQ3TIFjjHtA3TvoQjxpSu7q1fWSPatWCGHAQ0478IY944ZBm2BjnPOIqe5boibUwoFmVL8Lh4hY3kNaybi8C/EofzAZFX30+PBeoeqb/1dC5EHk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=V7sJ1pSG; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="V7sJ1pSG"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A3CB9C116C6
	for <ddprobe@lists.linux.dev>; Mon, 23 Feb 2026 10:54:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1771844093;
	bh=e4tk2fuQpVsZC4CKQ46h5goHXGx0rejjS4u66EwU/0U=;
	h=To:Subject:From:Date:From;
	b=V7sJ1pSGVwvxwGdildUj0OTZANS8f0qspuUUpRlyU04aAomujat2+946R6YBDffTb
	 67jY0pTRwVKbBGr0akyRvfZ+03P4mD9hxEZLFezulWOltZC0eYpTgyFVkGp3IzY7rn
	 D5cHZG4MqJFR6tar0cBGX2kgNsP/pn+tES7KcSd/+Xlgg+Tac4b27i9scKSdLxPSsj
	 Uobsn7N8xGkIuW2YU6om847ZurzABAUw8TMqEk5+pVmzw9cZCJlZ0+2QEn+Uux+OtD
	 Axvz+uEYSEhDkVJ7EBmaIWehABa8kReiHkWO7OrvqKtuScYHjqTZcXpdmJuU2j5II6
	 ll80ep6eoL9uA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 91858E9A02C
	for <ddprobe@lists.linux.dev>; Mon, 23 Feb 2026 10:54:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177184409358.4191.411661366584827809.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 7d0d1092e9c95a596345f586fffe29790bec6a9826c779560dea7c79fbf2c8b1
Date: Mon, 23 Feb 2026 10:54:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1771844093
