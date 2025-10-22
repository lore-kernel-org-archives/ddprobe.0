Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D33BE340A51
	for <ddprobe@lists.linux.dev>; Wed, 22 Oct 2025 15:29:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1761146993; cv=none; b=rIU4nM0y+WhFq02jXtGNY2ERNu8EY2nBRpnNfOl9LUCVUt4nCOOXer503gngTItehzYrlUpbph0bmQ7uTh7oUo4pBT3VdaIJfyYQWtfo0XZtuu226vLySbvWVBLpVNLxl7zYH8l9WVOoFVy8uvW+UR8wsESYupcB72D0cwHCdrc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1761146993; c=relaxed/simple;
	bh=mNpnK0WGqk63bg5+/E8wQjJqu9bQagL/STLkC6NpurM=;
	h=To:Subject:From:Message-Id:Date; b=P3GC5XpUPENOjqtHouvdgi0SIqRxkLs4H8aHTPK9+a37S/XZWbv5NoruhOQBSRfUf5qCMofbfx6ERj6ELHt/hpA/9eNJspYrE/sXhA/v4J4JwHKI2H6qLPHlL8OXt46gAyLrERgBRT69c1fJ0QUBR7qPKp3dpC+v3NysyAMW1Hs=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=EmftGvPy; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="EmftGvPy"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AC7D7C4CEE7
	for <ddprobe@lists.linux.dev>; Wed, 22 Oct 2025 15:29:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1761146993;
	bh=mNpnK0WGqk63bg5+/E8wQjJqu9bQagL/STLkC6NpurM=;
	h=To:Subject:From:Date:From;
	b=EmftGvPyp7H+pdKeCNvIVkvjT+m+LvBXhmpPRU3azlyYCNO5wbHxhX6Pqgurk7bfn
	 UxcZbiUIymap/Vrpewb5MjyZrgb7SJXOaO7knIJMIupSQ0UZDxnH9gK8bgTX/4/c7B
	 fRR/hpHJm1nT+UwaW/vcCpb793mWYEX4gjvmS7l1EDo2DxYUSe9mJWyDiSZ3jXQe/D
	 /APa5CZPRTMBZh4/mSL5nhzTKEN4GquAkrVAMECrdf+faFTJz0Hd6vaYb886r4jao+
	 ABMu8gNSs/9GizaHnR4AyoQw2Y1q5yCu0SW39qqtv+kGuetPVQgQW7jjmFmgHl//EM
	 Cwi6OstajXB9A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 98DE2CCD1AB
	for <ddprobe@lists.linux.dev>; Wed, 22 Oct 2025 15:29:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176114699360.5359.9089022873773180445.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 3c5a974acab90bfe6d964290b84d0ac624b9e0c5322ecb682f42865aecd6aba1
Date: Wed, 22 Oct 2025 15:29:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1761146993
