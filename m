Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2F8EEA95E
	for <ddprobe@lists.linux.dev>; Sat,  2 Aug 2025 15:19:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1754147994; cv=none; b=Bq+o7YOU5zM3RNO7fY8iLUKQmx2b7OQg9Rkbx7mDBFkx2u+2HGIfz94UFjAorxKg7k48edSi/dhgJJmzYKLizV9QR6SVQ2hhSK6AuPhdzMGwue2A/OMNREASZKItbw4WZIdCp8zAtMXH4OKTzuEw94yU5CbRSHoIUKqk4Tb5TPc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1754147994; c=relaxed/simple;
	bh=AppxR6ZLAwETNHnyJljJWr95BZ+Wav5niJCu7uhytcw=;
	h=To:Subject:From:Message-Id:Date; b=JUvD11IPud/qVRLRyuLuEQaSlUZfSbSzYYIpnzAhjwUlmPDqsOJ4jCh+T6PVUzYeYtGHuP30N9nGMe2W7xxrQXVP4cYlxme1RLDxiDuQ5mQO+fbgBW7SYXPoEHOO/joMnXShOYQaReBLeEArUuWm1sumlLc3EfZB/Dn9Q0mDEyA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=GP+lUmVl; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="GP+lUmVl"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A7444C4CEEF
	for <ddprobe@lists.linux.dev>; Sat,  2 Aug 2025 15:19:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1754147993;
	bh=AppxR6ZLAwETNHnyJljJWr95BZ+Wav5niJCu7uhytcw=;
	h=To:Subject:From:Date:From;
	b=GP+lUmVlS2kfk9QFszH4DnBXqiLPU2Yb5p6qA75Yl0+w3ZtSP46Z5kh1NNebuqGzU
	 EkFikVJG5Zh7d+XBL0JD/Hz/Jo9l6Liypc81UxyV4u5/15H3UgyjnixaiyNHq+gDdm
	 i/UgDttJfZ7XbssFElg8FE1yUh+rcVqrn4jYFREV3jGSaCW5nwvN6uQHWK8OyqoGiA
	 q04xTV9hSXJfk15FKPtk9IwY4q3zDac3a67hzIntvA8izRZGmAKVncuxr4zoQONRvo
	 JrIyfY3xATK+Ns85274D9LdTL4Lmi9YAjdKShJbcrwZPagWTqwgBDSz/PaGCzWXlar
	 52FT1jP/Qoqtw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 948D8C87FD2
	for <ddprobe@lists.linux.dev>; Sat,  2 Aug 2025 15:19:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175414799357.11410.13951313826282448176.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: f05e5a1ce9dd98fd5e0e948be497515098435628f80a6d476e0b5176742b5dc1
Date: Sat, 02 Aug 2025 15:19:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1754147993
