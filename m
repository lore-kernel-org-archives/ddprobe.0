Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 53E32EEAB
	for <ddprobe@lists.linux.dev>; Sun, 20 Apr 2025 22:19:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1745187595; cv=none; b=TxZ7H3HQHx/pL+6cjoQs9W3u1XtNpoQQzu175xmq7BlxP+t+jQDfD+3Qf7afrG2QpGDkJ3a7dsBaI8+IiGGqI+IklP6mY8iwvEug2FMJsmfSpS0Ymqra0piTvunwacMmgIYiJm1l8U5e1v68ajV446vMJSON+i+xzg2neIggZtY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1745187595; c=relaxed/simple;
	bh=3bwcLt8MgBNpxTzRmcCSxIk4DQZ8sh1YVDc6GDQUdbc=;
	h=To:Subject:From:Message-Id:Date; b=PcRXwZnoMuAXwbyGN0QZj5hKsXMcdPl5DdoFK0cOpAzS1I5Ozh48QUGF26dnNLpumTn3tbh2/qDdg1C4bCayB+ggqjBdRuIqK8FqziLyh3XcI/nEAoEVlYYl1P6/UTpm0R1tTqrxo/ajSxs8ytzu0H3rOrm2FQeBqKDOIjf54FQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=pyqFQb7g; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="pyqFQb7g"
Received: by smtp.kernel.org (Postfix) with ESMTPS id ABC87C4CEE2
	for <ddprobe@lists.linux.dev>; Sun, 20 Apr 2025 22:19:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1745187593;
	bh=3bwcLt8MgBNpxTzRmcCSxIk4DQZ8sh1YVDc6GDQUdbc=;
	h=To:Subject:From:Date:From;
	b=pyqFQb7ggFocoSv9Ls65+BzdK6LYx+z72Dgn9d5DaJhq1jp8yp/GD6mNXJQYW+QYB
	 E3B3JuPzoUbgGt7FTZMFWmi4NykzroqT/uNeE9vE87Y/E6Y3BbAFL0S1xxQ9OkVjkQ
	 lyq5ojqZYmMcuGQhBcv1iDMoMZDr1wAS5dNfAd6XgQFwP0W9T5D0zXiVFO+xFNh1UV
	 lAb0/HRcfBWCn6GHusj5DVeSlvjU9q9LkwyjiydCftCNQ3QU2/jmDtPziLZry+KlZr
	 eClIIwfS94NOttdPJ/7wjN0dX7r8WstJkOyjCWGFWgk4LnK1Im6RA/o3gAqnUX67eT
	 mQiQATGONuDEg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 95FDDC369C2
	for <ddprobe@lists.linux.dev>; Sun, 20 Apr 2025 22:19:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174518759359.23074.18307082802410619277.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 354dc62e38198ffe572776a34d5bb2f201ce55175e0f4e8bc175d43a7ba0094a
Date: Sun, 20 Apr 2025 22:19:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1745187593
