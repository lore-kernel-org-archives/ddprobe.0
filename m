Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2A9BE224891
	for <ddprobe@lists.linux.dev>; Mon,  8 Sep 2025 08:59:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1757321994; cv=none; b=IGNCpcyIPQLPJ63zv32PuLa3ujxqyV9UBcTgLgLWwCUG48E4boE+mEVxAbLHYmPd9vNGqNnumVfLi1bD4ge3MlljZiMp6t2fmIEi9tuCq5fu3IPyd24SGdjm1cPuFLKwyxt90w81rRkeYH29XO/VHFzLNXzUIzlQWsGZ69CqSx8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1757321994; c=relaxed/simple;
	bh=voXGPexxaZ3LaewZGVglckLm8XEfxoHzwqteiSz0XqY=;
	h=To:Subject:From:Message-Id:Date; b=GgqhgylXsfSsfymJPnrEtjiPwU4GkZJDhjih5iZezI3ZdkqJaxhXCQBDC/fsxCkWmkbR1JOe6kolthmI8Qd9T71krVG+un16VRg0QdXmlFzun6a119FnNP3tAkI5YUSggLqSFYuLQEPLdKDrROM+hOY5IrP04RARO5vq0ybOa0g=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=q3DJEjFW; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="q3DJEjFW"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A211BC4CEF1
	for <ddprobe@lists.linux.dev>; Mon,  8 Sep 2025 08:59:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1757321993;
	bh=voXGPexxaZ3LaewZGVglckLm8XEfxoHzwqteiSz0XqY=;
	h=To:Subject:From:Date:From;
	b=q3DJEjFWULoGjxW1Dclcbr1rhu40C+w+puxahB5RjpU8JfNVErc95zy7Q4zPSboym
	 9Cf6jgCZsVxIkI3xZTgyjS2MBYrGCaMJoBsVeMd2yC5pv02l2289yy3IlOI///afQL
	 FpbYeBelbS0GvCR5YiU9/vWBFAoHIf/JJWfSgetmukgitbGTzHIEaWHs0gRE9rWDFZ
	 ruVp0EVI+8DBEQGsIQaYUnT/9tkaE0DBI5FL6K9019Bj2xqJ3MBjOKiVOTJJiq57a1
	 1a1E1q24qoDWWFSavWnQ00dAM5gWClem5kMasYZbDl+L6j35VIWwrtsgjGo2izS7Sf
	 OlCvr+MQcq1GQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 92BB1CA1013
	for <ddprobe@lists.linux.dev>; Mon,  8 Sep 2025 08:59:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175732199358.22987.12074520110368868298.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 35dcf4f738e19f606b52607947bfb7ebf0061b69bd11cc4280bad9c3a55536d9
Date: Mon, 08 Sep 2025 08:59:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1757321993
