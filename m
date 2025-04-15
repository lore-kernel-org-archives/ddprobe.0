Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 32E0819E7D1
	for <ddprobe@lists.linux.dev>; Tue, 15 Apr 2025 10:49:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1744714194; cv=none; b=PTigkoRN2nM3piqtUmVSAoLcgEhy3nHJ8b8SvSTsERwGLK1D/8CboMIG7TC9rh1O22L2oAWwyFLk6fBNKtaCkHSKfTKWFtkHlqh6YgemwtXQZz/0beRwOk70VPqL4uJfJZR+oG/QysRe+i9lkltcAPIq9uBRyC0oxwZsnPNZ4P0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1744714194; c=relaxed/simple;
	bh=PMUCsvHcXUYJ3EaNMFLj+y4TxJ1/kgPIn1AFfRw9obA=;
	h=To:Subject:From:Message-Id:Date; b=pYPnkTFc+qOCJMRO38iNxP2aGCXwWGz/7Nybze2ov8sBY0d44AWA67+mrDR98vGewHvvxpu7mqMucjwgV2HuJWwMEtfTbejJHfCDSyAte78safHO1DVeRu9FVPB/7KxFU/0JnQVayHn1dIqqbs5SKHMSuBI5sVz4sNwhPci6L88=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=WPDY324B; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="WPDY324B"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A8F8CC4CEE7
	for <ddprobe@lists.linux.dev>; Tue, 15 Apr 2025 10:49:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1744714193;
	bh=PMUCsvHcXUYJ3EaNMFLj+y4TxJ1/kgPIn1AFfRw9obA=;
	h=To:Subject:From:Date:From;
	b=WPDY324BIVwpgPnT3UcGMmc6ORySYHtFAdoIlR7xhN/zCZWXyMQrLJwyGzjtjY43M
	 dw9c3Q3qu0K2KtbRgrXE5quvM/UjhOgF/1FNwpWj1PukEMPqeNtP8cTzDFlCjIEXuL
	 5C/UowO+jQnEFYmTQl7t+yEoHhtNiEGTwwgvH32nzBQBQUiGblTzo0zQRbGtnJQzrv
	 J2QvXRsGno8vTrgf3v4+IDlB2jcBdTnJS9B2Xlm7WgjQfwHecLOgHLTLhncCMjI10+
	 8ingbc8Zh/BQrBYoxnifPAdVdQ1YDiq5o69ec/+FAKPTs2hb1Yu8KJkoZFti9LN+0V
	 QDWUGTh5/w67g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 95175C369AB
	for <ddprobe@lists.linux.dev>; Tue, 15 Apr 2025 10:49:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174471419360.10969.10214804071253216100.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: f4ca498b31a9a356cbe3187378bfb9b21d13aad69bded155d9d2f769805d2ed6
Date: Tue, 15 Apr 2025 10:49:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1744714193
