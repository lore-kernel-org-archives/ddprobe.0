Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 352683A1E9F
	for <ddprobe@lists.linux.dev>; Tue,  6 Jan 2026 06:43:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1767681834; cv=none; b=J6idcmMUEv3K4mh8zSO/bStF0V3A9gfgRyiac/BWbtcoTZh8VatsASQO1xVwGvHU88sJ/X0ekft6vYdDkxKpVbJtYNANA1hFwGGV3uapXsO+ry7ydOHda5fTCpXxCg2r5Ureeq16xe3PSn+7aUMvXcIFVXWee+P4rcnL2fnz7Pg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1767681834; c=relaxed/simple;
	bh=LpKIKRb/kuEPrpKHTk0gOkatKqymdz2VjHlL4fbqNUo=;
	h=To:Subject:From:Message-Id:Date; b=nfnnNl69ZwaZJ7oINKKhJzv4JCHzpwBwlGoZEoo5AGaFq4eZ6/JDP3k4AG68ljGB/9fOO7uUd85/08WG2jRyqPyAyXlfzqMfzKu0tj2ugcNZT/wivsqARBggBaDh/DGtbFvtPVQHdkgUGfwcZBWUdmJly8O78tGn4LbIhmItvXA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=qVA7DDE1; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="qVA7DDE1"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9EE36C116C6
	for <ddprobe@lists.linux.dev>; Tue,  6 Jan 2026 06:43:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1767681833;
	bh=LpKIKRb/kuEPrpKHTk0gOkatKqymdz2VjHlL4fbqNUo=;
	h=To:Subject:From:Date:From;
	b=qVA7DDE1EZDW0wJaTP+WnGLZSUxuOnWCTwC1UDT172SHi7vQrrHdV/PxRnKwNB9je
	 AkGV0ffHOr4HhlnYP6iKixWRs9xX6wVJ1jbzLXaUzxO6UzxpzYwphYlDwDjesIRlRR
	 0fkj+/9Eeolr2iuzMGceTz2ZAvDKHIqyA54/qmYJXlhMr7FmQdofT/1P/2NDzyqsj7
	 oO4cuCfc+10viFBWEIXR+NjFOQ8bQqJxXhH6GuzROIZapzOyXfGVHnpDjg06GvsIsq
	 GNml8Qk8iEVNhVXotX+QtceLnBVmuElYAlykYOnf0e1yWR9Jc0TqqHIxpikgyO3vqe
	 WgdcshcC5QcBw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8E958C79F86
	for <ddprobe@lists.linux.dev>; Tue,  6 Jan 2026 06:43:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176768183357.17115.14522497780126425969.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: dde21fac6282ea5ab292df7ab8f43a24531faf61784865cf27ceca4bae8c721e
Date: Tue, 06 Jan 2026 06:43:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1767681833
