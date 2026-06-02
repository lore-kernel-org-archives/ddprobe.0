Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 56F2E383323
	for <ddprobe@lists.linux.dev>; Tue,  2 Jun 2026 09:14:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1780391674; cv=none; b=Eay1jZcu6Mvoo6cyAndVPp1841AR3NaZv0ApEqN5nc0Ud3FwltrbDwB4IK1NNB7/0RS4pv1z0E1mHcm2OcsFXnr5nKxH15UecP8AfKXCyDgIZuwTGwGuYnPs/IM5GMSZSOEOMETwXqqgw+lMo96rcuGS5GQkdJiXSlArQiJcq8U=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1780391674; c=relaxed/simple;
	bh=OsOXSItgszBxQx4j+JiYGQ4DjoYxaYdVcUW+boYNkrs=;
	h=To:Subject:From:Message-Id:Date; b=SBeY8w3ALBQeJ1AucqtRQIBQnlYJpxNAH8P463FiWrqVCfHujPuQ0sjs1NJtJe/HB9zcIwIjcKHEsufrEUve7sytcJ77+Bskk2xik61UNXH6rq0bS39m851dTB4qhyfZIpKM+v97UJiEfE1F95/ZZUzZB/7mvXUhcbxSQCY1dVs=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=MGVbtr2p; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="MGVbtr2p"
Received: by smtp.kernel.org (Postfix) with ESMTPS id DC33CC2BCC7
	for <ddprobe@lists.linux.dev>; Tue,  2 Jun 2026 09:14:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1780391673;
	bh=OsOXSItgszBxQx4j+JiYGQ4DjoYxaYdVcUW+boYNkrs=;
	h=To:Subject:From:Date:From;
	b=MGVbtr2p+CIoiVQnDcL3/XFau3QJy4hso2ETGpgL9um9CBO8dcUQPXLaiO1FkUOln
	 B0nHsQYmdFtNejpq1kx/G7Nbtfk0ONlVe3xyrKsqhtMYYzRnRkrJC00okFBw4CpWCF
	 Crni4o3nSc+//lfjfWD5aa8OHq3o22arKsG79JiMqFxyKQdrU1dImSklcTY12SNkLH
	 XCbGe2iydleAUFmeYNR8xGfxEOlszEjG1p3dJX9JSRaW7KjYFwWpoym9CbkxhbTaLc
	 ZaHfx7YgakLrEaUufIsrhs32JuCRejEYhI3HA5UZSgBU83UHnFHNxnuyxiZY1r0HNl
	 IclhwakAxrX4Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C199ACD6E4A
	for <ddprobe@lists.linux.dev>; Tue,  2 Jun 2026 09:14:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178039167375.27089.2575948432348071852.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 99b35e9e34d23945d13ed48af45f172ea15fecba945c4175a6c5777ae9b8951c
Date: Tue, 02 Jun 2026 09:14:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1780391673
