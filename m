Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4CD3535C6BD
	for <ddprobe@lists.linux.dev>; Thu, 13 Aug 2026 23:00:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1786662034; cv=none; b=ADgmN+AT7Pn8XJFGqfUmsUytaM55M4jRigKJGzlqT9jxZ1FWGYObRvN3jMzvYergbf8bJs5GKWRKkJFeblU6iU508zDD0k5oTqWan2BK9cqpjQiieSuL3QMJjSz9SOvLFZAY59n4MTs7dI0aC3vAIdkXEqJZ8XnA4a+FH/+LcfE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1786662034; c=relaxed/simple;
	bh=vUM0HDSKalnlwvy/gcULbHffO6bej4xOL7gJuhH7Rls=;
	h=To:Subject:From:Message-Id:Date; b=DnDVpOkSeKdNV/CDSkOdE79vdZkGKTzFFokBa5bEfWc/nHFFpWYgjfpXkoDdhInzAI1bzg0M6+YInsfRDtVgsyoOv4ygZyODqDJzEl6li0wQdUfLgSoE2wLWKtKYgAikv1ktS1UlEe50GpFJHXjODqlzbY1rHYIERBm7c8BbpGE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=WWsLG8tT; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="WWsLG8tT"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D4A69C19425
	for <ddprobe@lists.linux.dev>; Thu, 13 Aug 2026 23:00:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1786662033;
	bh=vUM0HDSKalnlwvy/gcULbHffO6bej4xOL7gJuhH7Rls=;
	h=To:Subject:From:Date:From;
	b=WWsLG8tTKuL+z0rvciSxledXcbHS4cXLwafo4x0jaVAq90oon7iW/c+MiuIpATslv
	 bPha+OwOAXYDZznlbdeGFPOTlH279r2oj3Wqi4rR7FjjQACW6Xt3PwvJ/MNLQsPrHl
	 2VdEwcH9d3icYxu7XbUavVpprTfhZp+7P9n2r7cNcU+ZjjlTrz3WmRsTA4BThqP+jQ
	 2o4vLTLZZZnHgJ0c8PBkocb3u36zjrFZrE2FQGlgSG5H6dhWNBOfpqsfnrp89wpEqd
	 T7qC7l3dzkyPsSRL8SUi1+UjvN3e/afoeBWbHJamd4wglKyLzKRdtBZ/mijDxsrQ/4
	 FlulICHnZNI1g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AF817C5CFDB
	for <ddprobe@lists.linux.dev>; Thu, 13 Aug 2026 23:00:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178666203368.24161.18069463569512022806.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: c032d77b2ab82bd37f98b0a0e85a3cf08d3ea6e1f7aee007f1be8239233bb7ad
Date: Thu, 13 Aug 2026 23:00:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1786662033
