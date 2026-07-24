Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id DC9883D891F
	for <ddprobe@lists.linux.dev>; Fri, 24 Jul 2026 08:20:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1784881234; cv=none; b=mNIeOs0ihqjwDvlydVadBSFZNsFPwjLTWbPkuy7keIbfPeZpJ1sKcMDgWKS3u45Ii95BarwmR8ASqc2l8mlqoKcEpUxKiWwfyMvzG7wNm4UT6UhJhJ/QPEkpAxNsdJEjySA+uMNxtekRjdvNeeroGbXL2iHao/9Th8ZbqfX57ao=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1784881234; c=relaxed/simple;
	bh=xNxtEqS9nDUJNO4qrWaEcw3cyhfo1kFfYQutqak1qbc=;
	h=To:Subject:From:Message-Id:Date; b=LYavMZKsExQd2dRp3YpTcy/XvOpPZLwNd+TRDs5ux6adnSGXemYlhYnnTq1ut6d2bALfb1vIit9kPb2ajmesYLIRyv55kaLbJKRps+r5SLoDAaQnwIs3ObJ1iNJInD18v36oOjbl5WA8oqAqIkYAKyzVDSbcoRNGu/6sqgu5+gg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ueBwMYEQ; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ueBwMYEQ"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CAA85C2BCC6
	for <ddprobe@lists.linux.dev>; Fri, 24 Jul 2026 08:20:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1784881233;
	bh=xNxtEqS9nDUJNO4qrWaEcw3cyhfo1kFfYQutqak1qbc=;
	h=To:Subject:From:Date:From;
	b=ueBwMYEQjx2bWz90BECZEFRYz6BZ91Uid8Dhn1NULXxrPUvaRMQzSVbzYA90nQhrY
	 LNwvama24/jq28MRXH0Ee/4ncyjd7VcHOpW6dQe8LYTzXAg50lrwE/XpmvV3IIQlqC
	 kP/g7gy7sB5UuLY5OngGQnUD7wFreUo0L2AF9coetv8r4AksHGOYLCLywhM+i3qBRi
	 8tkZmvTDLmbb8noyA6LyT1Jb/8CeYpmM4ZpTJEHJPM7evVNVRg0jMQ+Zl8HTmpb1d9
	 qi9fZbM2qO3mOR5ob+5wj8nBDFE1myYPwoG2/w1DDl1Z3AUcDi7vGu5JFcrByQFjso
	 Zj+bxqg9UCL2g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A95FEC531FA
	for <ddprobe@lists.linux.dev>; Fri, 24 Jul 2026 08:20:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178488123368.32521.6102611749693546221.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: bd7e914bc5aab8c3897dd2826ccf85da67abe0f8e2084ed87e519cc1b61b0920
Date: Fri, 24 Jul 2026 08:20:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1784881233
