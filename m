Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 56F75381EBB
	for <ddprobe@lists.linux.dev>; Tue,  6 Oct 2026 13:00:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1791291634; cv=none; b=jopLeshZvIj9quGkVdmtuNFTt6zdMhKl+tnDOVLovYX5goFXWE79Kk3F2CPG6Z2UN1HdUxwEX9q5uMU10VH5z0MHFFqfctfdu9102yvvg71vEJDDjmoxij03rYrqzqdTxzZqDz9CpjhiJv36cydFAV8EiXQVUEDqHAOxJg5drMc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1791291634; c=relaxed/simple;
	bh=8t4locTPK0PShUsTI+MWAN/pPTEuZ++8GYqFKpzEx+E=;
	h=To:Subject:From:Message-Id:Date; b=pcfLMpYrvXMgQAE4VlZ3WVLQu8/TWNYvnIq2ZFj0Tv1ZIM+UQl8KYxHGR+Xu35o98/yN7vQ187K46ewui+73jNWxUsREVGTR51vNdEpbXMLF2IOHBby/4vYokDQAJDnSjGjr0n6rE7eqKrtrMrl5PsMk+Ht3ZnIH4PEWzVuZym8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=bgYMvW+Z; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="bgYMvW+Z"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D0B54C2BCF4
	for <ddprobe@lists.linux.dev>; Tue,  6 Oct 2026 13:00:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1791291633;
	bh=8t4locTPK0PShUsTI+MWAN/pPTEuZ++8GYqFKpzEx+E=;
	h=To:Subject:From:Date:From;
	b=bgYMvW+ZQJsUlMoCmPZkL/nso5wHvUYPkPjyiW+f5+SfyDP++oTLZtL701M3kMb3V
	 hx4nujrbcxfEzamnbotbkQQ5ix9di2v2moQYwopvtqCMlOoydsa4x8jmKYGOvm56MP
	 yDrsbQ1WGd4xZ/EAeiLfdTzAAyH0lNW8KBMBVGGblLAcMORGZR4vq2tzfX+ATLD5G+
	 3ucqrgaCOFCayUenwTtAikTarEULJFrhJIJeeSdM0/ShLASR/cbzjxWLbJJF9Km5Ar
	 VBqlUmyVMd/wq5+ALpBm9KsveSdBqr/MUwMNwqUKkC05mc39hgC88SVzzE/1HG5XH4
	 YbukXNdYWVUOg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AB86DCA5FF0
	for <ddprobe@lists.linux.dev>; Tue,  6 Oct 2026 13:00:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <179129163369.11158.9619248776191473072.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: ae2bc9d11146f3386467ed136a5de2856512390e33b86157f18fedf13ca1b724
Date: Tue, 06 Oct 2026 13:00:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1791291633
