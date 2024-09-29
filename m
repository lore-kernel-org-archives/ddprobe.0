Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1D47338DD6
	for <ddprobe@lists.linux.dev>; Sun, 29 Sep 2024 17:35:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1727631354; cv=none; b=Yx4Gu3dQt9mc/OE29ha6vnzdah28ZxW60rFV5p//HT4gstVaMXeEFsIFRm8w3N5QzIvCbX8c57aKAH+Svjf9FasFXacB3u1NKtXevi/ZmkhZWX2Iw/+WND+t5NBHwdOmHlVZlwAaOuUOZ1JaHaBdYiJxRcZnDRrErzXtONqBFPs=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1727631354; c=relaxed/simple;
	bh=U6EOE0kGcf9fCSurJME1hXU8mAK+6qbdihi2b9L1y2I=;
	h=To:Subject:From:Message-Id:Date; b=dnPGJy+cXm8Ln9BvX4pJuqnuMHEb7Qo8ThKo2L9MVa5zThhBUF2sXNgWtxn1uG75s+b4hCPN6S06ocn+FRsMJTsF/L57ikHMx1Qsp9pbm5Tks8YrDkrElReFhyRYt37GkV+qWqEGq9EOyFuPsgpudEcBWd91pvSml5UOG9QPuzA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=hi2osf9X; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="hi2osf9X"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A71FBC4CEC5
	for <ddprobe@lists.linux.dev>; Sun, 29 Sep 2024 17:35:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1727631353;
	bh=U6EOE0kGcf9fCSurJME1hXU8mAK+6qbdihi2b9L1y2I=;
	h=To:Subject:From:Date:From;
	b=hi2osf9XTRkf+VRbyHKVI76qqQh+YQ6PIRpkaKqR7NoZDzYfJRgP0nygaj2CSx8tE
	 1L73W7VRImppAvDLhDptdPGZCc+ONcxYZ2hYbJTM7+winPkKtRDwaoR2o8DZR7PChn
	 NaPEHnPlFSV6vAjNaybLJ4QiHDAc3CWWXDW2XyooM4QpfhTZXrC1V12gqzoFE7GPot
	 53PIrYkm4mNyhGGH6ajgH12pmGQDdJdZOsFApsioB/T28pzYrcf4zISmWhX6DRyNi2
	 Xq5DptqkqjVYgT0s4ZVH8wVv4Z/rWGtFYXmqXcuF21X7AGzvoKa6ZVnK6R4QzEuQHG
	 hDPbBadAtbsHA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 931FDCF6497
	for <ddprobe@lists.linux.dev>; Sun, 29 Sep 2024 17:35:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172763135359.1108.8666391917605858141.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 5e89b4d38d9a26895004796601a3452f3a47f007a4a3f3e052959c101f4e3a06
Date: Sun, 29 Sep 2024 17:35:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1727631353
