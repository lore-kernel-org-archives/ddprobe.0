Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0A1E838E10B
	for <ddprobe@lists.linux.dev>; Fri,  6 Mar 2026 12:14:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1772799294; cv=none; b=R68LYn+Jd4U6Sk5yEvL5a9L3ixaqxVl8NPdBsx+KMO0eqSzEZvd3DK8WFktxQ6RezSPu48mZCQaQ6ZJ3IqmS6+sOJ+Cg2q8dTOTQG6FcsdwLPQSCsGgPnHWbjcC3OuiXjTnlKSSGWKa1ZtzLCZISklGegHu8bDNblbqM/LQxgKk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1772799294; c=relaxed/simple;
	bh=QuTwVFgPjWbESfyO5dzF/3UYwp+/eIleP8BXoyjLT+s=;
	h=To:Subject:From:Message-Id:Date; b=FbeIoULwq1Dd6C9yJpcnPH6tyfERiUeH1aibuebmXmEgwiGKQ14hdFjEJxd5Z4vt4A0mSy7jZxBF7GmtxedUzU4aEmUBXqXbi+TddEGbtRDDSqBTGz1Dg5HlIsBhiMT9+sukHGD7teGeAokdZb9ee4B1SBlipLNhoDPHd5MT1oE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=QN3/1ACt; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="QN3/1ACt"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A14A8C4CEF7
	for <ddprobe@lists.linux.dev>; Fri,  6 Mar 2026 12:14:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1772799293;
	bh=QuTwVFgPjWbESfyO5dzF/3UYwp+/eIleP8BXoyjLT+s=;
	h=To:Subject:From:Date:From;
	b=QN3/1ACtc+N3Bxil0iQqiga3dfNs0KFDtqIGu8k9fIl6fw/Q3z+F4TA4rAE3Z8pyc
	 mc988EM0lqcuA3ueE5EJfT99G4xYdO4N1u1XIIxw1o7umIccgCX/dMt6gxnVRSHQke
	 +7EC7+o+PkTzDJiMzqVHgiDIgHSLJUyZs063ptPAWIZ1I5Eks1I+lsKWNhSERSj1Se
	 GUSLG34pSjzHfEp8F0Xw8y+LJuX1qPxho9dJM7GnhoORMHcqq6H1qfYgaZ03/VBKYI
	 xfmlCZ9ofu4v76c7w5qPOGY3IoQbSOZtOkZeDzy0I1WG418d2uXiOh9HNfXceuXnAL
	 L8TBL1BmiKeGg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8FAD0F0182E
	for <ddprobe@lists.linux.dev>; Fri,  6 Mar 2026 12:14:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177279929358.30454.1980695727674555987.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 82d1a2f715f1845c7d266918db54b081d370512ccc77159b564f9ec57e675a27
Date: Fri, 06 Mar 2026 12:14:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1772799293
