Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 202E621B191
	for <ddprobe@lists.linux.dev>; Thu, 29 May 2025 14:29:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1748528994; cv=none; b=RVQ9L3hwndQnpfxmJOzlxOZsU1/WYujzzq47yUzAo2FJo0oJRh1UQyzmDJYBzdTaPHg83IUWH31DBUUIpAVw808/0peF+y0w7ZcyZ9uKtHipV+i/4LONKInAirok4Q6FsacK0VR9Lg6aN+uh9rGj3HiSqMH8Kpk1ouKCeLUtAx4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1748528994; c=relaxed/simple;
	bh=tYb2aCy2ZKGm9uYCcZxTYddOTWC2gsYJdogjr5gZ9CI=;
	h=To:Subject:From:Message-Id:Date; b=Rd+tA6Z9PyIeagjCDd6lP+XLBwDWPvamdinWu58OnMamitIa7vzvhNVoxjO6Jifmg7pn6uSNJmzCLOYPuPaqDEMlzUald/cm5+T8VJeutTz/uBIcNLf0H2gCyfIWT3mDdXturyEMUGL/illr4Luyp1QR+Vuehuem7ltUJgDxv+0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Herd7k+m; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Herd7k+m"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A0ADEC4CEE7
	for <ddprobe@lists.linux.dev>; Thu, 29 May 2025 14:29:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1748528993;
	bh=tYb2aCy2ZKGm9uYCcZxTYddOTWC2gsYJdogjr5gZ9CI=;
	h=To:Subject:From:Date:From;
	b=Herd7k+mrkePZKcjWC1TpeuIOlbguLl82bq+9ClayIa9acE491AfFGaKB9qg7YcyI
	 gRRZmMDCXv2040zcn/4eRWrcu/QhD5vYIc7BZtdNtuEAnQILJLawb/VgXCuXvStlt9
	 vrq4k7onnQIIikVmuu+DkLUhkVF5tjqjlz57/4MFXSWtHv8QycOSbtGgrXS0I/4a3w
	 K5RGmIoPY4FqpLIWww62tiBlMrDf0VJ6u7M6nKCtDC/Y+s3lTwxqkpSiee6deUAeML
	 dg28RCQj3rGcihgakQstrY0fCS1WPtZ0aMqbkYoOJQ12lAenBpWjEIbuLjyHTLLEMc
	 Q0U44ubUv3JWg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8E0F7C5AD49
	for <ddprobe@lists.linux.dev>; Thu, 29 May 2025 14:29:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174852899357.15062.14430878486682037157.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: b1b1a670f51f682a3271f7862bc96de1e2862759c46426fe22f014b8bfc43b5a
Date: Thu, 29 May 2025 14:29:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1748528993
