Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3028318FC6F
	for <ddprobe@lists.linux.dev>; Fri,  9 Aug 2024 10:45:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1723200354; cv=none; b=NuqivWM6BkWc8uV2M5AhixSmHU0aHQ90GyV7KRlhXcPR0Cmk12ADKdeJ3JPh2A72cfetI5GpGbOtCf50pCnm4ikTu398LF+32GWVi1PSxV39kJlPfiZKvmqxbOJzbrST0ZK76j1W+so0W0RSnY1dweKT6pDwQS3MILEjsgtkRA0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1723200354; c=relaxed/simple;
	bh=IioEr2yVZuv4+rxK/1ABB8PinXSHIzJkzoI9/kwrE3U=;
	h=To:Subject:From:Message-Id:Date; b=cpar0dRFOLpqScWXg4lfi85bYW/OvW8dN9B9KgF07f0b2byYJPvH9iIJR7y6N1ODcaeZ7oLUastFMBv9MuzobJxK0MP2/OPTPoFJITYxYJkbnYCuPtLYIgt7lSya0qoQ4n5FKhZ0+ej9+2sfpzGQvF/r4AI+DpNZtbs8V4VdCHw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=aztrdJT8; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="aztrdJT8"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A2C18C4AF10
	for <ddprobe@lists.linux.dev>; Fri,  9 Aug 2024 10:45:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1723200353;
	bh=IioEr2yVZuv4+rxK/1ABB8PinXSHIzJkzoI9/kwrE3U=;
	h=To:Subject:From:Date:From;
	b=aztrdJT8695Sgup5o/gFw6Ev7mAZhSHkl8UpKsIqIkImvgllXrIGYV3BhklRSKI3x
	 6qH6Zw5nWQtUIwtrZa+oWy8Pd/l0SrOdIBqVbwUtCQb2yybt3tavwM1xLZRmh3Yu10
	 U8xYaUJX0Ho1ErpERXVWp+VDL1eIkHuHtbTFBdEOlBCtnVoohuxIKPM7jBUO3QAI80
	 Bop8JYEXgF7RmJaJycs2kBbQF/lTgu/FWLSxbUeYlqzuqVnE28d8BVhZ8keT2yqSIt
	 lXz3xSJ9G2qY7b/TBvIm/5I3JMj86tApy6ZTInyrxmk82jkUosel9WQ1JYJA666+kh
	 LEKtV9jGaZLZg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 903C5C3DA4A
	for <ddprobe@lists.linux.dev>; Fri,  9 Aug 2024 10:45:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172320035358.17436.511043581257157289.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: b4b0288019f87f5139d3fc9f90455e3898d6f31951a3a531d597d372b9a6da65
Date: Fri, 09 Aug 2024 10:45:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1723200353
