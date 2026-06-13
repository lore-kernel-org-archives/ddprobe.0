Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2EE412773C3
	for <ddprobe@lists.linux.dev>; Sat, 13 Jun 2026 14:36:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1781361394; cv=none; b=LpzjUI/m2JXXsZKsasGlCodMVHqnEBQqYZfej4aQvNv7Ed/G5MbeNthwDIrEQj1SI6vvrRcQEjNf4l747qgGzg/t4bfRt5ZatzsGPwshk5DSPyPiMHEjwzv8RsJeQHe2dw80DLzYsZJs/9kfooyGomHHXzKzFrBY5VfbqcdpYeY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1781361394; c=relaxed/simple;
	bh=YF/KwPfjoIEqXOrq2pa9B47jVJ21Q2ki+SdnvLulPq0=;
	h=To:Subject:From:Message-Id:Date; b=l/v8Xp5cjJhLCmDvRgZP01UO7iepnoeefivveNoIMwvmYSCrqkAQielHlF8J9bBelIYKbJwRj7A2qcpW9pidn2dLoWNQFCDmRX4qmdXy11vitdoFTVbhV1NVqqguogrh+Ax15/WvD5uIYhFLY7b48I/U5mTqHkjJg/hAvszY7Zc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=sZgc1e/F; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="sZgc1e/F"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C42C9C19425
	for <ddprobe@lists.linux.dev>; Sat, 13 Jun 2026 14:36:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1781361393;
	bh=YF/KwPfjoIEqXOrq2pa9B47jVJ21Q2ki+SdnvLulPq0=;
	h=To:Subject:From:Date:From;
	b=sZgc1e/FGh5uSROJDmtFJlS00XLXYhS4DuaqWgdBoaFsgDF1cY8z6xphYft2rL6bm
	 5OxJ7ejBq1BxH0S4dECvSAKFvZw2L5c9KQsPv5S+1cXSsiei/X2KHnHbeNPZ8qWPfp
	 v1ToPIhkXCeKXQ+dmxrt0mK27qPYxpEZFVHLoKGsqyTlq2jf1zFIS8Je6Efa+I1y0a
	 lAMy6SsN7BLBaz7BAQ/PDZVjMKh+IvIZmRTWgsVffBwSVvuLUgchmtS4M27upCvWCV
	 e9S8E2iVcXbZ/21aYE40ACB7OZ92ruGUVjZaceo96K9g3hhhSrtTOCoRe0VGCT0Rh5
	 G5ML2VOWKdrTA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A87E3CD8CA8
	for <ddprobe@lists.linux.dev>; Sat, 13 Jun 2026 14:36:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178136139368.2571.2204445913516478133.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: ee4bbc7333c384c361018addf5e44dced091219d7207cb429942f93761136f93
Date: Sat, 13 Jun 2026 14:36:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1781361393
