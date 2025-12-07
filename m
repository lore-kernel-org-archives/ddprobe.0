Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3210E2DAFA1
	for <ddprobe@lists.linux.dev>; Sun,  7 Dec 2025 17:42:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1765129374; cv=none; b=kwQHHhQ4qNgGM81+FxfZt1e+mCe0QfaBZ7S6TbqZVCH4faXTPPqXal5WXj/RX0/B3SDCbSlW8mEHImIlCp9YHIExsCGlepKru2EUVxnQMlA/NNRSNyQfFVMq0XeWgt/Fpb7kPfhWF+uJ1r3DI9aid0vl1oWRfYox3Rj7dpR3U6A=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1765129374; c=relaxed/simple;
	bh=lhA85BRGovqzDwcMqZ7JLf59TT/aFNXyLLf9gL7BfOc=;
	h=To:Subject:From:Message-Id:Date; b=KSKPPBU5PouDTHVc7OzuZ1U16JX7uXz77Hk6xDxcive5p5H4s+gMp8rLLjBuMsQX3DdF0zKHFxuD97O1Mn1DCzV4DUVXzVEjBiPaefIL0bq8K/vcTu1HYAuoEdaqGXm/GeFeVHnDikmUqNGxCBmI6zdbDIH/iRISVLbIityQIa4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ZQaGZqED; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ZQaGZqED"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A638FC113D0
	for <ddprobe@lists.linux.dev>; Sun,  7 Dec 2025 17:42:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1765129373;
	bh=lhA85BRGovqzDwcMqZ7JLf59TT/aFNXyLLf9gL7BfOc=;
	h=To:Subject:From:Date:From;
	b=ZQaGZqEDCJL+bBG6ZsUTUWpK0mi639JIzF9+KrSz4ePVPMrajQ+5DfXJIsb0PxMUE
	 N0lZ/Qm3N4NBJKDRmKOjrPjkwQ2onOb+Cy2qw9NUlvlDWW6XMtLy0v4CFEZx1fsU1r
	 x+otu5Fk3qE93GB7W76zJY5HIiiOhy6Qgl6NtBUTpiBFrPbqddU+866kuZ/FqhzV1k
	 8SItLyRvJn8eVI4Sum4p08EMbx6z7WNkdz2jOQLg3ZOOXTkNemP/rs2kEV+3uaHOmM
	 roiBaL8UF0K19QnLngnOYXAmrJ6PnU5OLh6BcRm+XObw85DVLIftSTn0qJuZBYgFDV
	 78BtcgldhbLRQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 93DA5D2CE17
	for <ddprobe@lists.linux.dev>; Sun,  7 Dec 2025 17:42:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176512937358.19080.10214313260265970020.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 9d726e31f2073927767d938a7f267f39e9485effa96bd70e7a9832a8c7136e52
Date: Sun, 07 Dec 2025 17:42:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1765129373
