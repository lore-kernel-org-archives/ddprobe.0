Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 44D213A543A
	for <ddprobe@lists.linux.dev>; Thu, 24 Sep 2026 14:40:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1790260834; cv=none; b=XE/ozUIzC3KJYui2QAG1rtzc/mD1QjEB6PPSU6USIMtMtdlYRVABrgLZCiiYTjO948Wop0PxsxrkreI4fTPuBkKUETXZv0hA/mSNGwlcmpG3rKStLfvmnbyF4QL4g+AEqT1Q5REPM7+Oip3NDYiIXP9FxrmB/E2/+W5s7Ufvk+U=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1790260834; c=relaxed/simple;
	bh=H/n87QoZZqanCx12NNStqtSxLZcBYAxmYqNHLg8H6lY=;
	h=To:Subject:From:Message-Id:Date; b=drXkwHPW1oFdsqaXzjaPPb82UtwiET50GpRXTsr5yszAPBKRC3S2HYYPE8Kn/6pPdfs72ZtH1E9ABQJkhGY0u6b8QMxsXRStMKCCFiKYaUDHoQXGXpaSxGMiySgfi17j4iQlWzzjlRPJdlybJXavKKgT+3hVo0cZcHq8fcCOkwQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=iyOeHz93; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="iyOeHz93"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D92EDC2BCB3
	for <ddprobe@lists.linux.dev>; Thu, 24 Sep 2026 14:40:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1790260833;
	bh=H/n87QoZZqanCx12NNStqtSxLZcBYAxmYqNHLg8H6lY=;
	h=To:Subject:From:Date:From;
	b=iyOeHz932LL5MgR7x49NDC3+ph+3qAJAgsYo10/Lw9DC4r5cdOAzABeVHft8bZaYp
	 FogNGT00OedDBjfKeY7W0o8P2RNDHPFn1eJavjMURYYCe/XgQ0gyW8Euix2Bq8/jEj
	 huqWHW4lKAoNOoZZUKIsHvuoVvNetNcWa3jcPp6GpAPWAIrZCeO/aBy2CriMycE/PQ
	 b2/zRhOiWqnih8DIUeqa470hl9aWnS8tbqxuiE7Zuxyh74OdYRTUEYHSoejgbzGEYL
	 cCpGgQj7re2k4fU9omlJc1bLplGwTgfu8qKlYFoBbv8nzaXiHm19xRveT8ABAdOMqH
	 5KxikFZWfe7Sg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B27F9C98315
	for <ddprobe@lists.linux.dev>; Thu, 24 Sep 2026 14:40:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <179026083372.11566.12196418895869425443.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 875f74460e38d97dff46ccdacb45a2fdf6d2ec2869b8fb6376b207ee9d77ac54
Date: Thu, 24 Sep 2026 14:40:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1790260833
