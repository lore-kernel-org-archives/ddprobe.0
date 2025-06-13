Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 24B34272819
	for <ddprobe@lists.linux.dev>; Fri, 13 Jun 2025 08:29:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1749803395; cv=none; b=jpvPpoD5o0OZu7fCdiWLQwCvlW/NNNbH7MTJsXJtzD3GbdEw979UBYOCvcdnZUbxR6op33S1C+zLyw5veu6UDz/iCIRl1rKWw8rxf7pJXHE06ZkUf9IsDN6TL6B4mUpp1gG7hgJATkGWul1VoAEJdBjWlqEcakVBrlRFio/cVas=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1749803395; c=relaxed/simple;
	bh=96aiyefFE8gCPYFsnFBsnBkkhyCUzfA1qeziK0QLS0Y=;
	h=To:Subject:From:Message-Id:Date; b=mRZgVuA6IK+HH3c5RcgptjJg0j7E/RU+OeJVsRm4ZjjbwMXHR7NKttStrF3dn5RQ4IMXar8z4RnHgUVD8lQb6JNcDfM0oFx90xgtdYFRfbcmA5wkpFC8mPU7cyXP/tSx+awpJmIb4blZi82LY5T/lZUYIbMHOcQj3ssGrMLVhrY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=t8VmW6c7; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="t8VmW6c7"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A0FFAC4CEE3
	for <ddprobe@lists.linux.dev>; Fri, 13 Jun 2025 08:29:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1749803393;
	bh=96aiyefFE8gCPYFsnFBsnBkkhyCUzfA1qeziK0QLS0Y=;
	h=To:Subject:From:Date:From;
	b=t8VmW6c7xGEV+/NFdKCoukBF97pd2dKFNIXdI6rZp2rBC1B5HIbaN4c1zyQbOqzM2
	 Q2aH1gwHDIRqwjHVfUDyB7pjlQOWTMwyN50gpKkAfc/EtzlumrAbFA/qYmZbUGMSus
	 kVnz8YmbvsmJC6wQ0YCeC0MioWsg3JnwlCDMY1pCe9hIuLds+g4XEs7keMSwWoaDO9
	 vkQOL0xmH4A9dU/SXyvrNJKd2rG1PJ9y9rwcmaj8P5ssrxevCBtlejv83hGyU7Lu/Z
	 QPqf3eLRrWUhYa376sywWpIvkXgfcKjYmeANXgNj+FtYukLtsQoE5+nnXA15bkoXrd
	 TXbyjfjxPcdew==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8FA9CC61DB2
	for <ddprobe@lists.linux.dev>; Fri, 13 Jun 2025 08:29:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174980339357.32184.7343049896348346198.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 071eb84903a4f9bb0ac8c82ff4926667481a879f11cd592aac9713f16d630eed
Date: Fri, 13 Jun 2025 08:29:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1749803393
