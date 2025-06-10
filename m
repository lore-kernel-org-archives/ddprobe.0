Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 22090186A
	for <ddprobe@lists.linux.dev>; Tue, 10 Jun 2025 14:49:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1749566994; cv=none; b=ieOnlzJrRzPCCt050hoGeAlfBHWEYfV2JyOfAQRZS01HHHM2YAi5EsQyeL3SmBXY5muYSro6eeH/qmhWaeHZkOMtbkVd9iGpo5PZhGQaJ9u3ZbCIfutGQdJQHuFAgh1Pr1FyYzwFzuOZG1KIapYZM4xI81QdbHFms5usBb3/vBQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1749566994; c=relaxed/simple;
	bh=uzJE33w3DU5R/t/WUdQs1FcKqln4XmSz7qZ+VLoYAzM=;
	h=To:Subject:From:Message-Id:Date; b=XITgvAgfSfWfLjvSzVe42fkbHb3hpy2M8HVMNDorX3uowdpGvnuTJEmklDDktLlPpUrCddGLvhrj2AEVqkVBCb9ZZmJRAci0ebdTwx3uDVzI1tB4khp2YiFcgsn/msI6V76sDEGJB5ruqrdiyKBhpqspBbQtNpKkiz2JIAJ29dI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=sq3ztiJC; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="sq3ztiJC"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A2180C4CEED
	for <ddprobe@lists.linux.dev>; Tue, 10 Jun 2025 14:49:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1749566993;
	bh=uzJE33w3DU5R/t/WUdQs1FcKqln4XmSz7qZ+VLoYAzM=;
	h=To:Subject:From:Date:From;
	b=sq3ztiJCBf3FDNb+mUHWR41piXG26ADCP4iKpDywX/JOdowW+tqOZ8VdUd+AEfAx7
	 19eLnDlfZCOVLwZtnuiTRRt5mhxSTz4/s16tde6hgEDNoSHcvY9+9jEWcwG888juID
	 386dMITsvLd1/xMJKDalqPvFcVs6O1/6eOsGup6t/ikYWfU5/kk8GBX+7f3EaLgS4C
	 33WbwRJtM44Vsk1hTKt++bIsrHufVT3qO2udwH3z3Q+yktlc6nFZpMNiBNztkJwHqO
	 yO76HroI8j0iGa9S8548dHeND66nRb0QH7aVxySPE8m1V6LaDl62+HQzfnM9M9iGHz
	 6d1jgf6rmegiw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8FA09C5B552
	for <ddprobe@lists.linux.dev>; Tue, 10 Jun 2025 14:49:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174956699357.25995.12632214821529148095.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: f0c71e0ec7e18062df673764ac8c21a0b174c4134add236ceb2baefbcca685b8
Date: Tue, 10 Jun 2025 14:49:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1749566993
