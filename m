Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 9275825B672
	for <ddprobe@lists.linux.dev>; Mon, 10 Feb 2025 18:05:54 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1739210754; cv=none; b=eZmJbEl8fbHAoJyn4ge34OmodKVkIuSK0oLZ3GzO1XeZRVrZHzDphSaegSIV6993hAzFA50uj5eB5R2CbqAorHJXrbEANgUrGzM0q7Mh7QqGQDOdA0g+ln6nyEXY1zQBzO3Je2VzgkB8L1MAVK1xgRCWuieXeQXG+Kd8QbrbC84=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1739210754; c=relaxed/simple;
	bh=0ozs7KP2684/LXVGUM2LvtR1uXKWfNtQtnlrRgZRAOs=;
	h=To:Subject:From:Message-Id:Date; b=WV7OZY15j76wZHVwnI/d957l9dXT7BuA3+oUm0JPB+iCSBFUdeKnK5gL6Le2YffhK7uBIGb13LFWvCIG6e6nFdrYAN14LTbgYBtSVA7iwOqF+HNynUBA8Q7Y/DYHhxdbho/LKgU9Gcdv71aGyyQFPsofk+RIXUMvQhs3iYuvbzw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=jE7aWyfM; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="jE7aWyfM"
Received: by smtp.kernel.org (Postfix) with ESMTPS id E0F1DC4CED1
	for <ddprobe@lists.linux.dev>; Mon, 10 Feb 2025 18:05:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1739210753;
	bh=0ozs7KP2684/LXVGUM2LvtR1uXKWfNtQtnlrRgZRAOs=;
	h=To:Subject:From:Date:From;
	b=jE7aWyfM2z5b9IHXjDL3LGPeM0VzLGeDMPsrj92l/0Vt9sG0B0nFHUPmIwtpCRXx/
	 Cn69LW/IWuXKJqoDCL0PIJV7y3w62mdteE+hNi5SgNQ/RMG9xBa/l+yqGPSOnl7l+D
	 uLTuO76QCaRoYqeI/cWaX9tHuznmvLXkOQEYIrNIhKsGN17Ee7UfNKn5CFdjnQ+Rr/
	 60t3h+SLdhXqmiMdxNCwziXa8XJVcoeHkxgkPo/xOwkcXpg/M8lnDuHOE9Hx8FfYuX
	 tNJOUkTBDS9zRYYW2SAqOBFCBEP0Y/PYA4CgINs+cqaO0WWIuDeuMZ2sZpZw0QhJ3Z
	 fApOM8sb5Ydkg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id ACF8FC02198
	for <ddprobe@lists.linux.dev>; Mon, 10 Feb 2025 18:05:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173921075369.28620.1325041513159100001.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 90f8b547c5b7c9c490e2c93d1f92b8372cd04e4273199226a51008a8451f3a63
Date: Mon, 10 Feb 2025 18:05:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1739210753
