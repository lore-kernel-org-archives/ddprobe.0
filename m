Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1A12C1804A
	for <ddprobe@lists.linux.dev>; Sat, 15 Nov 2025 06:49:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1763189394; cv=none; b=lBCdtesCtZXFiiProwWt7DanE+afPZ4aGqnC8Tebh87N9Qxd7pKf6ZFphoiiY5Zr7T8BwK+KmkthB+YevAlT9lDbqSqoyaCDQl9xGkY6eTpWoOH0yCmZRPBoxMrR62E9qZqROI1BfVmne85p+YSXyPDPyK4hop/5Fbc5rmh7EzU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1763189394; c=relaxed/simple;
	bh=Ud6BPcaoJ0P+hAsPaDqnJDwu6551JV60lIWPWydCeMQ=;
	h=To:Subject:From:Message-Id:Date; b=ixu7ND3frtsVC7WhCipLIAcFWyD+6s9VjjUJnarkvlQ5lSa5MKNhDeJkXj7X7JEi05gLKUbT3FhFoJ0ZKA2uosS3IkQf8HTmGbRgYjDaLVkh1WB02ITnGvvGT3ho73fZTFqMlRdejI7JhtCU0AcB8kesYi+VJLmOYKny+yXnktg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Gtoq1brR; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Gtoq1brR"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9BD29C113D0
	for <ddprobe@lists.linux.dev>; Sat, 15 Nov 2025 06:49:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1763189393;
	bh=Ud6BPcaoJ0P+hAsPaDqnJDwu6551JV60lIWPWydCeMQ=;
	h=To:Subject:From:Date:From;
	b=Gtoq1brRwvP6WGje92rpAaKiMrqAkWrMrL59xN+Up+O1h7zRv1wUqlUxOn0J0EKfz
	 qIyolH7/Q8Z/WtYk1bDdWR0om/XDYTo/VoygE2cEbLr/AhNl5L8PA1dfeP8m8MwacJ
	 jzrzj99v7mbBO5hq18+xc6X6mPorvtY2W1jduW7vIbW65Z54QdhkEnUfYYo4pxztcW
	 2GvgxLPddpITGvrLChvZc2BPwtTJEAT1vDuzVI6lWqGnN/XDZxxomvzpJ9qDVL8LHN
	 Ce5LGU/OdTK/ccZOr51QgN+Dxk09KdSmTSeSVzSG3jF+tqiUsd2IxazDLvk98eqM+q
	 WBH9YoGpJFqqA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 90150CEB2C4
	for <ddprobe@lists.linux.dev>; Sat, 15 Nov 2025 06:49:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176318939358.24533.10416315626211039495.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 977108ab44c378a7dc1d107a07d001c13a40ca36f315f199fa9c14c935b82099
Date: Sat, 15 Nov 2025 06:49:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1763189393
