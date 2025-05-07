Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2B7EF28FFD0
	for <ddprobe@lists.linux.dev>; Wed,  7 May 2025 20:59:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1746651594; cv=none; b=O1WTjhor9G8ZbqiWZYA9TMcXMZYvM8iW1ZP3DfkUATWlrtGtH8Avly9sII8fQ3tks++faGmv3avpcb0YoZ1m0gH9WxWIGI6hOlJ06UltUXN4Z9fb2kpmsqQ0fmPpMmjOFQNlVBXlK2xZ0weJB8cSKWwoxIJAESSnKLIq5byEAV0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1746651594; c=relaxed/simple;
	bh=nO+qGYUXdzqX5Qsi8UZ9dZe5/aLTFeLTk1Pe3h6o7JE=;
	h=To:Subject:From:Message-Id:Date; b=WHmDLhTVQyu1qjtIuEAazAYHbyJGAv2IbK+uLvHT31ZwjBYCqHGKz4You30PJXMyE9MfN6TSlg5l2U6QOOCEbBIWVnyHbJsLtovz7YXQnGjTrf+WdukCeSJq48IyQMJZsL+VET6Pjqes986N/nmmkartwvgAMSIEajCft+5kb9g=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=FTkWeZGR; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="FTkWeZGR"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A1420C4AF09
	for <ddprobe@lists.linux.dev>; Wed,  7 May 2025 20:59:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1746651593;
	bh=nO+qGYUXdzqX5Qsi8UZ9dZe5/aLTFeLTk1Pe3h6o7JE=;
	h=To:Subject:From:Date:From;
	b=FTkWeZGROARpp42lRh2IrSaB5T99PriKA/JofFDdL/kFOSGOCayQecrkuV/Y3t/OM
	 h/grllZl7dv5RWOIAMugcH5XExIcG+tapvLze4+eb3TidrLa2RhQO4xHtMVNL/F1wq
	 J/tc4x6O9OQ1VxHnTihaimPogAhxjrbbKu0Lb7VHGVB4ziKYeuKpAsz4FyU/01guvX
	 UsfhwAYCJV/myCFQ68pOdQ4yfbHnKR71rQpw61C+saiWOswm+LdB6sasRVMi9+ok04
	 whGUpeEZgWULBa7gVZYQpl97ZRnZ7CV0QFO4oYFH3nHhAw1JBY5LVGXDSLGmnqDfs6
	 l00atxsV+M6dw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8EE05C3ABBF
	for <ddprobe@lists.linux.dev>; Wed,  7 May 2025 20:59:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174665159357.12061.13860393130166876285.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: b50eccfd01658b722bd0896d5db3a194a177ac3a57cf44eb337b8ff23230ea33
Date: Wed, 07 May 2025 20:59:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1746651593
