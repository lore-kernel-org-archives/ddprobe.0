Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3CFD836B
	for <ddprobe@lists.linux.dev>; Fri, 10 Oct 2025 04:19:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1760069994; cv=none; b=iE2JWzwjS98BtRIt4u72Qjz8btCaCh4MBFTDFUy7uXjxFFory16/TZXHfd2Gvm3WjKqk5T7lughqFGUB8SgVQD0ONs0FPgI/1gxNmJ55SKBENxwFVa4cwOOG0AlUPz8rRnduW1eiRepCeyJ26Umm+8YbI4RuQwkGfM7Z+UMyhG0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1760069994; c=relaxed/simple;
	bh=eYFz8UMyZ1FCBn+QuZw0hNTP+fETmdUtvSEt81sDIDA=;
	h=To:Subject:From:Message-Id:Date; b=a+0kGiXo7RwYF2xaKmkVEdmNfkjOeKZcSaNnVcSw+wAmKvuPFCiaLTEMmNvwmyB2sPNH3dN5y3Zu1Vj+rOEyvTj0n9XeBtFo0DmGD9pW/YUPJNxad+chi1iNh2NnL4xIl0dietY+RuADbFqMfWijQbWFYp8xjaM3hJEtuBWHg3k=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=nkSoH8Gs; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="nkSoH8Gs"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C5372C4CEF1
	for <ddprobe@lists.linux.dev>; Fri, 10 Oct 2025 04:19:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1760069993;
	bh=eYFz8UMyZ1FCBn+QuZw0hNTP+fETmdUtvSEt81sDIDA=;
	h=To:Subject:From:Date:From;
	b=nkSoH8Gs2tsx+IuR3hztCMxLtYr6oPr8NK8S3oyQ2o9T974kzj9Zkp2pylZ60ZFxJ
	 S+I+dBAdWO+ySIJGGgJf+dSuyXfjU02jh25KqUEXFqIETM3p0DVlWbnyu80S8WoAkg
	 k0CiNT8SlHsO2qq4apQNLGzXn8kGPV5FbX5aApoKDry40Rj4ZrPX9cCIRb9xQXmMqM
	 TYFUZ3EnMNt/dbXXgzdX3NfO3/drWLkwGRppWjmQiAONLkRa3LnmNZr/hxvl7aXQpt
	 1oJq0fCTq1cR+Ws5+JjaKZIE3w8wxw9tOgYuedRiMrqOXG8XodBwsCo78ZCV5BNi3Y
	 Sj4k/jx7kP4eA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B13B3CAC5BB
	for <ddprobe@lists.linux.dev>; Fri, 10 Oct 2025 04:19:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176006999368.18661.17442942756776861335.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 53695e021d03d9b91f537e5bcaa4d682fbb2f4c2c862583e3b6b8927de5a97c8
Date: Fri, 10 Oct 2025 04:19:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1760069993
