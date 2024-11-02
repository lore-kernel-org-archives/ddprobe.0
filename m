Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 29EB115884A
	for <ddprobe@lists.linux.dev>; Sat,  2 Nov 2024 13:55:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1730555754; cv=none; b=Cmh+8lE4MUx+hW47vxGdKRUZIZsBCb4aHGAas0hrDOkTRyWqZso3EyyG92I9tH2pB+MgXdSwhs8HFPM7IRM8uOLhfKXbs3bal/OfplN1j+sVzWY4+8Hmaut6vezGUl/4xBRZmvUX6+LHWDHh54pF6rUYRq8wCXGKyhKC0S9JIy8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1730555754; c=relaxed/simple;
	bh=VJlJfBeWUm7DHaxOIUvGjvqq8jlcrLN31mW/kMk2ISY=;
	h=To:Subject:From:Message-Id:Date; b=PnE4RXD62OypYLJ9qpyFcCXKIiuXyysvr6PLtoD9e9knRgv+WT4pIUO9sfHu2NqvjevDkK7IyKyJVsrvzWtyCddrmYOKgGgrvUID8tmBLbRdsEEm6/fI0Raar2PM3ipdLgVi+8PHvAWVx4ynqLvJKGr+WFslZn+/EMSL4iRZ2xg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=dknocys8; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="dknocys8"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AFA0EC4CEC3
	for <ddprobe@lists.linux.dev>; Sat,  2 Nov 2024 13:55:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1730555753;
	bh=VJlJfBeWUm7DHaxOIUvGjvqq8jlcrLN31mW/kMk2ISY=;
	h=To:Subject:From:Date:From;
	b=dknocys8+ferIePeJVMOZ2/sX8TXJDwuxPzybukNIVvREoBLrX62Y+kxbmq7Q3zxa
	 MeRF250wl4UCIu+RiNbVAy7BNuBqrNajCnYa8hiUm0HWJGNWbngyEe90Sttlmttwh5
	 FoNe914SjQz95v1uTIpIhSfE6N93xi7e8hGOubS4gImeC8oASeNcRV2+x+2rnbYENp
	 5oEHt+pLDNZ34+0d/hniD1GNFfruHgTuYeBzTNQd4AH/0prEfGqxoU52OwCmWNQ7RD
	 K698PYwqwezpO9kbubqsH18wDiUVPJLI7jt32Q2JGzGBY850GABYBuwEufwLvwVMwq
	 X8Y9RaG5EXgxA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 95AA0E677FC
	for <ddprobe@lists.linux.dev>; Sat,  2 Nov 2024 13:55:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173055575359.5768.10951858329342549329.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: f9ab40fa8938f4012d2b4195a77e7d66081bff83b792b7eae4ad4228aff3fad9
Date: Sat, 02 Nov 2024 13:55:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1730555753
