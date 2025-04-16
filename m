Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id DCAC31EF380
	for <ddprobe@lists.linux.dev>; Wed, 16 Apr 2025 11:19:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1744802393; cv=none; b=kT5O8r4SkY+5X/QpIoyvyj7F93eqlOjAsOJllJXOxKu5IvQoPBtJYZvt8tS7pGyviCJTyyU2qg8x2LUEeqCMZJMR/Ghxr/dh+j+tcdCpTxi8H1YFtXGb+4f6FljaxT4CWDhYqHhwpdntoLzutLjpUULSTPpggy+J4u4Ir/16XL4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1744802393; c=relaxed/simple;
	bh=RZ4IpFfp4+RHmkBFOLqqWhe9iL5jAq1SS84YRe52tA0=;
	h=To:Subject:From:Message-Id:Date; b=aMDwvDIo5kPjYHK1NxecVW8beSEZx3Fn5NEZkcRXoog7hJ0L8fVyK8sQflFsH6vXDtL+56A+3VjmQqvMMisDmmZ8611aFMvU4OMGEIOmXx2Ab+VhR8qMA7EAQg4zrmTBwRMOQxbYe62efuvCSifK+Z9LzgwlwzT7bR0E0PkGpV0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=kBiu3GEF; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="kBiu3GEF"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B089EC4CEE2
	for <ddprobe@lists.linux.dev>; Wed, 16 Apr 2025 11:19:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1744802393;
	bh=RZ4IpFfp4+RHmkBFOLqqWhe9iL5jAq1SS84YRe52tA0=;
	h=To:Subject:From:Date:From;
	b=kBiu3GEFkAh47O5H8YSxvtYrhroPmo+Tm1O5i/E2UyQpUFERpWVfptPSV5LTBOFcJ
	 npK/BdmAzrdTBWPHPXOauAS1ZXc1mGjF0RhudsoqeFmB8gxZtpByuY/JWGq2yPA/w7
	 g1zh/nREY31OncKqQLpW/FvkBd9yFIhxZwgOW8S0CTNXmAXjlmglKA5Io6Iq7HcbF3
	 pId5jQQbFVg5DlWScqeSW8b0l5HnDuhNHZYLaTLrtTpd1vHDmiM12aP+Q5RJ7Nnb0/
	 Ske/hAbAbxpleVKaxobjesM2/0UkNPjv7eetdCZnY7oa0gYYLNXGn0a1G/uIv6kV1a
	 psmBid3A9i+gQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A218DC369BD
	for <ddprobe@lists.linux.dev>; Wed, 16 Apr 2025 11:19:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174480239365.4267.4759927698987892845.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 926e50438cc1bf422c4d1be1712ac4a716c612d741a0a3511a1e6ade2234f8f1
Date: Wed, 16 Apr 2025 11:19:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1744802393
