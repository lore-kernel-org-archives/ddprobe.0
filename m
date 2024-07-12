Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4E26D17839D
	for <ddprobe@lists.linux.dev>; Fri, 12 Jul 2024 17:09:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1720804163; cv=none; b=RJ6tlSxVBRIXCUZ9kfN2rmkXjRkmXopEQHmb1JrVYEHwFwy7Ow6FYXrsFUDhIn8e1Fvhgu8kHdu2SjnHEzQaytJfqTzgaWyXzJvMKEFRP3arTpcepe0qSF1Z2cWagyWcybkju0L1IIT41Y3bhtSRoU4beKIUSolfrRmZ8g/iQ30=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1720804163; c=relaxed/simple;
	bh=Q2ykIhA3fUtt9DWgAnLIlF+l7CvZ2Midu13YKOt3CHU=;
	h=To:Subject:From:Message-Id:Date; b=j/FW+DODT5U+f/Q1YBngw8EBTcpcoZJNu7hXxeEVYMxem94KUrPuvDAoVr7YM7SUF+xI3yJTz1ouu9G8a3diaKHIvkSgke6IdFcsw9AknGHRygJJcZJv19D92In7jdWTzbYrxKGzef+5Y/tvNARxtEUpKCD6VNAWibJxqFM4oPI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=KhbINZ3h; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="KhbINZ3h"
Received: by smtp.kernel.org (Postfix) with ESMTPS id E6F02C32782
	for <ddprobe@lists.linux.dev>; Fri, 12 Jul 2024 17:09:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1720804162;
	bh=Q2ykIhA3fUtt9DWgAnLIlF+l7CvZ2Midu13YKOt3CHU=;
	h=To:Subject:From:Date:From;
	b=KhbINZ3hOeKSppUX6hliPM42Op7vllDg3InHs3OHDxEW6ztqj/a3AV1LGpGrPFltN
	 DKhGNZ49QCd578WMv9/+OvF+4V6bTtUYmSyzxf/SO7r5v8mY5N89g5YobbJ2oLnkdh
	 paERd9TRvOZ5wai8NcPC917kEC/f0tLT7BSRVqIZvenytV28QCfSKJEZrif337dse9
	 5VMRuqFdAYkmkbBv9XfKkIoIy0KwYY3Nt8ZzUCqOKTrvOF5oq/DVyUCdo5gsI3l8ll
	 slcJG0bVZlEStoHj+UqWZVt9Ya4NEXHZKEARZRfi4Yv2NewxuwSKSxg1kBzyFzfo82
	 OjtS18B0kwlZg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id CCA29C2BD09
	for <ddprobe@lists.linux.dev>; Fri, 12 Jul 2024 17:09:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172080416283.24463.6861514889872096523.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: faf95d3ac5777378e319d85eabcf0da70e3f373b45d2e6499ca297e34c6106ec
Date: Fri, 12 Jul 2024 17:09:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1720804162
