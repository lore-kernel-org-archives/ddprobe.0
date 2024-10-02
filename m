Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 30FB91AAD7
	for <ddprobe@lists.linux.dev>; Wed,  2 Oct 2024 22:45:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1727909154; cv=none; b=cQg10zaH8ucrFQXYfICnqjhSaGDmZy//8j8vKdXtqri8qbVSjZgv4f9WpdBR/iEz9RCUaCA9QnjR5kRYuyJIHizn1zGHS5FGu7Tz48JHEazqhsR4yn8YK4QwEhQlTFh8vXLsiUYbKatlowyh0Z6UloVbU1ji6f0XbaDvkS19Nuc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1727909154; c=relaxed/simple;
	bh=IbUJKHvO0gAr5sFNUoBRPwF7r2WITc3Ray5Kskj3YVc=;
	h=To:Subject:From:Message-Id:Date; b=XfeiGiKHmGERvyawmL+T4t1ojLfk9MB2dyenERSOQdKpq+3Bh14R20Bw31udCnFCczpqkgqW0rYYU6IvGhG0pMLe4rpFeCCCU1kSxaI2W7CNENFYsBYM2A9t+OODLrPfE95eGaUfdHCSbuoeloo+MghQjY4Ptc74H8jVG09mNWk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=rWpOtjIK; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="rWpOtjIK"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A6C3EC4CEC2
	for <ddprobe@lists.linux.dev>; Wed,  2 Oct 2024 22:45:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1727909153;
	bh=IbUJKHvO0gAr5sFNUoBRPwF7r2WITc3Ray5Kskj3YVc=;
	h=To:Subject:From:Date:From;
	b=rWpOtjIK7E2bwsafTu/lbUlCIiufEaq+88VB8Xlkr3xJR5WNnwBMDk0Z6/1Hz+dSa
	 SgiI6XYzdII3r3pWFdq3k5O6bI3bimny8CcxevL7iHnxPziG0SE/5iymrCFN02XvzD
	 ifYjntUGJeOdJREk9eAEzSB7mVJcVcJ4lkVxHHtCLen7j7EuPYc7N91qLy3egkXFnP
	 AUMAm0IfFKyXBlT1rIdsjqa1ve4mdzYJlkDho0hz1p+cpt1EnPQmOV2kdKStJhyL28
	 pUbYdjwI/yWH6i8kJuKUpq63cdtm0ASjCADtfRGd7dHVi0/yJ24zsOV2oKl9rFEKNt
	 c5T2oE0ULgEOg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 93DE0CF8544
	for <ddprobe@lists.linux.dev>; Wed,  2 Oct 2024 22:45:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172790915359.30321.5501538299108590200.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 162d0f2656f8faf0dbfb2275b76126639af4f2e85114b2d571404feae1839861
Date: Wed, 02 Oct 2024 22:45:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1727909153
