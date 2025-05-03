Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 49B6B2CA8
	for <ddprobe@lists.linux.dev>; Sat,  3 May 2025 14:59:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1746284394; cv=none; b=FzabyowRbVWs8t3FBxXYFCVttFJE8cu+BUYLE0iiLDAPwrCRHcF50Y1bszJeprmbHI7MLUgsYZ8qDrge2v18DRPUSlndKWVFgtj5LK2W0tqze9N8Hni1FVHE6rbtLRrp25/QzWn0lPrAhvMnJVQerSc/GzX7MGEaMyy/pt9vr8U=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1746284394; c=relaxed/simple;
	bh=Odmwi16TFwZ/fVujy7IHRP4Jp2kgjT9fLNLMJT9RnT4=;
	h=To:Subject:From:Message-Id:Date; b=DtxQrZY84Fyhy/yVFrlYWHaK1Nc0B9AFeylfx0zrKwGSZTYPIcOUmYmv87+O/zTs/mqHWxx6e720+dXugo4+6rvSzCokuUyAeUrlfBvbI1rGsnJ4j1GiqyUhLbDxOP1gRHToD48/FBWU41DaaPAuYsawawdlgwO9enySk1PKyl0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=BtKFcU4I; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="BtKFcU4I"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A575AC4CEE3
	for <ddprobe@lists.linux.dev>; Sat,  3 May 2025 14:59:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1746284393;
	bh=Odmwi16TFwZ/fVujy7IHRP4Jp2kgjT9fLNLMJT9RnT4=;
	h=To:Subject:From:Date:From;
	b=BtKFcU4IyMYt+W5unOGPEFYtQT4SdqYkvLmhUM7BKW8SgwwTjrt9MuPZG13HUDSI/
	 7gedE6j7Ve1PjvAwq/kWxqlyVk0jKMKwqdKThj8YUQxdSXfSVY42+EZlhvHCn8ei3h
	 OXnIpuc6+XLTg9yfgXg3aVab9SMDDyQ13iBtz1uTZVEB6x9TbVKYyrPMdAsN5yGQQ5
	 2Z0KsAi36twMZ/K7wPuHbgOplizoqMW90r46yuc/l/lUxHHARQu/+OfkbIb/nXA3tj
	 3t2KHN9zJk3XvTivzOnIoUTb4cfXXXL6JuussJD0KOdyUeQLF1ow4WCVhaIDDsI8a9
	 1yGuM995u+nDw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 935DBC369C2
	for <ddprobe@lists.linux.dev>; Sat,  3 May 2025 14:59:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174628439357.24812.12838565026429977202.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 4379f3de371883c190189dd75ced797b718a9a921b62357747d6e0c031e2a34f
Date: Sat, 03 May 2025 14:59:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1746284393
