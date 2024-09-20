Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 42CE617B402
	for <ddprobe@lists.linux.dev>; Fri, 20 Sep 2024 18:35:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1726857354; cv=none; b=dtm2J2s8mBp5J7OVDq+2oBRCEIPvzHzl4nkTIZ2EfZP5zFHLJD2ZvazM2hFiIxePt6QqB/9irpPg0Boia793FRw8ga75CFiOfrFQrYlumf548jaahh1C1cI4QpFgDFvb96tDNshFv9/MRQEElM+1+AuUCtp1wwqRCwPTuxxhKGo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1726857354; c=relaxed/simple;
	bh=UggeQPhpwftUVkfv9ULed5TTQ9mQKLJLtX2B5CL7KsU=;
	h=To:Subject:From:Message-Id:Date; b=NCjlLSYZ+WoBtP8FccDoNx5U2gibmI5TIW0mO/WKrHNu4V6ZFu+WhcUv97b8FZ9xZwtEkav2Wa6Hg4OCcT00JEUcgZv/Sk/Ugn4yuXo2on2Wpwz2/hspNNlg+CKruK7WfS12B+n5GzwaZydK29wtZpKSE1JoyLkA7jR/DJ6jhCA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=E4QDYUkI; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="E4QDYUkI"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AC083C4CEC3
	for <ddprobe@lists.linux.dev>; Fri, 20 Sep 2024 18:35:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1726857353;
	bh=UggeQPhpwftUVkfv9ULed5TTQ9mQKLJLtX2B5CL7KsU=;
	h=To:Subject:From:Date:From;
	b=E4QDYUkI1K74UoQ+z4W4eo8YIJgKf6v6rFd0DlI+9a8X+pOv50U8WdEsnQlhfwZuh
	 M2C6SivjzsNVJGB5hj8zIA/L5ufDQh+EmMuFsmfHU7M8V/Surnsr9akZLWrwxu++7W
	 NVImYeY60YF4ARbDy+wyvocoPQgSLAJcnKdeON7BM9DByQSJQ+3XGps0BFPtHFTtrT
	 zgEVvBf8TLLlZ+Ff/4iRUTSW/UaMQB0rGvDHZyMhxhyGeEaT5aaYiDpcy6NERljvVy
	 kHtaOoPfL7xY0eDC0Q2qji9WGPwjVdXePT60kFPkfC60LGQmK99AUNcvmRNEkQ/s7w
	 p0qxenpympjXQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 954B9CF9C60
	for <ddprobe@lists.linux.dev>; Fri, 20 Sep 2024 18:35:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172685735358.12365.7329484363068078631.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 7dea8354f69e618d2dabb1248e3e68d1b61e0083665d44a3857d655fb7996875
Date: Fri, 20 Sep 2024 18:35:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1726857353
