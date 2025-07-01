Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 18DBA1862A
	for <ddprobe@lists.linux.dev>; Tue,  1 Jul 2025 03:39:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1751341195; cv=none; b=HNrJrdmf2SlHaXc5hg0UUQbQjm8TaXgXcIMj9rYx7+OBe1zM74dfDr1Dgdaky6+l1wU1XU0dPmOTG/tFyo2jcwVEVZBMSCngOZo06ukHUAmSmcbpH/ND+Ts5NpAHsbQusZaR9n6dC+9ZgN+UXG5mpL+2PQG7Z1evEbOldSaz+U8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1751341195; c=relaxed/simple;
	bh=ZaxjAc3krY/u9bMBW4Z3QkAIAZOSP8K6n6RrOQh4qrw=;
	h=To:Subject:From:Message-Id:Date; b=Gcs5Hs+iH+7wVwcslkzZDNrrHINjWoooji3xwu0cXovqZqIs6XwxIO51ZAUYLwGsIydlz8doQCQUSUTejUwIQKBPKlttwgDt60KvzX6YK0Lp9K9nhd3lHWzfQ60NHBlfyh2IPIu+7iaunf1jOvkPNgiBkbWO078w4X26uaZxrK8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=XZGro2mt; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="XZGro2mt"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9DC98C4CEED
	for <ddprobe@lists.linux.dev>; Tue,  1 Jul 2025 03:39:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1751341193;
	bh=ZaxjAc3krY/u9bMBW4Z3QkAIAZOSP8K6n6RrOQh4qrw=;
	h=To:Subject:From:Date:From;
	b=XZGro2mtjw5NGCi153phRhBGjZklhIYmOypu7eLaR6SCBkrRd9udkJUwhUubBdOqi
	 iJ2s+WDi2DBFfTWf8jUMXfHy9fpcOy5eQcifXwitN+X4yrtCFv4vtcPdioa4yyHJ5R
	 OqV5QisMnmNr0kPibn4fPmBUgE/qI9DRLjhIbTOA8j9fcoPjazsXyqGIwjoG2OtpGO
	 LDKmXKaCkxUuBQ/Nu2nDUB2K75Cw3S6o6B8aYnOGcR3Gn769SxFkLaPw5S4bxX9m2X
	 jFvQMTmQR0mfKNJIq/4eJYGEz/Yw+ggyRAJpcdnXWTgu8Hznihb+0C2eiyZxmM1IBB
	 xW5hsQeOtf+6w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8EC4EC8302F
	for <ddprobe@lists.linux.dev>; Tue,  1 Jul 2025 03:39:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175134119357.28888.1568828094032421989.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: b3d5bb4663df028c5b6f2ae414ba2b16306fdc56436069e5eb3be1a6f4207e17
Date: Tue, 01 Jul 2025 03:39:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1751341193
