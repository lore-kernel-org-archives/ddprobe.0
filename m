Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 118FE30AACD
	for <ddprobe@lists.linux.dev>; Thu, 23 Oct 2025 10:19:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1761214794; cv=none; b=SXyV7NJjhqIOMRxmadzn7NhvCyYFLSpmS9oY9ni9fJyh6vKx4YmzgW9yw+FN6lQttEPFwg0pWDYfHE04WiLpEcsL/Dt7oJ93DNZVtopo+XCVT64SVRyt8zANopKO1v3Rd0fPef53v9hGFLC4fDBePJgkxOmNbQI1Hjo3vloa0LQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1761214794; c=relaxed/simple;
	bh=N945MeMeFO5Fhzb2oim5Hxpx+hzspf2DslUcs4S0uCI=;
	h=To:Subject:From:Message-Id:Date; b=MbLPowwl5qEDcd9jzgD9DjjamL69eKF1JnBrNK+KKxbCMbInOO8XWj8u04pC8VYlkTTqjSvkmVUNWFhCFjBmRND9mqsRQ9bEzdv+sge0iX2Z7TfE47ufNY5c/jYEKMkH3RvLax9mDBG+E+wVhH55PA/LmbM+eAzOBI1Hw+AdzlY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=iio6rrho; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="iio6rrho"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A2B81C4CEF7
	for <ddprobe@lists.linux.dev>; Thu, 23 Oct 2025 10:19:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1761214793;
	bh=N945MeMeFO5Fhzb2oim5Hxpx+hzspf2DslUcs4S0uCI=;
	h=To:Subject:From:Date:From;
	b=iio6rrhoPvFU/4GEdlXsV0PpmP4iaDrixzgrzWKdjD1WGpgzOt7IQmySbTvLd20Vl
	 J4nifsSE+K7miSSl1zXtzDslfmAkTf1vKvAPcSXs8LeyuOjhXzjo0CQxxMU9WKDI/F
	 d78HKKtDTMuyFi17NC5p3ax993SFAz1nWyGw1TPMmJmTU6U9yk8vC/5V9it0J6fkrA
	 oZzx8+wal/29OGQFUGnsqe1R8HJXsJCOv8Kq4VjDDFuT12tp2DMXvTTb5AkfwuIJ6g
	 Njutjgcq2YuWcgGV5fmzBNW+kJFdR03sEPtAS4Yd2byC0FSDMOx5q4xJbN2wsQgamC
	 RrMJp/NzdOEPw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8FA19CCD193
	for <ddprobe@lists.linux.dev>; Thu, 23 Oct 2025 10:19:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176121479358.17756.3684901385517604987.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 36889f64c97864e88245487cabf3d114d20e5d45c6e90d16ddbea2e8724d918d
Date: Thu, 23 Oct 2025 10:19:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1761214793
