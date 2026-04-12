Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 22FDFBA3D
	for <ddprobe@lists.linux.dev>; Sun, 12 Apr 2026 16:47:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1776012454; cv=none; b=lI54pMtYX5ZzyflcCif51yNZGOELJvd04B+Yt5BT9ba2gXd1QgDUG0pO/PUGoSRzf5KECIlN+cof/UOvKEzp2+lXI1JgRuibcBpROjY2hAW/X1Buau6UCsNONZKqVvOYyJYtyMPLk0R3CHcscZ81OCdGZKRgwc4D4NEMZS4dxwY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1776012454; c=relaxed/simple;
	bh=mZPg02xshdddIfVfGWDOybkO2SLf2e5yWxoq+AdxaUU=;
	h=To:Subject:From:Message-Id:Date; b=Z/2fLvhCThLlRJFrCfjhpUBMAqMU2wYUu6saIhq1zSSZq25gzpMKvU2zrttM/2UcpZBZFT8kE60spzkJYb38/x2IJPW9GXvAJt7NiQfqwl6fZgHo1MOL4zmQSoqwMovmrFaNKO60hfuGfRine/EZBX17DJO3t5AQeJqa/CkRsEw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=aRdPGsmu; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="aRdPGsmu"
Received: by smtp.kernel.org (Postfix) with ESMTPS id BF4C4C19425
	for <ddprobe@lists.linux.dev>; Sun, 12 Apr 2026 16:47:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1776012453;
	bh=mZPg02xshdddIfVfGWDOybkO2SLf2e5yWxoq+AdxaUU=;
	h=To:Subject:From:Date:From;
	b=aRdPGsmu9Ys5Dsw4r8BObXXhceipZL3CwgKSvtYoCBb1mzGSSARnN/0/dCuXOtkg7
	 SNcnU9gPZQSyM5hZtZO7WqC1ewa7haW7rXXK+68QucdqMOEMo9qpwrR7fBP3H22JgL
	 4ydt9VbLNK/uZ1YGe0bjSpp1vF/YhEnU9fd1usJx7nlT8qqh4CUDGom64A4Q+G1yHj
	 nkXdWRv9ZcxQs69dY0aYKyVXMGFBcqkp53dACBgGjJljt4S0eYvAkWsPQ3EwNvGS+0
	 jVTuqIY7/uAZd2HDYEhu1vvMGF9ftnAwAe0xkx1rRNkxZ13PtG2B1BbHB0JiKg6jTo
	 7kI7FXOBNBCqQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AEED6E937E9
	for <ddprobe@lists.linux.dev>; Sun, 12 Apr 2026 16:47:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177601245369.29067.9581145398531345800.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 3a60bb3da759fb299a93e44bff719f9bf1639c81a7c23101eb8dbd5048e3da26
Date: Sun, 12 Apr 2026 16:47:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1776012453
