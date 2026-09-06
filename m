Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 80FB6154425
	for <ddprobe@lists.linux.dev>; Sun,  6 Sep 2026 13:20:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1788700834; cv=none; b=mjzDPYcpLTFHmVsDuUKYrlKTulHF1aijMQkZQMmPbDC98NoKQZheUu2hIeA6p/NJ3FDfH4J+uGU4lOwCGeWjFGgHNO6ECRZoANbv3rnVgp+3EnpQt9BUWlPf1ohQwlqXNYtPjodTln2joEofIxq7fJwbh80/oWTF/NHkZn+o+3Y=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1788700834; c=relaxed/simple;
	bh=Op6Av1rU3bTqJLGh4vZk3iJke7BnZRvGhZ4CULKIJ0I=;
	h=To:Subject:From:Message-Id:Date; b=lDHTsIU/tLHDDFmGI9Myw4C2O+67i/VMAfeXedfMO3OKqBBRz+pNxgp6RNRepKGxiqR7vQc1h62I5tpHXqDWnmVCWYZ+MROBYe6wFSDPCCoo7YPtOf79kFwxbusw7kn8tABxLxqWIe7o3yNNzXSjtFULXSU7R9a5Q8PZqEjEGQM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=BaB8vgqL; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="BaB8vgqL"
Received: by smtp.kernel.org (Postfix) with ESMTPS id BF26AC2BCB8
	for <ddprobe@lists.linux.dev>; Sun,  6 Sep 2026 13:20:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1788700833;
	bh=Op6Av1rU3bTqJLGh4vZk3iJke7BnZRvGhZ4CULKIJ0I=;
	h=To:Subject:From:Date:From;
	b=BaB8vgqL+/8ItXyBdSCKNPkqwHEXaExk7L+HXofjsSiRfASX2pxa52S09jDDGS+u1
	 4TndvdKyh2GVksl4Wk+xyzCLfDWcdncLvcmSi2fHcyf+90ZkmFtE2bAM/puIo0FnGl
	 1092W6dEMewxbiwIGMqksJaJEq+ysw/CL6ieSRK2msMOdSsqRjbhRL6Ly+3+zzJUt5
	 1mrfnv1m4MOq+GKSgRPl8z6aVlhjzTodXyw0kbjfkSJV7WuV5P62kAr2aKLKaZKiBD
	 9nBktou0MGhlypz7Hr1atMcK4q3lcCIAVyAKWmxXlZi2N58oDH9P+0wdBGaAWnTOyD
	 OpGrJEEo11i4A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AC007C79F8C
	for <ddprobe@lists.linux.dev>; Sun,  6 Sep 2026 13:20:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178870083369.7972.12154832199586415725.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 6a5b6d59114f37943faa08e7ce8327a4f95257f2db16094ada05c3063a5dbd8d
Date: Sun, 06 Sep 2026 13:20:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1788700833
