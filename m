Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 08C6C392C45
	for <ddprobe@lists.linux.dev>; Tue, 10 Mar 2026 02:54:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1773111294; cv=none; b=bmbGaq248HP6igYQB2BpZZ6LhKJTCKJ2AImKUVGAD+BFpZZeA0zOWrwyzhb0CgRSbjJgwy6hF+KyVbix90Jezi9YqmWR8/365ReN4w2GmVLuqqioqZX1J7U6hqesBW4Uctz4DbCi1TEKo45mc7K9xd+0LsxRzycTWZu4gmTilM4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1773111294; c=relaxed/simple;
	bh=VJKxhDgllHPTl02N5b2Oo4gcXdoLFrIZ0T597wbxxJI=;
	h=To:Subject:From:Message-Id:Date; b=eOvpYvlkOt/w+oP2HsucRc722WHGOMMfKuWhAJw28L1dbEU04OpZoABbfqACJcaYnQCbnyU7WU7iENQIdYFLrSswJF7cHSQz9sZtP43SBMhXKKUCI2l2fAim60Eg8C1YW79kWfiqZf6zlxIj0cQs7oGwlUW21uB7M6D7eerLgDk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ML5tA34S; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ML5tA34S"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A3E88C19423
	for <ddprobe@lists.linux.dev>; Tue, 10 Mar 2026 02:54:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1773111293;
	bh=VJKxhDgllHPTl02N5b2Oo4gcXdoLFrIZ0T597wbxxJI=;
	h=To:Subject:From:Date:From;
	b=ML5tA34SWmh2eN1fZ7Cux4uHen+Gf6e0LheKij1JDVhv96X4aAIwIAadc+bKEnsVZ
	 9kC2spb/xOfrZpEFKHKTeKUGBhp19MtRrE0SJNQuRu41ApiLZkD/1K1LZH/PkMrJ0N
	 2ID+1cKCM6S7KlbBT5a7cdWpZvlXQOZ2CqYLyMD1jINY6B5DzF5d7e85Uc8CyqwMfY
	 050yzNtfsQBpbZD56W8qQuYr45wEJHk54sgrXaKoCAwHhG62p9kUKW1GusWzfHI37c
	 DcI9loqn7ck6XbDq79ImDJxhIK2V3UqXTu7f9iB2selK3yV+QH+kdqib++105wcibi
	 1oy85s7u3N0Ng==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 93199FCC9AA
	for <ddprobe@lists.linux.dev>; Tue, 10 Mar 2026 02:54:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177311129358.13653.7177587734605232567.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: c543a5af1fd707bd5ae7f478f02c2f1b319b7233677345ff7d72ffd6a2635e70
Date: Tue, 10 Mar 2026 02:54:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1773111293
