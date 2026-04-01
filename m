Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1FD8B25D215
	for <ddprobe@lists.linux.dev>; Wed,  1 Apr 2026 16:05:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1775059534; cv=none; b=KSJYNFyavUOggLLkyBYeEllVpxUD8J3rrJAnw4yc4f+sfws//Dt6X5/5lSaQaGE3M6pWurwBaDNWE3rIqHFyXlr7XESx24Jup9/BDDLHwW+xdg3H01eJqfLUvj4bAVyXsJUKD/azQ7AZAmviXYKQJNgu4yo87xtTEwW54j+zmuo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1775059534; c=relaxed/simple;
	bh=SSwRZ6Zh7MKSIpbOywyLsxfUmjswz2kjOOxMJj75948=;
	h=To:Subject:From:Message-Id:Date; b=gkE9maEHpJBuWIXBxHqhJ0wfvkK3u2+tf9eTC2XaOAAzFJEz96sXPfyV3T5FZiGJCKqvA33yAhZZmG46OCvNK6poxEbWZIuXpsgytlg9H5C4FlcwgnF7m/aue7uiEna8U8usPq5m0+PEEPmzYrzdc34BrbRsfc7CXVayb5ANcrY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=VfvcfkzH; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="VfvcfkzH"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C20E6C19421
	for <ddprobe@lists.linux.dev>; Wed,  1 Apr 2026 16:05:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1775059533;
	bh=SSwRZ6Zh7MKSIpbOywyLsxfUmjswz2kjOOxMJj75948=;
	h=To:Subject:From:Date:From;
	b=VfvcfkzHgWa8hnvbCou+4jfGxWPlt8PSRduU6i8IdZxQHFPxyCU6FErAOpJdZ60oA
	 RqVPZ9/r5GXr7nnzgGcQap3iGyR2px7os01UkglEWmfkrNpqjJ3cYmYtDZeK585A/7
	 x898L0wBtjyRm8c5EWa0qhu0XX8+N79sNAw548D1/E1plSbQl884HjxWRqbZg/qVoy
	 Ba0kRzvQH3udf5EiTVgnp6J+yJw8lQe/Ls/3onrxXZ3g7/z8Nd/pRsyTdqqkJtdtSC
	 NraRlYZZTfYXi4ZxAHoS5HyqsFINfby77T5ML7VYv8tjasXM4wiMYjR/zcynDOhWZY
	 00WIsRn8Cs+Fw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AF91910F6FBF
	for <ddprobe@lists.linux.dev>; Wed,  1 Apr 2026 16:05:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177505953369.30479.9268508498213190564.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: c47bed59bad3cd58c042c03e217a966078669b1c1bc9bf610a4af717cd66ef0e
Date: Wed, 01 Apr 2026 16:05:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1775059533
