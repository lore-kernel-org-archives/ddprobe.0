Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 552748F6F
	for <ddprobe@lists.linux.dev>; Sat, 26 Apr 2025 04:39:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1745642394; cv=none; b=N52IckJCrOPrn5mkAPIWLFM6CkKQhKX4XAFpOxedw47YRM5rZGyi0Jz5PTpB7CLVXQjSv9bTYq3T1X+dlFcgxAIzgfbPzPq4pWfI0slAVz5RaJg08Dq9vHZcSYrDkaMzlHd88TkR73BSmA5pHFJwM7t+OJn71tbIJK00PfnPFEc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1745642394; c=relaxed/simple;
	bh=6+tBh7kEKYhJTtTs6nWkobVl6PfVSG4TO1pkamLBFN8=;
	h=To:Subject:From:Message-Id:Date; b=mI8a+i7FntSezKZ27+Z3Hdtc66cvMISHVqLKOeM3CyvUHVewsCXcbxNdX9GjvEqzGdWEuqg2zYLEYuO9+LvEL/VrxV+n3w1zgjKyi20JjwLBj4kTmDNeywYleRvRGmwHw4YKkQnM65+QAVzdAzMIW/FflVUBRac+KQ3Ey37Qs90=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ih4fL/Sf; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ih4fL/Sf"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AC9A7C4CEE2
	for <ddprobe@lists.linux.dev>; Sat, 26 Apr 2025 04:39:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1745642393;
	bh=6+tBh7kEKYhJTtTs6nWkobVl6PfVSG4TO1pkamLBFN8=;
	h=To:Subject:From:Date:From;
	b=ih4fL/SfdmQl/IGwcktKiRLwbgkjNaqh62mgnPuNaMuPQhXZY20P43OzUn2wXUniQ
	 qIRoq9U5XSuRpa+f+9aVLiOpoMGOaao4gT5oHzlcLM2de7GmzfgGCBASMIQZKpe8j2
	 VMgpJQ25jvA98ilL8i92lyTxhN1tsTfq7Vctn1lv8ihz5andN3B0TVJREPhaf9IDTz
	 U6p7LvDCeN/Sbm7bZ6KvspuXlOb8UQ5luYYpjcLKjiEGcxZ5TUkxjIUcdi3PJPhdTU
	 hRJKofczJzkJak3nRHZTEAfLrJTTIC1xIte0rKlzzEPcAtu0R0NuWAwtxs2iVvf40w
	 Z1KsOAuKUtC1A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 98474C369CB
	for <ddprobe@lists.linux.dev>; Sat, 26 Apr 2025 04:39:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174564239358.6336.12925687651115995869.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 76d8ea4062ddc4f6a090776ee276ddbf16e217868ebc86888092e4c77d13c396
Date: Sat, 26 Apr 2025 04:39:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1745642393
