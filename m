Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6E4D24BAA6
	for <ddprobe@lists.linux.dev>; Mon,  3 Jun 2024 20:25:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1717446323; cv=none; b=StIG2/iqUMQ1QtsQYEgJmsG3j2yDZLh49OWTXwiGYEbFGvpXBkWQhkouzP57syT+X4OgT9NxlrrJrJyIAI1qeiLFRRgCZ/XwoQwZMPF0gCiHoqyYLb/1ti84JbDuVOeS+TATpajkw94mcNj7sbaCZ/JGynjRyYzELm3hxnzTBoc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1717446323; c=relaxed/simple;
	bh=LP60zIaHkuHWIwwa9EajAWCeEJOWL2NtwnE1DcTP9TA=;
	h=To:Subject:From:Message-Id:Date; b=HvBaletvl9XkWiFpAAUYp6WXED+gJqSJ2zIHOGvMTeNvw5Vx04Mn2ICgSsNIaXx6Qc7ubu2dzpNLzQBkAht6dt/91IX3guH0HUBzZTZQNtSytNGmoFm0X6XS8PZY+vYj/eJZEPjkzC5kSIrm2XWVh1OxeJtZ9LCKXlX+SSnCMTQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ZpYjKkr/; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ZpYjKkr/"
Received: by smtp.kernel.org (Postfix) with ESMTPS id E46AEC2BD10
	for <ddprobe@lists.linux.dev>; Mon,  3 Jun 2024 20:25:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1717446322;
	bh=LP60zIaHkuHWIwwa9EajAWCeEJOWL2NtwnE1DcTP9TA=;
	h=To:Subject:From:Date:From;
	b=ZpYjKkr/oHBYY7+QQf1zbTt1yVSEuJKaLYAVdfqy3QbjCdeRZBF8DONJihpXFeQTj
	 w2gWQish0tcWYqGR/ipOpHxC94KTBK/5mwZeVuPQCOWbsnOsLV5ACWDKmAUdswJdTW
	 WNui2zPmPC5KP03rJAzYNzS2lFVZ9i4GXjZu0bHcNqeREtSWJmxjedTxGBrcxEXbPU
	 CMvGcyVkGtsRmJuR585/gDV1SEpwryRafb0gWy4anIUQ41oO5+2ckvm0+eJxUX9POw
	 SGKK26lOAraT39hz+uCAidqPXmY0Hd8zDxFtd6CjYsPC0KaB3u9z6z7QNtAEEaHiTN
	 9lQRebyKSMrjQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id CB71FC25B75
	for <ddprobe@lists.linux.dev>; Mon,  3 Jun 2024 20:25:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171744632276.31257.701277265652018080.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: e9fdc613a5b2e8867e8b7ad290ada528c8fbfeec0e81276c3efc2fd54ff5746c
Date: Mon, 03 Jun 2024 20:25:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1717446322
