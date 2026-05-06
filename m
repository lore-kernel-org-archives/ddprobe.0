Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2E8E52D97B5
	for <ddprobe@lists.linux.dev>; Wed,  6 May 2026 18:07:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1778090854; cv=none; b=FpuAhKEOQkqS4X54na+bhfODwx9QzI8pms9NH/0TRsyt1UhWFhBoQFuNPrUwUXrFAJ4rpe6C7JWksuUFDDVEAZ9xDelisfUdwLz5atWeiXZF6wTv8U5aOEkhq4lHSk54DQeJmCitOg/1po5ArofeeSGfT63BR1a9k1BL1e9HnKA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1778090854; c=relaxed/simple;
	bh=D0KolmF4anHsmGwB8ipg7Tm6hTPiGZtE9bW+5UsxB3g=;
	h=To:Subject:From:Message-Id:Date; b=Qcg+6YIT9Oz0TJBLNWDa6y36WerVcJhLXLYTa7yfSFqcsfRmAW7g43XoLaTjjRrg8Sy0Soa/utqfLrE0C++N2PFXlgONDzO+QYbeD6CKSVvlp+rHXhIZ9MNcXgX5YYMlgN2AIEno6rAwtIn5c6L0X7EfcQxpQYW24to9wVCIQ9M=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Vedxf6nh; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Vedxf6nh"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C3333C2BCB0
	for <ddprobe@lists.linux.dev>; Wed,  6 May 2026 18:07:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1778090853;
	bh=D0KolmF4anHsmGwB8ipg7Tm6hTPiGZtE9bW+5UsxB3g=;
	h=To:Subject:From:Date:From;
	b=Vedxf6nhkpNsOg5sPlhBH7GD2hu/FuWqHhE2o+MEheVw9u6gulCjy/CRYc4YUukgG
	 GtIoWxIbVYrMVjxEpivUJz7HBKbfZkReuEnKRnoTu2NK4nddQq4TGr+HghEpwDcjgJ
	 ob85fQ9fB8YP+72fSps86Y200ogz5Sdl9XcC3FB4ulFElBG+XLhezdBTKJbV0sFvgz
	 wyA8eOxJsHxpKYd2FFsjENq2vTQgj37q2xQ4rtkWSqyOtLhMd5Xehk0prBe+zhOrqv
	 sdhZN9ww73NDi8Cl1gxHHNMByPKI6xzBDSp/KM9egVjR2dWePrUWFZiEAJTJH2mi8w
	 kzUgD4YxmwkZw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B0739CD3439
	for <ddprobe@lists.linux.dev>; Wed,  6 May 2026 18:07:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177809085371.6765.122116506607349573.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: ee6da1615acc7f38a9132fc314ab0b58e08d4a88d26be13b504edffe22dcc7f1
Date: Wed, 06 May 2026 18:07:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1778090853
