Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 15A0F1C862F
	for <ddprobe@lists.linux.dev>; Sun, 25 Jan 2026 08:43:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1769330634; cv=none; b=VDQBNJjlHMtWtCikxuGlNJ3oCyRvK8d1rqZZHTt9ZsbCp7Fd6D3KXq6Hby6ENZEB3xR+oU3TuFnX3wTQ3GxdqQ/9C/LxXYLvs//BH6QY0LBPaO+THH8UxapMpCml72RyztghrqhBRgpkaF+2i/aP9IUXWwhWD6hCqBOXeL2FcxE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1769330634; c=relaxed/simple;
	bh=LKvp0EdgfibuyQaateBXRDpSjgKKwbBHRWQMPJSgv0o=;
	h=To:Subject:From:Message-Id:Date; b=kxrEBnssb+AS0lKTTFuWjMtUmuEzh3bNqdcR7QYwJQi3Xck7AHGNVAHZRs7GjfqT7ISZBPqibeX7lbYJGocO2iNT9iLCRim+nX6e6vehfKch+lDyYXWQ+Mh7n0PA67oTfYDXPk/tC4C4cKVYxXRseUVQzCbf0ag8obaPD6/UVcU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=KqwaSpUc; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="KqwaSpUc"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A997AC4CEF1
	for <ddprobe@lists.linux.dev>; Sun, 25 Jan 2026 08:43:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1769330633;
	bh=LKvp0EdgfibuyQaateBXRDpSjgKKwbBHRWQMPJSgv0o=;
	h=To:Subject:From:Date:From;
	b=KqwaSpUcu9KsuPx/xHbqZdJhfcx4p239tWw8cDhoWhQBTm/sp/8s7rykezVeyI1DO
	 MH50JhpLq1a5AYxFgC979AjYvOiCgHgVM1uxirX7JKfv6HEvbnOjZmcayhmps4F0Qp
	 NPo2O7yUTO5PERyXUY/F5q3PnT4o4AU9eLX0qC7zptT49rrYYG78OG2lGLA8he51gZ
	 0OcJKcdVAxEAjwzDsqpLfmH/0k0ooJsH9jNbPTQ2tOzEkUv7gMiRg/akUwI6kdq2aT
	 5G+h2Dwe6NyuJ8HaGBd3N9z3E7kGe8kwl6ZyRw6BQsGjUBk0HySRP4xMYHgaBAjjgd
	 3OJlZsxXaswrw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 982ABE63C95
	for <ddprobe@lists.linux.dev>; Sun, 25 Jan 2026 08:43:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176933063359.8684.2623534841287171279.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: dee49b523440c717453cce11d6431fdd3ae22a5f02af96034c39a1c1dd5510e4
Date: Sun, 25 Jan 2026 08:43:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1769330633
