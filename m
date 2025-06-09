Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2D1AD21CC79
	for <ddprobe@lists.linux.dev>; Mon,  9 Jun 2025 18:49:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1749494994; cv=none; b=lNGQVegesw1bPzhGwJhe/WDyHIH9q5xOxZcHuCPnf/DhXAyhvY5jONO2bV7AJ7Xbe7drOD+kBkPu5BpEQvLm8CRUCdyZGI47jHKENIeiMwHnSiaOcub/K4Db8reJ+DTZ47tL76dofuT8Wy1NXfxj40AbF9bf/WQoidjuSiza82w=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1749494994; c=relaxed/simple;
	bh=3BHKOhlEKu59llJV3WXxwEw0hH1ObtbfeLLW6wzMva8=;
	h=To:Subject:From:Message-Id:Date; b=HhmDgV/nzthn60NHqO4MZLMmaPC6NXDtxl9kXWNnum77nOvrWpo8yEHWzvEe+YZrKsK/tYjegHqSa0HYx3KeWYkzQMeSsG6cNRMovnwA8Z9YQG1lrBvQpaLvRT/P7s3w11SDj+xI9agbfwjjZR/OdA6fcSevJjSe23SVvBpiZ1U=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=mEEx0STV; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="mEEx0STV"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AA8C1C4CEEB
	for <ddprobe@lists.linux.dev>; Mon,  9 Jun 2025 18:49:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1749494993;
	bh=3BHKOhlEKu59llJV3WXxwEw0hH1ObtbfeLLW6wzMva8=;
	h=To:Subject:From:Date:From;
	b=mEEx0STVCACCrWnLyuT8XaBDqE4/hX7nJ4cbi6oq7JOg51AhZUeAbKiik8F1jYzKm
	 hEJIWiQoPOgmRpK9hb8tIptTqhPAr6/h9m/BLK4bA6Eriz+feZy3dA/xPm/phXvBRZ
	 KZPYZkdfer1bNqCaop442PXt7wVBU+b8EHn4NIu1/JfhlRqcAWkGCRg+wLhuLPDuNJ
	 85/lxnuG0NpKpwO5L7sPQ561a6lGHPujLTQWPRBw0ORSLLBs8hxLaogOiQjusEyTfz
	 OfUZdOQyLLHBXqmggOVp1i3f4yrCf+cS8wSpRURZDSl0r+7uuG9cGs72uxe5GbO1Ni
	 kK6g+ygN2EISw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 91E39C5B552
	for <ddprobe@lists.linux.dev>; Mon,  9 Jun 2025 18:49:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174949499357.19536.3040899284864236059.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 54153d39e2e778328a1aad9ee1dfb087e8711fbbe0f45755d659bc72f508e9c3
Date: Mon, 09 Jun 2025 18:49:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1749494993
