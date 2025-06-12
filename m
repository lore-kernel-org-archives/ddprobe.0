Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1BBE6234971
	for <ddprobe@lists.linux.dev>; Thu, 12 Jun 2025 11:19:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1749727194; cv=none; b=bqxuXtp7yH3a1PS+CXoZNX5FURqA8NplVMQc6vFd9ozlKDDOBwUV7UAfh3X1UP2WfT4IZT5u9eqIFNGqr8iwijdgmayLDIqWbj9OO6cckSu21u2CZlyX6KzdgStwuxpPBB+/TuyDEv+0empi/QBk9pKngmTmy8EZWFQIzOZ4fMU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1749727194; c=relaxed/simple;
	bh=lQEyJtv28zFg0AD0FuU66UpbkwD3J108geH1EWRz6t0=;
	h=To:Subject:From:Message-Id:Date; b=cNCQ3sCkMIFAvSBkBhcVj27l/X31JLFtVeP0fOzw3lOJICq/G6JsL/i25o1+cEw8LhSpJ0J+5Zpp52vOonpQlBQH6YulCVpaVnsin2R2ApWUQI5a3kC1UENXrpyE+fn5NgLQFVBHL/pHvoP1xsdZ9NpwGSJCVuq/RM9oj1jaqFk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=QlhNWJR8; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="QlhNWJR8"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A1C05C4CEED
	for <ddprobe@lists.linux.dev>; Thu, 12 Jun 2025 11:19:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1749727193;
	bh=lQEyJtv28zFg0AD0FuU66UpbkwD3J108geH1EWRz6t0=;
	h=To:Subject:From:Date:From;
	b=QlhNWJR8uwivsEx5nG3eF5YzX9/76cNheTziM0agtfXuLGmjJ2XZYErUvw/LaHhVY
	 GVqQjdB4wjMX5scQ/271Sk46IJcuI/uwcevN6qlONDa6ExbsfP9zOQ5CEBHXbaAkOC
	 1aMhzgjobT0Qn6jv03s2ctkcgBtlC5gkAnDVZCOGVczTbxYQCAqk2EXWpjN784zgH4
	 dwvlc68V8bpIs3bruit1qQl24JLtdX82whU2/20c0eJ6jhwxWEc7Yls/Y0KJrt00X9
	 vzsBOdxUAgcRMgBUD7REOeVVXusRFFcMHN6UTyd+VlWRlaWDUaNU0Rni1iu2NtdhU5
	 WfcnD0Gw1O+KQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 920CDC61CE8
	for <ddprobe@lists.linux.dev>; Thu, 12 Jun 2025 11:19:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174972719358.11043.6328748388874080627.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 38f4be0cebe9d8969cecc6be9895a77649ef8100bdcb0f9dd4b5f5fd1038ebaf
Date: Thu, 12 Jun 2025 11:19:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1749727193
