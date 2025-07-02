Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 43F5B236A9F
	for <ddprobe@lists.linux.dev>; Wed,  2 Jul 2025 23:49:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1751500194; cv=none; b=ZN1CuAX6bTCuH+45NpAMLUCz8M/r7r17+7rtH/ZKoBQIw8S/aLlPdqjOn3m8UD6Af52Gx54/XUjwjrdd39A7rxpFlMPGk+/1rmkPH+YyPCN3tBduFdPv95GSc3l7455wp6eaSwigaruEQUyHU/Dh+Kusb+1VOxC7/rFSQIPUR0Q=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1751500194; c=relaxed/simple;
	bh=x9QnwhfF8yA32wgK5JElmqHhWP4kCJLYvuKgv2MaZoM=;
	h=To:Subject:From:Message-Id:Date; b=BdWyyhc8WdoYbuGnYnCPIs/R8l6Y5heLkmeKyOzKEd8Q7LWcMs677DYealu1RjQ/QyDJAOXO2zIv3ZCIWL9tS9UCxbcIeMYiCsr9jRIEUfH2qmDXpDbDrtst0u16ceSNWGzfZpAffuylULxmcLH1tovo5ONQEMex2LnWezfVjik=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=cxEyNDJK; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="cxEyNDJK"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A6CBDC4CEE7
	for <ddprobe@lists.linux.dev>; Wed,  2 Jul 2025 23:49:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1751500193;
	bh=x9QnwhfF8yA32wgK5JElmqHhWP4kCJLYvuKgv2MaZoM=;
	h=To:Subject:From:Date:From;
	b=cxEyNDJKeCEkitu7jXuYc9ZGOqVXpPX+8XxHOyadu6D0moOIQvVy/YaRQgqI/XlaX
	 xwnDUvySHYICRhzvCtuN3edmOrMn6/fvF0ig2Pzp9WzJobYIQBtBCcl6OaQIjkoa4f
	 loQYXiC5plkowE2/kuiq4ZTCtvBvFdZn5jCQuBhLzb+CZ2H4bw1PEP2G63BwVcDBQS
	 Ut3ovd+PgqOoSXIbi5khGUySsAGyOGnQ3s8k0+XO5+Qzj+nzdrwrx4TrJ/IRECu3ut
	 zDczofRzUKjsvFbl3pqA2QqvpaVOivMDMS8uMEzZpias8/yevoPXhO88WCtse7cCfc
	 vJ3vl5425vuCw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 94727C8303C
	for <ddprobe@lists.linux.dev>; Wed,  2 Jul 2025 23:49:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175150019357.10376.8156745403913897401.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: b164e7f2df39bb0552b1334fe6bdcbadcd17bdf958be693e5e319da99ebf112d
Date: Wed, 02 Jul 2025 23:49:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1751500193
