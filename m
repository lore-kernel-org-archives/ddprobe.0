Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 46216432BD6
	for <ddprobe@lists.linux.dev>; Thu, 23 Jul 2026 10:09:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1784801374; cv=none; b=iXFpUfVG9Nkc0gzNGTjlNz3SWfwRoSYzhRzXlouZpP5a6bsnid76Ay17HsAoFPasiFTKmKxZHFaDr0VMtYxUeXtkRd2R4RAF47WOwJ5QBkHKemyAZ3sy9EvE/fdVhcZFF9RnRe7gUvJfmooN6exvGeDEPhnknS3HDOChzaZBMEQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1784801374; c=relaxed/simple;
	bh=HHMYdOiBjjkpsl93OkqzC5DNkW0URK2gbu9TZlx+d7U=;
	h=To:Subject:From:Message-Id:Date; b=sH2NaOWbKZH2Sb4kPQSSiieFoaNx5Op+yhaMROzqEB3lv3EmvyXdJXmbjgscoUXJMruIlg2Xjn4RBHFe8f4lXH22KKzohLjZDDOHOLToUaG+VJp6j1NMBZ4ohV+4IGEDjQ1y01NBmmnN07Kzb4qugSZ/iqJByI8s1OYUCr5CRag=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=dAoAF0yT; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="dAoAF0yT"
Received: by smtp.kernel.org (Postfix) with ESMTPS id E6519C2BCC7
	for <ddprobe@lists.linux.dev>; Thu, 23 Jul 2026 10:09:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1784801373;
	bh=HHMYdOiBjjkpsl93OkqzC5DNkW0URK2gbu9TZlx+d7U=;
	h=To:Subject:From:Date:From;
	b=dAoAF0yTi9taGmVUHGSucoK8G+Q0OxFYj/6cjarzbeu5Eyk1gt459zLzY1z7SgkWy
	 H2aj+PCvBvjfeDegq1tiVquRfRb1Vi+0CEVNM6Obn7ma8VY62RjxKUYhqclDH2UwWx
	 JoKhbbUejtfG37LpUffdU0MnIwThA255TBY0IYve5hbwlvHf9OaIaA5cYbuzcxJZ49
	 9u5DOJIT5BBZsoYPjfH1SdJcIWZ6JId/umjo54XLjAF3ufgeUR54NRfNByDQiF8WPz
	 bfE4WL+rS1C8/c98TGD+m89EjZHXkBH85Wf2+iB7Tqs3RooQunm1XToiWbg/1HejbU
	 Xq2hEXfbFRJPQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B9074C531CB
	for <ddprobe@lists.linux.dev>; Thu, 23 Jul 2026 10:09:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178480137374.18718.11449116562556510832.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 7ca6a061e0c7dfbf5e309c14d80e4b9fa39bd5e7c1f7049d1c805414fda91859
Date: Thu, 23 Jul 2026 10:09:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1784801373
