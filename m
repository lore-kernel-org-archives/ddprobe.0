Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D6832FBF6
	for <ddprobe@lists.linux.dev>; Wed, 12 Mar 2025 20:48:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1741812533; cv=none; b=iWTqfDlTZtndxE7YBHnIB2mGhVoFFO4NZUWwcxx8iACrNB/OYUeScaU7RV6zu4624e/dL3gSqDyAOTaA6WQ93/qzzw0z+pQojh8wB3vvqflI0w7KZnVcd8SfqPSdd+9t/nSOwJE6NN+GJtI01aU8JwNtLP7Fr8b8aXkxomUF3qM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1741812533; c=relaxed/simple;
	bh=e7FrrPJVUp63PcuoFhL3x8vaJ1IeRSy/wGzXvgYktGY=;
	h=To:Subject:From:Message-Id:Date; b=T4YgynAxROxG3md9JpZSFP3BOeHh1GaBtyPtsKhMtUkn0X/UKr0AFLewASaOU0oZdhNgK43VXKOscofthF5PbzCTDX9otwXnm1xLzW6Q5a/vqwk4aVwSbhPILKJaYABS7Dzkjvd+LnELOkRogNoSQc/gTHSvRDU6+baaBTyoKi0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=eF4j9VBW; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="eF4j9VBW"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B4527C4CEDD
	for <ddprobe@lists.linux.dev>; Wed, 12 Mar 2025 20:48:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1741812533;
	bh=e7FrrPJVUp63PcuoFhL3x8vaJ1IeRSy/wGzXvgYktGY=;
	h=To:Subject:From:Date:From;
	b=eF4j9VBWDpA0FUtC9yTJNiXsHQciPoBUk1CZj5YrvzvnTMAtoMk+Qg204/2sIUExL
	 k66Aco3SZPfdeN5I5LylACNYoSQSYVp7TFo3gfYC6gFpqxDTt3W2ojintuOq4ErN3J
	 btdSy2OQwVocdzuGz+vHdMGdQx4LpNXRp5meuR0ttNemDZUxRrDGBx5Z02JcV0w3ze
	 mk83nRXjRmw2D0MMBfqbalLzMgP/AJXiXrrUoVnE3W/o/f5SRn+QY40/snbjkssbnJ
	 QHC0kxBtS1jcDY08gn6ocZFMZE+2tAj1jI+ZjAcW4MzHFz5Je9ozouEgmtKo8Amkrz
	 CafOSa9wHmJvQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9658AC28B2E
	for <ddprobe@lists.linux.dev>; Wed, 12 Mar 2025 20:48:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174181253360.20923.10865891790025799167.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 53c89999c9f8bb38ba1340fa857c60f0258289546b85e6695533a2d5177d9d9e
Date: Wed, 12 Mar 2025 20:48:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1741812533
