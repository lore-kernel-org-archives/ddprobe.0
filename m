Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1C512219FF
	for <ddprobe@lists.linux.dev>; Mon, 23 Sep 2024 07:35:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1727076954; cv=none; b=PCj6dTFUBpAnMigIZt2JX+HCbhMNPoGXXp55qw3ZzXP66UqCFYl0SWA6eOqV/D8XK3OPO7yDXR4qiX24N1uiu2lXLZuAOISXCO6/KmeveSO4kIgUj0vb6cVbx7mnkgMHWLScjRU+tm30bK0qRxoUEmzMbhBUHmgMb2M070iwhEk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1727076954; c=relaxed/simple;
	bh=jdFqpZ9VAQ78l7hJG1JacFCMylgm4cPGeMOnbqmkXXQ=;
	h=To:Subject:From:Message-Id:Date; b=MZ4RFKvCifZOG8I3H3m4J9FSz9DsdMjvUYM5UMs6ehfEE7vsQCOPm34Mjfuv5085E2Kuse7BXxJHXmqE9som8nVRvoRVVmc0GD4LGJSMb/e9EKMvrnFvqvS0zG4fb5TdaJFElqRgcCDdocWmPzb5xgTlkkWNjXeidWLz5eYhzuo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=bjhYwrJ/; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="bjhYwrJ/"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A6793C4CEC5
	for <ddprobe@lists.linux.dev>; Mon, 23 Sep 2024 07:35:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1727076953;
	bh=jdFqpZ9VAQ78l7hJG1JacFCMylgm4cPGeMOnbqmkXXQ=;
	h=To:Subject:From:Date:From;
	b=bjhYwrJ/i/GCm4+EedoYUgILXH1WTbYws/ze8FTYVfqM30JQfGQ631N+gIzbI22KW
	 Fkhh0phHPtv2cccDUdcpRot7Pe6pyhAZWqKY+jejr98KfuXlLRu0gO+qwR6R4skVhP
	 d/pWT3lJ7EgqGhXP4Hpc1XagV59AY8ALKvtLi0bVU5nlN0wRYcGGG8cf43XV2bAG7d
	 nQyk65Aw1Y1zWCGaudfC5JGgykiQaLZ/HG57gJ43pml1oT+rmJ6/jcZIcOPo5qDUmc
	 H/ZxQ4a2+7/+y5Is7iGeoGQVbKlAdOLApI9y1U+a8+CCTNhdPGKD+4TUvfBbjub+FX
	 mrTk5WEBImUXA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 973F1CF9C5B
	for <ddprobe@lists.linux.dev>; Mon, 23 Sep 2024 07:35:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172707695360.28443.6327488566553136144.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 4ae1af7cca30329fb98fbe715e28b50fab651bd3599b3ca301e27b368c3fb91d
Date: Mon, 23 Sep 2024 07:35:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1727076953
