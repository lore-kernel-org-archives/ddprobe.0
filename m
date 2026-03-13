Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 09F1823182D
	for <ddprobe@lists.linux.dev>; Fri, 13 Mar 2026 10:24:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1773397494; cv=none; b=KUzh6UUm9k8ul//fcvaF62oGCZcWd9tkamwnFmrhxG5CJVrRLg5ZvpGCdwltbjGDSFX0EuEWaMKBFANjITVte4d1WbOe1wJy2GDvRvM8ZgXn4U8tkU9csXNkLXbfTsyAmHY0CepTaCbKbt2PBbp4TogKQQQq1CFrpGng5y6GNE0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1773397494; c=relaxed/simple;
	bh=RXf6dbVMSqk9Z4G9YOdYjY3i0SaLvecZcnYEgBCyWtY=;
	h=To:Subject:From:Message-Id:Date; b=u8qKCdJaYGJTatMLOR5Xev2sAlsdzpgqXWBkZTl2La+d4/E7YIcUf0QYW0L9orYqBYTeL7L34e9rEPsGku+U7yA4IBUV44huMlcQLC6dERESxFvc3GGmpHEjR986Ifa2KYfuJeuEemuCOWg7YEVPs6cePh7beouRmKi9TtNb2ZY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=qFXugXnZ; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="qFXugXnZ"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A202FC19424
	for <ddprobe@lists.linux.dev>; Fri, 13 Mar 2026 10:24:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1773397493;
	bh=RXf6dbVMSqk9Z4G9YOdYjY3i0SaLvecZcnYEgBCyWtY=;
	h=To:Subject:From:Date:From;
	b=qFXugXnZx52RLxvpLsofrN0TgUnEh7HjW9fpKdUNJOYZL0086TtOluDaBt8AScFS2
	 p3LXf+zn8tL90ANBhO5RlBJtlgtDzc/uVuIJxZlX/XTiwxszImy0BY9/ZKVbsLdvOC
	 XsDofMkm55KgBoh0eJ6e5r2spi4By7BxsXS2KnlzyJ4MyV4Rwhcd1c7eKcPp0vxqzr
	 Sup4TBamv5b1GIRiftaNpwmxSH8rSoyCgIUe3qdtb/ASNvvoSNkXxfL+BtcmtrurH+
	 B42nuhvuRGLXCoSDVGE6Nf5Bq1otoKywg8M7zXt8EBAXgVk36G3+ft55r20DyTRGpR
	 h8v2B6md2NPTQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8F2F8105F78F
	for <ddprobe@lists.linux.dev>; Fri, 13 Mar 2026 10:24:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177339749357.30123.15402188863853665625.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 6fa10f3065f76c2182c231934568220ebae3e18c23a4c5b2196c5e0dc14a0e01
Date: Fri, 13 Mar 2026 10:24:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1773397493
