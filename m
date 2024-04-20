Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6CA89EAE5
	for <ddprobe@lists.linux.dev>; Sat, 20 Apr 2024 10:10:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1713607823; cv=none; b=brS8PChMgMhVsBp+pnJc4oNV2A7fB70Z9eIC4h4a7CiwqQuHXpCn1EijTVyF0L90+xTpB75HhDyrsmc/xX162mdPp+1wrPtZHPUU1Ys/4jOiDevgirtRQ1Mz1+EmKitJ+RClcdf+tcBsySTBbymQs9E4Ro6pWVXCQDG4tyGQDLY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1713607823; c=relaxed/simple;
	bh=jjoP9hYrBf5jKjCV6WYin1BgqIXUOe2jzkNFUlp/Q5I=;
	h=To:Subject:From:Message-Id:Date; b=pD2gpgDLNv0m/ShmAnLSqOd7LX6daVNlTFU2x4O0QNnfHjjKKyyak9OWsl5hRGnW2hks8d5/hqDfQVFnuH6AnLzoWqGFh89s29ZnssgHxfb7KLFFq/5mts0tVO1bmD+CRoaWVqidMunm3GL1uPu7Y6q3D3ZS7TmeNxcxAA3OQ5s=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=SKoGg3Oo; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="SKoGg3Oo"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D5CF8C072AA
	for <ddprobe@lists.linux.dev>; Sat, 20 Apr 2024 10:10:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1713607822;
	bh=jjoP9hYrBf5jKjCV6WYin1BgqIXUOe2jzkNFUlp/Q5I=;
	h=To:Subject:From:Date:From;
	b=SKoGg3OoFjTM8ozsGr9X22RxoKk5Eceh3WIKCSez7IAW75wItNTrmGuHjuqMNV3B0
	 U6DLkoX8r+RPIxoG7TKkpIh7ujCPS/plsgXLoAvTpSLVmHrZSItBgtSB9S3cb6Yt6F
	 EswVDxEqKD2ZE16+h4QNEURuNVUm/8axiKAe8qMyG9Bca1xz6lcHD+l6/jR6QFSuxu
	 rBbcaiqF2dMdpQypi80JAYIqNPRamCDuMBbZWz6SzegVTBFwQcmcX+O2i4orj3DlPB
	 vhYYRK4/QUSJkVdIXvTy8e4ToHI1TL6sGB5UCtISOyEFzSEEaXiM9SiWWm7RWzmhq9
	 jMgc7mLDGaTSw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id BB6BBC4345F
	for <ddprobe@lists.linux.dev>; Sat, 20 Apr 2024 10:10:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171360782275.12171.16906791400083218007.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: bacbb46b3bf308a33a53c109ea66aae20e6fd4fa51a3e7f679e57e36397d6fa0
Date: Sat, 20 Apr 2024 10:10:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1713607822
