Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6C719209F43
	for <ddprobe@lists.linux.dev>; Fri,  2 Oct 2026 04:20:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1790914834; cv=none; b=dhNYZNx9tRDBV9cqgaff22kH6kQMSeU6u6QDGzWCQBysMQ2VODofXtQwK0sT3NIictQnFIgxrZbOdyHrtqif9WCJUzs7agkQPjy8x5rbTozwuRz020jMpGfIQfnE1mzuBzvuogma+BZMYRoVZ3ifpo7s9tpdX51nRHY/fPaNVsg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1790914834; c=relaxed/simple;
	bh=k80CZZl2H4b6hvQElv/bcfgX+Mv0lh9qtyrCxF8Cx+U=;
	h=To:Subject:From:Message-Id:Date; b=IL0i18BqqquIGCXN81I3jcyE1db/rOpJy93ELM+X5JkMUGKp4tHs5Za4YoMDMgtMTH/Gq6xvcQsFWWjqLd+6iOE3BUdBa67Z5CGUoyYcjHLwNq7BZ/fYHMfDFH3Y3Da4R1xqtj92Bl4ws4ywZLk2M/8YsURn55cq7sdYpJsj7CU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=NRasPErA; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="NRasPErA"
Received: by smtp.kernel.org (Postfix) with ESMTPS id DB971C2BCF4
	for <ddprobe@lists.linux.dev>; Fri,  2 Oct 2026 04:20:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1790914833;
	bh=k80CZZl2H4b6hvQElv/bcfgX+Mv0lh9qtyrCxF8Cx+U=;
	h=To:Subject:From:Date:From;
	b=NRasPErA9kyEoB5h37eFb1O/YRqQX06zshQUfkJrXRDDS9hXr7hscQcrTtioyqhVK
	 eEley7tU8lJeV7pNw4bmE/wXMqvrvB+ORpsmUKLQYlcMHb5AvyFf1emWsWkt+Tw2HW
	 JSfIPJ3NjB4ELjS6YKQ+p+kSWx4ZL64oLNKjSVsRnkKTfRfO8lW34iDwvJ9eSPAGhR
	 XIuo2ArAWdyHkC0C6i9q9SXA+mvvPxrFZKYgBZbP2LN+913vTRrovZ5r0eds/D6mbS
	 RiRSCL40Snb6bgbKye+Dldn+pNAsfBlRmWOLY2dZJYEoqfsvQmrDb/0zZOc9Fz1nHG
	 TO0e/QzaBvwTw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B2D70CA5FC4
	for <ddprobe@lists.linux.dev>; Fri,  2 Oct 2026 04:20:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <179091483372.9256.4164847609012905989.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 857fbdd4da127be29b6338308c7d4020d46fd23236f8ead346e11759bce961f5
Date: Fri, 02 Oct 2026 04:20:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1790914833
