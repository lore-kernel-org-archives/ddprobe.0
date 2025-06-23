Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C6C80275855
	for <ddprobe@lists.linux.dev>; Mon, 23 Jun 2025 18:49:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1750704593; cv=none; b=bALs959Y232j7Lh8sPTi6PU+T3rMo2yX/XSzxqwdyK6YW6HxcwSb+vryCbKZnQ3PJ63csQJurFvld6agD25TiEVCKokEf/3BDNmdtaC2Jul5XQPkdEm3qZ+rG2ebtZLIba1DJFrO9emShJ1sidkejsLqn0XNbJdV4L/oBogn/DM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1750704593; c=relaxed/simple;
	bh=gIVmB1lEgBJSJK7Q2QeF7rneSeUQP4EQ2VvBwgtLxDA=;
	h=To:Subject:From:Message-Id:Date; b=KajlaSUmEI5hP8YRm91MIGd9mTH0sYlcHziRVQr9Iz8k/L7CDq+NcLvm0JMKeUgo42ojepIgCFSOwvXB2HoYYD9+hZ7tq0nvqG26kGKC/YUrNdmkLJbD+JrvsrzNZ68lU1udhv5kpIXNq46NBCmAoHll5PF4KkQmfNqxoHSrcYI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=RrKtW5NY; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="RrKtW5NY"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9CB55C4CEEA
	for <ddprobe@lists.linux.dev>; Mon, 23 Jun 2025 18:49:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1750704593;
	bh=gIVmB1lEgBJSJK7Q2QeF7rneSeUQP4EQ2VvBwgtLxDA=;
	h=To:Subject:From:Date:From;
	b=RrKtW5NYQ82Z5pfQ4Lz9BW/i2n8a9dtsXI2r+pO9kjOhUhfFSHO61xwdDwyAyjz53
	 fB/vOVNKNYKxzNsypAb2XhwJ+GV3iPjPYkWlhSCv8XP+PV3d19elsnlY0s2KC7Nwqy
	 YmvF+HNtOMmHCzl1zNB2Xejl+63IDpbToyqlDRBdAZnHEcaMpmk0oQXKxoQw7Hc+U4
	 pAxR/k12ZE4ybXgWoK5UNHCaHzkCUOg9y4u3Ux6/prb89KRSLYGlg9bRNQRnNBN/zE
	 +OuzGz6EN8E9OIMUn+2V57HHZQk7i+lr3OKya4C+LDVjecBVjlhr2x0wLTWhPLiwbO
	 y7/IVLP24Tgtg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8E686C77B7C
	for <ddprobe@lists.linux.dev>; Mon, 23 Jun 2025 18:49:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175070459357.8934.2081158178280971885.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 288cc3b636f86e4b1c33e71095cca36959118653ccc661c62bebb7d967e6e8e5
Date: Mon, 23 Jun 2025 18:49:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1750704593
