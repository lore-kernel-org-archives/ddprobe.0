Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 596DB4A24
	for <ddprobe@lists.linux.dev>; Fri, 31 Jan 2025 13:05:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1738328755; cv=none; b=t1eMjmavRyvPDowSWDXVUmAa1ujoxidI0PqspTHslccpZ8/v4ri5ZzBJwrbKJxgwKHFpHxTd7XGFa671NJL9IODLW/Yq1SqqE1ayrabKL9aICPDgJpTommaAz+JTTj3lFTKexxe4irBs8xZjGL0CM5dtj64aLngAyF41VBZp6rw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1738328755; c=relaxed/simple;
	bh=N9/UpD79JEK6LQreKFcu5WRYy8whtGReAU0IJ+iULlI=;
	h=To:Subject:From:Message-Id:Date; b=gtszdh21K15yiTfuy/CY6btG6Qpu29dNsWQoqEiuDy/uvfinfQr9YJYNvR239E1l+CvEUh/ASgjeBjv+2FRjChnuG5qJjRTtsZ6vjKx0KHWtOGeqkFNYegBNkLGMh8bmysPupuYTUk9LcFeEAPxxYoUKzuM4xJ4R2j0AzTq4Vz4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=lZ+VVwhQ; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="lZ+VVwhQ"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B72D5C4CED1
	for <ddprobe@lists.linux.dev>; Fri, 31 Jan 2025 13:05:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1738328753;
	bh=N9/UpD79JEK6LQreKFcu5WRYy8whtGReAU0IJ+iULlI=;
	h=To:Subject:From:Date:From;
	b=lZ+VVwhQACh6YPHmQK+SqPO+OKFXKwmPJPcWdSQPEh9481ClNj1eNtCfVnh24tccX
	 HJRAhw1Vxp+FuhhNMnZ9V5M7WqZiKqvUla18ZXLEm7EZuGwJFChgzIOzvTkWhUyFVU
	 7OFcSXOn9WoC5d8HWzurLuLBeVUtLuQlz5csjTx3pP6+Ke8OlXh6z6WJraJFh5zdIa
	 lu85af7uBm01lQc2ncZdbUQMplOqnptdq4GVQUUjhQ2iKHu7neR+mbo2v0TJqlCV8Z
	 qcUXRg2HZZTSzBULe3tuWIS5PH07pAuSaE11ccjH9LjHqmj+ScaYfYnprhk7JpxzUW
	 3xt8QZGIcCsbQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 99D6BC0218F
	for <ddprobe@lists.linux.dev>; Fri, 31 Jan 2025 13:05:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173832875361.23416.10830294634537684635.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 2052c8e3ecabc589ee96c3c4fb82de61fd7fc4e8d601790399f439ad0e87efa8
Date: Fri, 31 Jan 2025 13:05:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1738328753
