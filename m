Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 338EE1DC1A1
	for <ddprobe@lists.linux.dev>; Mon,  7 Oct 2024 17:05:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1728320754; cv=none; b=aBHxnVl1MdFpHbnVLJRIG0cuM+iVz6PlRhr81xKyVQfzErd2b3c/2Vxxe7idE7pFpzdpUpj6ghZpb5eydBtA8tZy0zHHALHr9s0exqzl10Cuau29mgkvJ5CelsOno1IAO6sR2Gjb9rXo6zGLPJ8eEj0QhvxWis91QEKN/CzzUaM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1728320754; c=relaxed/simple;
	bh=ncGpYKQsiQZGhlOQaIXEgbst2gZpeHHJzVRDYQcAYmg=;
	h=To:Subject:From:Message-Id:Date; b=PgBRj0ZIk832Fn3aV+1zNPnZSEe0Xmku22VbHrUYV7MM8/IrgAuequw/XVsYPp5WBdfk3UGk2qNwCL/LHTYXWLQZFOXNe/7Xz+qxegOlxQ58zeNtvhNOUkpU5W67iqjDjlgpXcSN8fwyYZigCSzB7kgbs2R8LDywk1JODZOgPd4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ZBSEeyOh; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ZBSEeyOh"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A5585C4CEC6
	for <ddprobe@lists.linux.dev>; Mon,  7 Oct 2024 17:05:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1728320753;
	bh=ncGpYKQsiQZGhlOQaIXEgbst2gZpeHHJzVRDYQcAYmg=;
	h=To:Subject:From:Date:From;
	b=ZBSEeyOhhQRsHYMiVVOV6l5e1GWNwBP6eStXTBdQfXX5lbXGf0IN8Wb8JvNmQ6eLd
	 GMSKLn55QJUBp38ne5oMbNPv3hXn9m82SZqbtHOwS4PSH+gO9QB4PGGmweahpSrjWm
	 UMhUtpcwjsu4CwOpIUmdCsaDpzqSizGwNjvnE0uRgeHEYA99Fba6L4NQV3i9uYI2ms
	 pQVJZF3AkYyAwYjEWPzbk7n9r9fL/7caB5C69txwT1mQ4XLRoWqlZSuxlsfmzzmyPf
	 +A6Q6Bh0iULXOfl5LG1HZdaIa19cIcvXzhJTLwuJp9sJxuGTrvFmNx3aiIg5imqb6t
	 21aaGiWbvNuXw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 97BFECFB44F
	for <ddprobe@lists.linux.dev>; Mon,  7 Oct 2024 17:05:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172832075361.1765.4130546235173578326.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 4f38f3694fdb513027e0f837c70eb3fad96efa72e003e1ba9f23aad2980315c0
Date: Mon, 07 Oct 2024 17:05:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1728320753
