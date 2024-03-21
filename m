Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id EBBC117D2
	for <ddprobe@lists.linux.dev>; Thu, 21 Mar 2024 01:28:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1710984497; cv=none; b=juYNqNvvr+tGMtw4YOYlUJMxWeD3+kVxkJZZguztnPs68+LA9gSulLdbZjUCjGuR9nnFQadpFyrXRQB0qa+MJ0YHg4byMoIl55ZKXtBKvybxiNGBjSovbv70KEij0yBSiyGp2e4WMR9y4siRAgdWjyxBhJB2inOIPocrmzEQCy0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1710984497; c=relaxed/simple;
	bh=8Bcuq9gI4SjkRLE/nAElvE5BrdXQtcq3PQNsKWfDCCI=;
	h=To:Subject:From:Message-Id:Date; b=TpZjl9DxdrGHiB3+L6CzpzCZMc+nsQ9GE2b2Cj1bZ+tSg5alZpzGH39a0OxPAiadZ03k4gjmlW9YXZ9FEm0CWAHooYx0rSOlXZpRUcsjjdxZcw9epqIierl+BP6FNbcnYBswx6XgVFB3WNymtK6R9XZeDAMSHZqY9XWdxHDN+Io=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ehwYChQS; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ehwYChQS"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 72E07C433C7
	for <ddprobe@lists.linux.dev>; Thu, 21 Mar 2024 01:28:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1710984496;
	bh=8Bcuq9gI4SjkRLE/nAElvE5BrdXQtcq3PQNsKWfDCCI=;
	h=To:Subject:From:Date:From;
	b=ehwYChQSBeXp50FeFIAoI4Wi/cKZ9ClLOy607shYduOoBF+FFjZ094hjE81PNpSWo
	 N/PJ+MbW76in9wt/b+I6V5Ju20+OI1HSYS42S9fMIotqdKz9lEDxKbnqEt9O6Gja8b
	 L4IaYyfzZSTcfWI3GzI9K08AjBR3vVl1cCdpYrciIXwNDYeBxf8+J6clG21q395e3V
	 bAnVL6myO8Rd73t/SXassZXyG8xOSjrNRK/y5ppXoQ47wK4r5wcmoV+9k0mYi+j8JZ
	 WorL3KGcgQSin85qfVj9bq3H3kW6HiNX6MH6PIAigQFkdXS7eYEvJYhe7ZJDsE+ZTY
	 1boKukBtdUYRQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 5EC2AC54E58
	for <ddprobe@lists.linux.dev>; Thu, 21 Mar 2024 01:28:16 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171098449637.11381.6445119424894030169.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 1b71db568a8be88b04b42b17b9892e93769b176e9efa5ed854f62b39a0a622b5
Date: Thu, 21 Mar 2024 01:28:16 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1710984496
