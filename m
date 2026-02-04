Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 10BCA39B48F
	for <ddprobe@lists.linux.dev>; Wed,  4 Feb 2026 12:43:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1770209034; cv=none; b=t+XKarU8hDqyW8nHcHiw+Ciawfu/5TAG+bX+TU492lQZmc0DS4hWEzOPf3jdGi39dSDf/w5uTaY87cszeAtw2CNRwFPoIB2kf3cpb98aHK2em/C1RlcwT548FKfhkvwbpRm3ZF/kNAXzwZMy3Z9srIfkvkk+yltAbjxv3gaxSEs=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1770209034; c=relaxed/simple;
	bh=AuO8U6acVM1MqX0ROwq1n3zz2IZKA8hXYfclOPk1jZM=;
	h=To:Subject:From:Message-Id:Date; b=MrW17U7YkaGSogzCje1pqvkEFpjyDf6yHCpMKmZgG1F+AzfnBeHoWyh0EmNn+Ww02auiPZklm5RxcTamLFZWzKkcpuMAqCJYPNa/8DrYHvMy/6exXSJnpGsCRUmKkyggYyBRAk2kKs29No8JhEkgwkm9C8K6FilElzGXAuWmSsM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=S3ialT4W; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="S3ialT4W"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A7BE9C4CEF7
	for <ddprobe@lists.linux.dev>; Wed,  4 Feb 2026 12:43:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1770209033;
	bh=AuO8U6acVM1MqX0ROwq1n3zz2IZKA8hXYfclOPk1jZM=;
	h=To:Subject:From:Date:From;
	b=S3ialT4WZe9NFK+6kSygY9dC28VJ9NEIAAIDbumkFMIUxnuFSkkWnMM36mZ0E4Wy8
	 p6PtQe7fGR/zTqO2pmmzJ2/Yp3BVigIjIMefl1sC3Bga+TP0wuuXJT6t++1vKC7gb/
	 6RtYKFMNW2Ch7ei6u+sGXH3wk0UQXNcPFbk8A9d0YB2twPfqT2bv670pyX4Z0v9LWi
	 fGPdtE6sN+UMy+Nz0/ApOIO+ebeUFwQM31i0FeSnHtAXy89Lz33ppSjwrJ6xTmz+2y
	 TONY0vHNRb64nFbVqp9Aw6AmD0n6Mq+KlWPWWX5OUCyuK3qQTpaWQ/e9Wguj/t2WBA
	 Bd9Wj+yLLAxJw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 98F8CE95398
	for <ddprobe@lists.linux.dev>; Wed,  4 Feb 2026 12:43:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177020903358.26932.12905945892721083068.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 0fb63dc5dce73afc4ae23a70f6c0e9e0f5feb51d4aee6a3427649101114e5539
Date: Wed, 04 Feb 2026 12:43:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1770209033
