Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 44C6A26B75B
	for <ddprobe@lists.linux.dev>; Mon,  6 Apr 2026 02:05:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1775441134; cv=none; b=hjgAxM3mqUVog9bzAuBvByhYuTVV2aAFvRhgJmLx/xN7NtJRvIyOwI0yICAQgKF0FGOqmBYr5d++HTak0jP1Dx9YbLgyIJli2HoBWCIHJlZzGYf5ZNuw7WyeYq/Fp6k9j46zM4WQEfVH2R8YE7TjSAFeeKFsCQX5suiKZpmyJ9U=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1775441134; c=relaxed/simple;
	bh=QtE8xoQjDgP25xF2b4pATlUMbyOWfTJ1aSqKpG0LIAE=;
	h=To:Subject:From:Message-Id:Date; b=qoxAPllGz/TrrVdVa+PqMc1J+HaoPPrJfP4DYyjwQpZHGAos67jjJqZWnwdLfZEJf1ziPQDpc0mi1VKroH3kpN6Cgya5CGGroOB9ojxsIUvRcshQUSAASBTiU/kHvAiqyhAfcOk5KxIvbfpwe6Paaulao+Tcfhuf2BVf5+0ryj0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Fy3G2LDD; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Fy3G2LDD"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D9C57C116C6
	for <ddprobe@lists.linux.dev>; Mon,  6 Apr 2026 02:05:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1775441133;
	bh=QtE8xoQjDgP25xF2b4pATlUMbyOWfTJ1aSqKpG0LIAE=;
	h=To:Subject:From:Date:From;
	b=Fy3G2LDDiGMqwkTBXqDI1h73kqCDviIi9w4eXkqJ3ohLGYz1U0OmAAjnTvX1Hb/DJ
	 Mz+nyir8sBEtLsqMFrHQiS9vmtL6SZHjZ0O2HuaqXXGX81bgK3xtFJpoe8xdVW8JXB
	 1VWoLRqNvv54+GNhyph9ANYHNx4zHJQIGEYOdfvxgkzOWnUzjioV5hhUWNM3RYCgM0
	 8t7f/30EuEaAfv1JVWzb9rB9hNkzpGRNdeBU9OfvTpg0ss7PZP0nEGLGk1V6MHDwOO
	 1CVZQGZiMM+X1C+55DKEjPGpEi1IMXkl5REYURH3AZ4B1oBkjAdBNngJiR6oSM5W0W
	 XQztoJFqT3t4A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id BC3C2E9D82E
	for <ddprobe@lists.linux.dev>; Mon,  6 Apr 2026 02:05:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177544113374.3222.2615611492221020039.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 2774bc069d2bafcba4b77ac3af1c9ef8090c690c339ac5e366533e6eab74dab2
Date: Mon, 06 Apr 2026 02:05:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1775441133
