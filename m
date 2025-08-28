Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 287F8347C3
	for <ddprobe@lists.linux.dev>; Thu, 28 Aug 2025 05:19:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1756358395; cv=none; b=V+yonsPwVsdJzbbPCynyeM8jKuCj3Mf4yO6R2eRoMaOHh38drb/wLbD5lQYxedFLswnRsLg5dNUzkCcpx4aSaKN3cTzaTiS79KYvyNKwfCOLg8+OdUqd73wC4C30YVCPtg6GmFjFdi2u2KVhOVowKUTQ7rqP0dQRmOPqF95yyZY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1756358395; c=relaxed/simple;
	bh=d3BjvpFnE6i28bgtKs5ECHVnZP64O9RRdTOQ+cOWOXQ=;
	h=To:Subject:From:Message-Id:Date; b=loBpdW8B70gnI5VBZ4hlATC6SRXOzare47Pw5GhC5axatajgic6YrhrTWLaJWd0jq+LjeoEqcZY9mCmYEu6XdlTciL8GLuu830lptzDil/FJMOUkbwVaxxRTcVMg6bK6jUGt9VXfzoC+jRqHIQJENE3CJCK03pJuqJejs6c/fFM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=QITIA7ya; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="QITIA7ya"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A2563C4CEEB
	for <ddprobe@lists.linux.dev>; Thu, 28 Aug 2025 05:19:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1756358393;
	bh=d3BjvpFnE6i28bgtKs5ECHVnZP64O9RRdTOQ+cOWOXQ=;
	h=To:Subject:From:Date:From;
	b=QITIA7yaTR5JJkJ6LV+91mfDem8OzzQkW+NJOJQxyDyWpTRU0mJhCxob2oQlNZhFM
	 AtPEkxrQjN4uIJN8pjVRnGxQZbdQVBNZdKZMnztHMAB9bXDrjjZisA/8rLqqgETKTj
	 fhN4KSk6z/rH7JaESAGidxnn+YPVkSDZv/yLq68FQb0/CH5NgkoLqtgIyqIViHcTFb
	 wEN/8AULe+v53siWFGzxHDOUgg/DqUI/vLW+XiIIdtESNFqadCxJ42WF1Dds/GaY4D
	 wZUiGXvn+Wl5iZjV+1A0QJ/Ndsd0hiYzGm2hy6K9eIeAIyVlcddxIq02kKUgRWNbAO
	 WPfvPJk9aWAsQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 90E81CA0FF2
	for <ddprobe@lists.linux.dev>; Thu, 28 Aug 2025 05:19:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175635839357.27617.9598707260528543434.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 67cc0fdb4639ad2a6184968e4fa4bc2450821aaf50d07c6407185f82f7420b41
Date: Thu, 28 Aug 2025 05:19:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1756358393
