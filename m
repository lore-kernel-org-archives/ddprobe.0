Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 443291D63D8
	for <ddprobe@lists.linux.dev>; Tue, 29 Jul 2025 12:39:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1753792794; cv=none; b=flxprRHo0RaaWc5meBlGscOJ7RMGqLTTqsBkPpu7sXOrbI2hjwu+HRY/I14UvI0eQ4CQx1KS2O3a70/JMdwKKsUJmmYQv0JfR4ezYfDlw1oMFKM9tnm8kxfvI9KYYLFbuCO1E9vjVJxbNJXcEGzlNU2wTPBRjY4mFkMqzeMDLyI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1753792794; c=relaxed/simple;
	bh=DASr8gJA5ZbCd5wSQYv4GPS5vhrsfePP6p94tjhA2K4=;
	h=To:Subject:From:Message-Id:Date; b=iQgeEyPQ27SuI1OrIQEtPnPm9Hth1vBBxMkCMCZhpoD6H3IDDAX3LrXKeK4w8Kx3Qqax9krVMPOufQqDbh9nnM0GNCOX64YOzXUKHB07XAYky3y//uMSMEOgNX9JXXgdvu/LiQ+mYX95mMVHaLWoR3iqCOU/5tpxJB3XiRNPdCA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=SAPYZyC/; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="SAPYZyC/"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A3AFCC4CEF4
	for <ddprobe@lists.linux.dev>; Tue, 29 Jul 2025 12:39:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1753792793;
	bh=DASr8gJA5ZbCd5wSQYv4GPS5vhrsfePP6p94tjhA2K4=;
	h=To:Subject:From:Date:From;
	b=SAPYZyC/mi3XuoXFQrtIlzGm8zVgvFUc9QSxQHj+7lUffo8ELSmBs0O+ekEvwxp7d
	 AJ8O94CEy+maqTyWspQtMgBjY37dC/jkr8pKhWVNKdQiPDmahSM0IkVSyO0oCWVwz7
	 /Fi+C+EKfhQDI93NukKaBuJBVSx/rIpwA4i1kX2jCjk//8Spdm7XgUWEsEbA9jQJm6
	 iZGbamt5WKdAlkwUQbDJ1b9RhTqit9Qt4f8uMOiOCrYHB4b4MbAfUdmetPF1mBhhYc
	 llnrTYZo+QwdNsbIWNXMO0QxHhvzmZ+jNjbbEMty0PUFue0oa6OlvHmvFJlAywn+8c
	 g5TTkorFito+g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 910C1C83F26
	for <ddprobe@lists.linux.dev>; Tue, 29 Jul 2025 12:39:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175379279358.20104.11436782746431810876.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 86be8708f31e48b11e6c6bdea9eb76a063095f2992f612fc11446e5060ea95b0
Date: Tue, 29 Jul 2025 12:39:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1753792793
