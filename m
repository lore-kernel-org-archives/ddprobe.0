Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 19BE521FF23
	for <ddprobe@lists.linux.dev>; Mon,  8 Dec 2025 11:32:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1765193574; cv=none; b=MIrHxzGDe8Q6G007Soq5fscAredhrP1J/oWQbymE9SYqdUDgsu7bVnB5/v9YyUx0JX8182jRQ2e/B8KRr34IebAGq1R8T6tUxIYt84r8Xx9ZPD6FwEDBEmp0cpSlwtipvlHZcgpoTMjp1ri8u4hWt8jJf4PLFhwDnclNloyEg2A=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1765193574; c=relaxed/simple;
	bh=9cc6zP7/oQvDB9IgB50EDG9B6qJsmggNsjStIEqPyBU=;
	h=To:Subject:From:Message-Id:Date; b=pZpIdk3ForN4DRfUSCYERRdXy/Orlk4HgyPIk0jkB2127TWBCFRQaJJ4HMKpjvmnrKFW6eC+Y6ZLnLx4hYKDrkDdjzPVodvClW7luMaCkJkE5RkOvFIKGbupWNnW4dUFLZdqzkCD8CjE6FspVtx14PpVRYBR5FsAJKpU++gGkgs=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=dlqLQ2bk; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="dlqLQ2bk"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A47B7C4CEF1
	for <ddprobe@lists.linux.dev>; Mon,  8 Dec 2025 11:32:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1765193573;
	bh=9cc6zP7/oQvDB9IgB50EDG9B6qJsmggNsjStIEqPyBU=;
	h=To:Subject:From:Date:From;
	b=dlqLQ2bkBFk7bJcWdohU3kzSvv9QwrPa0qZ/RoLFdB6XEUjg2bU56Uucd/h7MA0v+
	 wroj7TpV9uThQsNRPU0mqcws929e2vd0MhtRcU4+cGrNLEkmfsDJIhhh+DpZJPFncA
	 1bzlEDq93ygkh1LC/gou2mSeIbe1aHn6kHMqkYsOWTQ+0L4EmDPUe1xryakV5T2K6P
	 dzzRBKFYyF0vLLVQKmXnY2jvdwcDZf0QDayfgn4QESMFBFtX3Ki563HryISpXB+Qup
	 W6OIXC/prEavRYmrI7Wpk756CnL7YlnpR47v/4u7GyHh42SfQImEwCV4hD+gS3MaHi
	 4nJmB+BbctIgA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9122DD3B7DE
	for <ddprobe@lists.linux.dev>; Mon,  8 Dec 2025 11:32:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176519357358.5654.15268528383372825413.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: afa26a76e53f52d8559a1d3c4b4963f0b377af340277669d044ff359e8a66a57
Date: Mon, 08 Dec 2025 11:32:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1765193573
