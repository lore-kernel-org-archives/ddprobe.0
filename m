Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 74BB95FEE6
	for <ddprobe@lists.linux.dev>; Sun, 16 Jun 2024 06:48:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1718520503; cv=none; b=TkAwUTdsqrmbqHixG7yD0gbsxKN3LMaAIjzWaCBeRMXUizD2po7UUmv7IGj3V8KsvNfSIWarfnJmyCvYeh1Fm9YTjbg8ZWKUy4yELlSb2UflCETjSWFTyIyrpHvKD0g7WnSkX/pGSY2EXshlFwhQy41f15Rw5wbnPSnFm9YiT/k=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1718520503; c=relaxed/simple;
	bh=riq7N43vAmbVyXcu93DZB7fGTT9s8rybkWhsA07dHWw=;
	h=To:Subject:From:Message-Id:Date; b=OQ5e2zKje2HuRcNgwt4vB8EFVzaDi7yXjGzP2uUIbK/amLnAZL/tA+/9Mrn2mZ4bTt+rjqwQQzx5EAl85owh2EgvfSQISWqNqTU2nUVIMf2Sq/KcpUu+PwBGtAS1XQ8S4SaWzVf0aVn8HlDyaPw0PtYRKyED73bHRybzt0xliNo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=a0WmE4bC; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="a0WmE4bC"
Received: by smtp.kernel.org (Postfix) with ESMTPS id DE1A9C2BBFC
	for <ddprobe@lists.linux.dev>; Sun, 16 Jun 2024 06:48:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1718520502;
	bh=riq7N43vAmbVyXcu93DZB7fGTT9s8rybkWhsA07dHWw=;
	h=To:Subject:From:Date:From;
	b=a0WmE4bCw/WEcrIWPh1ezPyHnTM3Rt4tOfqhdzqkm13eRYfB7ENy2DiPnDsOzAZSr
	 BEee6ZQEpdP64+O1V1ZnlQsI7uqjSkj0qRIMkCFAP/PZ8LmePTdprLDdS5fr8yX0sq
	 AX1FQ9nXIw1aePS/yozTcB6x5CjZQmDSBhVi9jv6Y9bji9rAcaRSsAQE+zSZOC+/M3
	 BadFpSjw1zmE8QvRiB19gI4tVuAwb5kcnmFZrOnTIwkZv1b+HWQft606hayPz6UEln
	 qhZG6G2zNo3Gpl2NV3kWGKgejNeOOVbswe93AsMDFXXyrI1PnsHciLnXL9HkHUtHXb
	 lbg8nTTZKfDyg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C7408C27C6E
	for <ddprobe@lists.linux.dev>; Sun, 16 Jun 2024 06:48:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171852050280.18516.18372902849189074994.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 04229ba81d548b02796a8bd461eed3b9abc36ba20fe79d5c1fef5a4ad0561467
Date: Sun, 16 Jun 2024 06:48:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1718520502
