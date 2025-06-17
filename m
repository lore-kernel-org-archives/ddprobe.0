Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D1E44647
	for <ddprobe@lists.linux.dev>; Tue, 17 Jun 2025 01:49:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1750124993; cv=none; b=ktkHhCjcBlE6xJO3RvSEYqjPpuan45X2jARdtObUXeSOZzgzg+WIcH4OJpkH31kt4mtHdvyfIVQnab3M6IrT8j8FIKQ+dF27TVadvimOfjjpV5e4DeuqKap+W4G2hRdq6fny48ndrHzqI+nkzrdBq7n+c8T1ohAt2c5EdNvwoLM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1750124993; c=relaxed/simple;
	bh=oSCAx4XryZ6sov1OpAUUPxddlTL06pgnAMlrfpjWcD4=;
	h=To:Subject:From:Message-Id:Date; b=GDo/Dynxklw0RU/9Fbm+AkPkCr7G38aU8Yf8vc7C5T3PVRKz8wfKidoGOv5eawLrKyXjtxh+TOHIYE0En0Lw+lYjnC3aEJ0XzS05Q143DLokGEY54rYJLEtBLDDnBa09h55tAZx/iuNeSFHZx9HXz/YOQxV7XOrSxE58h2056/w=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ME6hGPNx; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ME6hGPNx"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B0E51C4CEEA
	for <ddprobe@lists.linux.dev>; Tue, 17 Jun 2025 01:49:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1750124993;
	bh=oSCAx4XryZ6sov1OpAUUPxddlTL06pgnAMlrfpjWcD4=;
	h=To:Subject:From:Date:From;
	b=ME6hGPNxM0o4rXYYycqLErpTyqFHslooaivMeLAe9vEfPbnBvTKB8iz5Cp2S2YUOs
	 j9hV4Je7W4XnxYTtkx5BCkvEFQlHLR5Oxt4OfraHVq89eVGDIhQKRqRy4yKN+L4BeE
	 8gueOqww6swucaxlCi/xbl9FeY9uyE0TJxuPXaJ6UYxqC0mnLqo3rXz/Ode/oaT7tL
	 OHEzOZCUwIvBTzW0XAPbt2KYStYWxp3FB3weHY0qMgaGHnOQXnDHQyJYNmbgvgqg8/
	 EWYGccLG0cZ3L602BLz5WqdZhj4QC5dhnsmmbIBdoRgNWu/YEur6rmeM/GV0zmlWaM
	 auaqWmBaE2A5g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 994AEC71136
	for <ddprobe@lists.linux.dev>; Tue, 17 Jun 2025 01:49:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175012499361.25423.10894412475576795810.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: c15aa7a8a180ab1b25a161aec6070215734042c6f616ce76055cf81202c4e980
Date: Tue, 17 Jun 2025 01:49:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1750124993
