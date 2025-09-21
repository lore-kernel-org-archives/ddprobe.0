Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1DB221E868
	for <ddprobe@lists.linux.dev>; Sun, 21 Sep 2025 01:09:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1758416994; cv=none; b=VtoN1BB+oNi0yP6wUipwccV8yNRshdM0Act1wND6LScNtm60YgNshoBmxKW6/zUCwPmg8ZI1lfomBHeRvdM0QAR8OLOoER96rHhX96GqF0vkQgoWdaz7m+LdD8vssfosWYYckPA+z8FjBp0SXvYirhLbmdTEplFN15WOLkTIPmI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1758416994; c=relaxed/simple;
	bh=CWIfMBfPpJ+fudFjtQcCM58RFJsntwrYv7SKvUwS4pk=;
	h=To:Subject:From:Message-Id:Date; b=bINcsLlX9bJBugYYiCmIR4wR25VYmHlF+h7BU3tigU2zq6erRiUOWW7tSD4XyelQVXfolx243xEi7VVJd17bwp55QWAZfl/BkxAryQuulxXfEU3a92FTfgPeYPmUR64G+ebIP7E6KMRcsk87GRvMgZTmT0zn3r9mSxBGCKtMRqE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=QmymRoNK; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="QmymRoNK"
Received: by smtp.kernel.org (Postfix) with ESMTPS id ACBDAC4CEEB
	for <ddprobe@lists.linux.dev>; Sun, 21 Sep 2025 01:09:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1758416993;
	bh=CWIfMBfPpJ+fudFjtQcCM58RFJsntwrYv7SKvUwS4pk=;
	h=To:Subject:From:Date:From;
	b=QmymRoNKrkfeOmRVMfX4jhmr6dQJKoDLZmeRumDP6DuEP0pMCXLXl7YTi0Tq4ipdf
	 RJzF0N1zyR28b35/1y2aNnYVZwWAFTbkYuCyg8NqRadVkr0BI+rsv1LqbVCz687K+6
	 LP5VoX+pIyhsRVAnSrOyxvAhB/LXekak7vFx+5q9r47DpHyCuahayci4AxP0J9U+QP
	 +jnx9IpVZQpPdngS7CSqIcd6zQ4Wu8i+SwQf+YRF1lS6OBwz+rdCE5W3SaplPdaZ7Z
	 FL4ewg5PRjJ+vI/9ztanMJS1C4VAqmsmCyxDpPLlrAxziI7fF4HgA5wdJzAlcf7q+3
	 YqXFvu1Eq2nEw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9A054CAC5A7
	for <ddprobe@lists.linux.dev>; Sun, 21 Sep 2025 01:09:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175841699359.1688.367802942891999644.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 01f4a1d38843e933d10ea2c4aee1356bac543453952a8bb8458a2e9d052c5761
Date: Sun, 21 Sep 2025 01:09:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1758416993
