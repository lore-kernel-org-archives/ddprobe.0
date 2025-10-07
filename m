Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0D98F1A08AF
	for <ddprobe@lists.linux.dev>; Tue,  7 Oct 2025 22:29:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1759876194; cv=none; b=G2es0G2N6E/+TYxXbfyi/fsSD+hzSg/R6OIVTNgB08KGAjnr/RO4OS5slnmmiU20RiKygfwqIFX+90go58SY+okUAYr0xIUBs7PTCphOh/BYTmhO9C4tPnXNzbcw3GVfvsRhML0Fv1JAW5pMjB4vfwRHosE60p8gSyWamKnkv6k=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1759876194; c=relaxed/simple;
	bh=6hyuRyjVup6Bv7G0NqpxEfF6SsJ1tnD0ciOXLesBuVA=;
	h=To:Subject:From:Message-Id:Date; b=W9I7q8k4Oy3vhNp5tbFYZrmFFgq9bXJHSkooqDvj/FtNljp89His6CyZtSXvTsCZ75wwqvmifW9ltzZBI2wvpDUP/E+vk0Bz58S+IFjLHRcplpMHC5rQEMMrnq046N0GUZx+Dfr4/nbh6pZViGTN+p8T0POw4Bu8tpEHoBXJBow=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Mj4VoaE7; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Mj4VoaE7"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A4391C4CEF1
	for <ddprobe@lists.linux.dev>; Tue,  7 Oct 2025 22:29:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1759876193;
	bh=6hyuRyjVup6Bv7G0NqpxEfF6SsJ1tnD0ciOXLesBuVA=;
	h=To:Subject:From:Date:From;
	b=Mj4VoaE7NOFpeyP/yl40uPwsLkL0TAqT9KDCb2CCoIG5nSbyTmdB12Q2NrFoIycfk
	 eMIL5GIU/g7ttjTxE5dCOUk7zF7YbhYGRVHasF7bGbhQ6b2R6jB/fmZOFhZm0ZkoZp
	 lDICHhlXAvNjhZXOZr+VmmCuiEN13YrLrIJ4Q3Sqwzy5rnGDbAaVMYBlyG8E9/SKI2
	 UTJXS0lo9mrvyFpPXEmv1kk3JW3l5i7dfMx2g223gR1sAiAhtql2gJBEd2Sjb3J9d3
	 yasb2IiA0TCBbtW2EqRmW8eVUFo4HHRlKSYmdgq20XzPQ4/jNNvtIzbzXlZGDzLPcq
	 M16ztQ+62yZFg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 90F5CCCA470
	for <ddprobe@lists.linux.dev>; Tue,  7 Oct 2025 22:29:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175987619358.29724.4752708910369267385.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: e407b5462bd70240c8665b2d43b25a727d06c5d23f68fc035e3b7af7dbe6e6b7
Date: Tue, 07 Oct 2025 22:29:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1759876193
