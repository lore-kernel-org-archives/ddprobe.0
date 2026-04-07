Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 56B204C97
	for <ddprobe@lists.linux.dev>; Tue,  7 Apr 2026 04:15:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1775535334; cv=none; b=o/6MB4lb+FFktstOE/XQgsSAzC/fh1otn/GzNx4L5I2DxpfEs1FqduwR/I/3JIzZ1SAT8std0U02E7NyWtLN0966Zu/Md/24f7quyt2NGcwta5i2mC/KQOGaLhB6vIJyeLAVYL/mRtKkKuarS0tR6muoijPkqK184s3Xk0MFrXU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1775535334; c=relaxed/simple;
	bh=Ukz/V3Atem71GIodjhNYJfktMeFe5yxOIKrSHGwnGkA=;
	h=To:Subject:From:Message-Id:Date; b=emoLwmObmIy8Fg4AhyixMCQ3PcTszODsM6uWPfPABl5JjVdLDTilfoncgQei/6adocnibLT7AOTr0+G0D4/4HDQUIqrUIYX9WuC3tsBV79Se0Bx/IVV4JqMrewnDVWsPPITaA0PlhD76ZJHawVBhxxvu780qaCsZOTaRlfDe8+w=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=EYC/RGn2; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="EYC/RGn2"
Received: by smtp.kernel.org (Postfix) with ESMTPS id DFCFCC19424
	for <ddprobe@lists.linux.dev>; Tue,  7 Apr 2026 04:15:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1775535333;
	bh=Ukz/V3Atem71GIodjhNYJfktMeFe5yxOIKrSHGwnGkA=;
	h=To:Subject:From:Date:From;
	b=EYC/RGn2+GudlyKBjLXiULbPGO839zGz3/TrEc4jy67R4EVHs27rZX6obhA7JyKLD
	 fLXcddMajByTjFbuLIQkBhj/FDcgwc2h0B0A94/RCx7ia9iJVYwOfnagFavtucNec8
	 gzjJg/Tpag1xSck1kJWm+qeaVU74sjkXwVUrfZ4ACZfJhsCAJzLQAzs17TOTlL+TMs
	 inpLbp1jK7F5Vtv+8UxNlwEpChENhCqgnW/yJCcCJsGnhXJ2ZfvFaxY3lYgxsXeyXl
	 3lsxtcN4Tai9LrE+q9ZUuG1NM6gL4Mn+cbdOILtdGlUt24FobIdTfJeqdBn9evOUYG
	 2m33NAhD7yX/w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C446CFB5188
	for <ddprobe@lists.linux.dev>; Tue,  7 Apr 2026 04:15:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177553533375.29318.3748978588624315703.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 9ca97a30a6b5da416b5ed36b8fb99995d960e470a99c7ea5d4c8c922942fb425
Date: Tue, 07 Apr 2026 04:15:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1775535333
