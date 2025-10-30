Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2390B3358D0
	for <ddprobe@lists.linux.dev>; Thu, 30 Oct 2025 08:29:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1761812994; cv=none; b=raE9xs9mxQxn++AIp+G/Cf27VXKFE39KheEqAaSVcWUHG76nDiRi8LTKvPTx5dDz9G5ssBUJ/JU5zB7yH5Osh8zFvmNAWFayR47nmvYKjmhmI1zk/as0HRFLsKEyqKJkvohILjyDLPzMkpEXxV51l8znl5YexNtf6dZiNpRuVgw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1761812994; c=relaxed/simple;
	bh=jKFk7trF6RqOG8CePa29DVEEC7IDgs9uQe0lYVla3dA=;
	h=To:Subject:From:Message-Id:Date; b=suE2WVas1XGxPpNJbxgDU5meRc1MquKCXjJSg/BSpstBbVTybV61ZxB0TJplN8TeEt9yIBM2++GsIjhaaHOfhZWBMjUX9vLOIC7yOyc8rmrD9fhO/5Wcof4W0gIb68lqI781v1WBt9kxz7QfFp95KvntmzGu9PNAYx3a8hsEwXo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=FCaJGoxx; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="FCaJGoxx"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A4A44C4CEF1
	for <ddprobe@lists.linux.dev>; Thu, 30 Oct 2025 08:29:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1761812993;
	bh=jKFk7trF6RqOG8CePa29DVEEC7IDgs9uQe0lYVla3dA=;
	h=To:Subject:From:Date:From;
	b=FCaJGoxx8aeDl7sJTP7Pj7kJTbMXDy+fhk9XvTLZMBTBxIRqulp4phYQpujewua2L
	 gKup6DIXek4yDJ7FvVhdN+CxeFxFNMC47iN4h0vG177WMW1Q/fhj9nHVJAXzLVvbGv
	 8l6B2K9dAChbN0hNgHXbuPloCXC1XFOy8Dl7z/9+xllAI/NHIseUyPevlNbLqMI0Pu
	 tgKE9mFzk9pIEBxjS+LPvoI6WCaBx4BMBl6xnLJuNRi1zZQPjzEbOl7FAHfskfJreI
	 kjAyJmbQeZn4wv35+KFXoqqk7z4fWJePwvfLoORVgCd91HiPCVP5jiqdUg+PimAqch
	 f7YUO45BQCaiw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 90E68CCF9F0
	for <ddprobe@lists.linux.dev>; Thu, 30 Oct 2025 08:29:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176181299358.20684.7512762610746254663.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: f8f80a15d00891cd43bf8963f0ad728b5087b3f9b4becc2ba571d70e6a8303a3
Date: Thu, 30 Oct 2025 08:29:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1761812993
