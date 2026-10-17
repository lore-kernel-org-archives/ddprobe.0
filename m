Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 68A644CF46B
	for <ddprobe@lists.linux.dev>; Sat, 17 Oct 2026 21:30:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1792272634; cv=none; b=OxOoJqHxDV2Z+2IqBtszXkVOdYWTXChbyoOauXxC5NaMzmiCO/vstp0rxe5B25VS5adHy/V9sNOaJ4/XShb5db2E24wvpF9k+oic1P5sfkwOVZ1xIqHFbN+sy+5jwSZ/NcRUN3fZTCGGq1yaapchqOJlXBM8uZR3Ho40lG9wpDY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1792272634; c=relaxed/simple;
	bh=ySlPAxc1yaci7Y3EHgsKQv1IlpjhsCVTiSskOngj5cY=;
	h=To:Subject:From:Message-Id:Date; b=BEfgiz0pqypv/QaYt1Iyctq+95uFBLL/IYOzSMezB1qgtIRnZGbIkFhIDHKgMeZzwsFBVyvOzWqVlUYOndSYz5wXOOXegMfr70rqj1RTodUaF0G9hbGDaC8YbAT9eiAsQMtahRdY1kd8qz4rzw0FYXjj7oSrc+Gqtitsm6R7130=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=G6qT6i70; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="G6qT6i70"
Received: by smtp.kernel.org (Postfix) with ESMTPS id E170CC2BCF5
	for <ddprobe@lists.linux.dev>; Sat, 17 Oct 2026 21:30:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1792272633;
	bh=ySlPAxc1yaci7Y3EHgsKQv1IlpjhsCVTiSskOngj5cY=;
	h=To:Subject:From:Date:From;
	b=G6qT6i70V1qC2FUcyQ1Mf09ChqnFKdu7+qIpbCD1gNvxoESZ3Kxb2PA4MUd17q/XJ
	 eC8dWg7zSHZT8TC/wYufePfZGL7dJbqA1e9vEC+KZCjUYxzTxHlBWzn4nPftiiSHIU
	 iVwpVZuRemIWYxZ29Iba3Rnk3WqUpBhlpwTsxksQqiKRJMx9M7g7QJ/TIq38ZAT5FU
	 c6/PzcG2p7KMlcDUEKhbqxpGGvgZJ60bA4ZmqxNEfQm7yWJKMtK295RlDEPy55rVfu
	 z3I1kj0ETLz+4jwhecdce5kSBBwv1INV7niVgeJOcbl9F83a1e96Jk0SmYLUAGdntW
	 09hZg5odzYsrg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id BD250CCF2C9
	for <ddprobe@lists.linux.dev>; Sat, 17 Oct 2026 21:30:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <179227263372.30844.7068887532484216421.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 5bd38b7b7673aca97efa3608c0a02d9ad1e8241e1cbe591c443699ec49deb716
Date: Sat, 17 Oct 2026 21:30:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1792272633
