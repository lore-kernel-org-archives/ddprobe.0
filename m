Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id E05861548C
	for <ddprobe@lists.linux.dev>; Sun,  8 Mar 2026 05:04:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1772946294; cv=none; b=WlrVedvHoK7Qg0WKlBi9DEJ9q6DWwUSyhTR8GrU7Kmytut4hvU3gPHCVmSJcWtseI4Z8yXjcP/fAXoQmX1gorqpmnYmk72QSTVo2hP5p4x5G/UrU5bWC5q83r5aU6sZFGotPxl9GlTAjBnRMZDY5FzmK9avTMqjyDoS3m//pMoQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1772946294; c=relaxed/simple;
	bh=RJX5JgXHFtsP7AzDdkBeVPbOyMP6tiai3hYlznxtOUk=;
	h=To:Subject:From:Message-Id:Date; b=PwEfT4eLpBuCI1phrl/D0V9VFUsDDwzU8LpDmJ99AkilzWIAR7ESnNDoDJ8meVdIIXmomwokF3bcK7oxItwyiGFQrtadCcrQ7Qbnp106odSXu1sy0kCJSMDLc5kQHtClvXWPa+xBdRqATww9v90yDeQNJRAgskbdytq5d7OpHNs=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=rtP4naVF; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="rtP4naVF"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A523BC116C6
	for <ddprobe@lists.linux.dev>; Sun,  8 Mar 2026 05:04:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1772946293;
	bh=RJX5JgXHFtsP7AzDdkBeVPbOyMP6tiai3hYlznxtOUk=;
	h=To:Subject:From:Date:From;
	b=rtP4naVF9dgEAVBJhrOAY1MfsYcn6qdZU1nvsh/Lt+jFfsla3uRN6jTHA+v0xjH+R
	 TC7oBBbVgaUK1Axdq7iWglP2iKdhSmx4tGmkC6Gsr+aJzmAPmmHCyJXoxF5b+n4uQV
	 pzpuYqu+GjlZ/KV7CuypEdEOKj21sJZo59M9pf5DRDpEBggPtmQ12WneHo65UHNHaM
	 BTrBzCLhUk3MdL+8efh19fDmbPWMLYtfKxKf/iuNOV0PoL6vWjcwyFKAn9oBsXxWuy
	 fPVMgDKT0P73NiQd0rw2fS0M7lKcFq4OM9y1v5gfv/PP8MsAIhsv2XHgOA+Sdj1eaz
	 lgaOMvonGb0mQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 91F07F5512F
	for <ddprobe@lists.linux.dev>; Sun,  8 Mar 2026 05:04:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177294629357.18387.516550017276087322.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 9e25ce81685a424752498284113995685084e8349623eea116ef83c060f960d8
Date: Sun, 08 Mar 2026 05:04:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1772946293
