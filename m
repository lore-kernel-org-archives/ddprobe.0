Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0411A2F9C59
	for <ddprobe@lists.linux.dev>; Thu,  4 Sep 2025 10:49:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1756982996; cv=none; b=N9z1KK1x7VlLkvmA2yUSMuSyJuvbF1kzFOi4tSuG8iHF4PpjmJqXxl1RL9OUFTI4zTGd3s7csuiS9tLyW2LfiAChoudy5b4RMbn0dH3IdXCoHZYtE7twAdZd2UWGZboFH4zxYzHucPJLB5XK1EMqPCCPQa4ubPkYyaCjAoC5mlY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1756982996; c=relaxed/simple;
	bh=Xn0QkJVfN34IMzq4y3LpYmkl5KOoyhSPRjJfZPMD8sA=;
	h=To:Subject:From:Message-Id:Date; b=hA5MuKCHsDq1fdPUGwOxklorF8Aka+6VswU3/4tBYTyiTA/C+3rg54OVDdHJ75jhBwWEtgsIoiMolo2b6+Cvpm/KRGPyz6fdYcfjhs4y0U/ce9+XrSNZWXJ8JwHEdRpMDfbQutS2N9rNYGszAJb4h2DEh5y5dpUWOReXSOsZUF4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=J1Jq9pDs; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="J1Jq9pDs"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A1DF5C4CEF4
	for <ddprobe@lists.linux.dev>; Thu,  4 Sep 2025 10:49:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1756982993;
	bh=Xn0QkJVfN34IMzq4y3LpYmkl5KOoyhSPRjJfZPMD8sA=;
	h=To:Subject:From:Date:From;
	b=J1Jq9pDsrtZUHVDg+pN5EwwfYH+EssYIbA8x8Z4kY/aVd/C0nUTa6+GegjTs7g+oX
	 p6hhu4htr9rgs+8EJXz1GP80VXTyuZXeyy2oPbaqZts7NTXZLrVNIOkiGX0zrpAmZx
	 DrU2k+x8irP8l1DeK6/xb7lKcEEjko79dHRhVWpCf079YmWge4KzOr+BG9QdMjJshK
	 jTyG4R243VQPPUbxJE50xDXRemopPjNWLeMZSwtS5It7KslNwnAQAeahinTqCe6fre
	 cr4GWMFqUwIVWKNI0NE2otsEb+o1UlJiTTRBApjGL4cWseXMypiYr9KpkTb7WcihTA
	 rlhaeEdYgWH2w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8F7BECA1012
	for <ddprobe@lists.linux.dev>; Thu,  4 Sep 2025 10:49:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175698299358.29769.11861140213410913316.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 1e1da1a2d84ea0cfd72f1498f6cff6f8df35497fff902e2155fa71893fc4d142
Date: Thu, 04 Sep 2025 10:49:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1756982993
