Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3AFF527A440
	for <ddprobe@lists.linux.dev>; Fri,  9 May 2025 09:19:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1746782394; cv=none; b=agaGmQ8x5b/bPFtFgSfShwf7JsU9pRUPqRepkq+o7DG/RZe7MtgHuaOZW93bVCYMIbb8ZdETDk7e5Ze/lxvEaDsN7neHMN0LlJdfuZ27SQvM877x2rKdhQBOI+OFkSb/MIng5kBzXfrDCC3ppeOklrJrnLDL4vcqt7AtHN83QUE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1746782394; c=relaxed/simple;
	bh=jsqjKy6/v41gVK85zGlsGwipjlnZ7Rahcuh1Oe+v7Os=;
	h=To:Subject:From:Message-Id:Date; b=OQaEmFZ/VuAMcXTm6wYydyUDPifS2On2kUJdb8D+8CCiCtFnKw55oQ9Pi3MoZh3ch4/XQHPhgZReH2Lz0/lxYUgqLnLR2jv24TYHkSBn8LaAiHDHF25VKir1zYQKToqeFvs9sRhmUGGwILGylNpk3tcwjEiGqkxXz9EwmLgoa8U=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Ho8MpraI; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Ho8MpraI"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A057DC4CEE4
	for <ddprobe@lists.linux.dev>; Fri,  9 May 2025 09:19:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1746782393;
	bh=jsqjKy6/v41gVK85zGlsGwipjlnZ7Rahcuh1Oe+v7Os=;
	h=To:Subject:From:Date:From;
	b=Ho8MpraI8ihYcHjkkmm9212OVE6l22IWUW1Vjn/G4WSxKUaX8cS/kYh8WY+z9Y45Q
	 W3VwLiSn3IwIFybajKc7LLyABLMSG0IxlJT6JNquuMTvI9oVgCyd5eu1KMrOQ5U/jn
	 ND+HBMZdZmqvbNCRNi9d1WZWxuW/1VJuyjLojgBcNqUPNujRhjhlA8TU/R4UEhNWxx
	 zO7e4qeR8crBcHUGy35w6Q+/d47LAWRV7QgsyIx7nlvnCo55/x1waCUKrxnGE8TQ2K
	 GdLHR8sYQATfZ5xqWvf7pJO/Suvdgbxus3+PLCrThSDzeITqyEM6YHUC93E6B2KI81
	 M6AcNCg4WSrvw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8EF0CC3ABBC
	for <ddprobe@lists.linux.dev>; Fri,  9 May 2025 09:19:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174678239357.7798.2602150270843118301.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 48da945337cfdcb9117c46f679a5b1c9827d1926e675e70ff26e90525ec0b8df
Date: Fri, 09 May 2025 09:19:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1746782393
