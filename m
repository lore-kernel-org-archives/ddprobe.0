Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 306B617AE1D
	for <ddprobe@lists.linux.dev>; Thu,  8 Jan 2026 16:03:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1767888234; cv=none; b=DDVcSc3rGOeiQ13ee/4o2bYSo55Ryb4xzcgvQ0QhsnPdr3DjnvJLqMLxyzJu0kSotGya9UheL94/0EKWJhARS1g7nKwIAemXDCArg73nbP28z1opvso4sLgGs1qKw3mWc8ULCk3kz4cQudr9ez4T/RG9wVivaFRR99TckK46mzM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1767888234; c=relaxed/simple;
	bh=65QGzPwbOqsWtCpYa985pJxRc78iVE0M1jqTYiZgEiM=;
	h=To:Subject:From:Message-Id:Date; b=ppS72Vpsy2wTlEY0PG0FtZxH4h4bYS7vFyoWL2Xauxqkt2FR2qMzJchcgw3lwmAQPPQFeqcH38B013iLdjy7cs645CtMBoAe7+IQUrbtAklHb9cd5ftVQUG1VE/sNts31P6omfqGQEIB4D7d8q/niL7PmzG2jkAW4hGNzXg/ufQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=r60p+NDG; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="r60p+NDG"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9D781C116C6
	for <ddprobe@lists.linux.dev>; Thu,  8 Jan 2026 16:03:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1767888233;
	bh=65QGzPwbOqsWtCpYa985pJxRc78iVE0M1jqTYiZgEiM=;
	h=To:Subject:From:Date:From;
	b=r60p+NDG+Yq5b2qHrA9g9Bfm+DPIHgqHo2jw6Ybnqbpyfo6vcTgyj9QdmYu4VK13w
	 BjqKnszpKY1V794OT085VpKNBGR6K9qP1L7ZVlZ8i6gB+dxJQ/Im3uBR2M3UfB547u
	 Ln9qzaaAXr3HpuqMJDyyXfDl9mCXIUFLP3JuZgaJ0OZroyaVrpc6YDcRlqbM+4S/2M
	 W6PDGd0K5pcXbujMVQ71qlUHuSy2sMediB92s6lBlriHx5UzZBst3jaE8r7/t5G86D
	 AcNHLQGz3cb0q3o39xo5dkWC5RBWHhs/3yzAKN3P6hnUKTZazqmU+xyqhC1qXIqDQZ
	 pGGqH1SfS3TvQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8FA0AD1D478
	for <ddprobe@lists.linux.dev>; Thu,  8 Jan 2026 16:03:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176788823357.25777.13700101500649206888.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: d4d5b7ccbb4a9062471dcd428473aab1eded5621f4e9b3d63c66b570804c77e5
Date: Thu, 08 Jan 2026 16:03:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1767888233
