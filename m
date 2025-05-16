Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3864021B9E7
	for <ddprobe@lists.linux.dev>; Fri, 16 May 2025 09:59:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1747389594; cv=none; b=JOU8TopPih2QYiwfLV0xeafvOVxEmLKlXQijIOmszBCP/+jJS7YIWE2cOn4eoDRYm9og7RSvaqieDPCksu1v8pEvi7W5Wr9Tbp+EZ3rZK02zBE/smTuP6raWTBtZ7OYcjWbq4IGcGUwS3/BuK2GuiQ01/CCb9O0La37Se7thhEk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1747389594; c=relaxed/simple;
	bh=1jrhV3astFKGTtbDhSoBF5hkO7W4I2oW9uuNbBIY0yE=;
	h=To:Subject:From:Message-Id:Date; b=oChoEIIp73KxthS4/T8ev72OYORAIy9XcUoYVAVWhSw3ntPzDNS9e4UFgC3k55P31hFI10oUjmT0RIuyD8tqBVh+PncyXD/X76RyO3maSYaoZ6LcaUsJHUraDW9oOKm5BsCt1ZFNOBEAfhCVqtXs8jk5dcUmh5lYwyqmixGCG6s=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=qpYExUUd; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="qpYExUUd"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A1C2FC4CEEB
	for <ddprobe@lists.linux.dev>; Fri, 16 May 2025 09:59:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1747389593;
	bh=1jrhV3astFKGTtbDhSoBF5hkO7W4I2oW9uuNbBIY0yE=;
	h=To:Subject:From:Date:From;
	b=qpYExUUdM4Ek1FR+pTX2pMFCuCQMm6JRxJ4ZFaVmY6D4EKPq+4fHlBygrOZcToTdQ
	 zBYAfUcpDTpdufX07R8qpEj/xme1MyW8EAtqbQKRzisUXkjcoV3bY87xkyat4c8oPC
	 pFUHN65Hoten2QyHqQDiy1RRfY7GeseN63SlSZSxCLLviqJDDqTsSrafGXXhT2lgdP
	 2c58OLStZj0kwQtqSoPyswU4sjh9atbcMfZpYkT/ePsdMjkUmYjfQ8UnaHi4qhg/Xn
	 fHJpTpiMx3Kzz1Jq5/p9+HxmFaKksv64GOD3swACARnoCKeQYhJbzywc2ji1wPdxfq
	 mMBEId6j8nGgA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8F431C3ABD8
	for <ddprobe@lists.linux.dev>; Fri, 16 May 2025 09:59:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174738959357.12190.14620644294586254638.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 6b7c604ba729f4286b514e29f6a83f57d5300beef76960fb6a7880540d4265ae
Date: Fri, 16 May 2025 09:59:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1747389593
