Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 18C4C28F5
	for <ddprobe@lists.linux.dev>; Fri, 12 Dec 2025 16:32:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1765557174; cv=none; b=mAZzKu2mdzPIXE5TPCYxlJubgyGkO/LqeHP0aRI9FjYOxZrWnWxvBIpVIjG6MCUINUzIlJ0gyttEfUR5vIZmXwK+60l7qHmpu6oqFVK74ZycE4isNfDKgNVtlu/jz+aNxBY4B0+xPn6fYB16jujNGMquCMSKNgL6JzmORBZK5zs=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1765557174; c=relaxed/simple;
	bh=uka4U7VEgX2ublP/7GlTnmEHEc7JtMjZxeY0iaARVaw=;
	h=To:Subject:From:Message-Id:Date; b=eY26JbxZc+vwHi+dm6y7nD+8A77v4xprged9HjJRr6v7gIohOEJSNEGkuy7JlYSPw9+4nvGDLfArz5onppgV7RUlcq5UmZ3bZv+6wQAMQqifEcB6P9OGXlxmlXVV7JP7R5Gs5IJ6qiZHnhXHpOGY3FALCv6d1DpmSK+Ov8SKbQI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ca1bZ7VS; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ca1bZ7VS"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A4840C4CEF1
	for <ddprobe@lists.linux.dev>; Fri, 12 Dec 2025 16:32:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1765557173;
	bh=uka4U7VEgX2ublP/7GlTnmEHEc7JtMjZxeY0iaARVaw=;
	h=To:Subject:From:Date:From;
	b=ca1bZ7VS4ZXCNNnSX368nPvOybBFHDl1K9SVkGCVBffOiD6eMdJMFd8hfSBzIL4Ae
	 xOZB8otI7nI/9QA6MT+xPE3wbxE/VWGQXyDYSwqIQdHvzwDphGNpzMtr25w53kt19p
	 koN3ML96Z0qbh/zE5HNiJ8otnsBh89i51ZgFFWyEkILqFvo++9C+W8AnJt4eRqINX3
	 INVOcl7OXWxIS9jCt7lWDV3fQW0G35cNLc1NSj0tBsOHq1LopWr1TyXmRmz5VzdNm7
	 uIsPAVbRm2xBv0lCXo1fKta+Yc++aKZaakFTlXYYcd8zHI1X8njJCEq4EfxB9iyPNp
	 XcRIrz+k5E1kA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 924A5D59D78
	for <ddprobe@lists.linux.dev>; Fri, 12 Dec 2025 16:32:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176555717359.5903.11583790072206544229.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: dfb3aff7bbf9e35c4d0ac12e90f6c825abd262c6b52a7825ad727c8d649532d1
Date: Fri, 12 Dec 2025 16:32:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1765557173
