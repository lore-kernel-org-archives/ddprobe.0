Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 27A917083E
	for <ddprobe@lists.linux.dev>; Thu,  2 Jan 2025 12:55:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1735822554; cv=none; b=Flrgx0JUPOvE0cUWbZNVUBtSyDzAUQwaatk87j5w8BDoVO3eZsWsE2oeqMbxobZ3LvucEYjWlD/96HOgabJ5Z9ioJR9Qxntq34rSeCcAJHW8Qt2HIDW4i4Mybjo7POd1EqN4CkrnEWbc+dQ7dAC3oQ0vSHcZSrVsWbQA91fpAGY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1735822554; c=relaxed/simple;
	bh=gGQG09iNxsSlO89mHGwpBQyBlDJ+2YagQqLy1WccgTE=;
	h=To:Subject:From:Message-Id:Date; b=GeIOr0vW4Cf6qjng7MGxlqbaPmAD0cYdPV2jeiqSFrHmorqVcBBqikY72UjfSr9y/7ygqgYVVRLQGrvzq/I+gAQTL0x+APRpo+QkydjnQN5Bv2rV2MLUf3rdqFHP3s3yl7Ls4vuUEDpPhVmvZAY9PaL+AGefbq9fbzdUXifoRNQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=CHtF02vc; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="CHtF02vc"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A6A57C4CED0
	for <ddprobe@lists.linux.dev>; Thu,  2 Jan 2025 12:55:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1735822553;
	bh=gGQG09iNxsSlO89mHGwpBQyBlDJ+2YagQqLy1WccgTE=;
	h=To:Subject:From:Date:From;
	b=CHtF02vceqRWcs9CTvQJ4MuhluHpYH1nB21DzqmlEBIuAAGp4C1ZfplDUClF4L9uR
	 fVxR7VqGnmzbKEabnJ2fGrYAoNjctmFoVSzcuaKwa08m+TiKSosUL205o9+bvKeGKj
	 2AiIED8/jLtEyy41Gb8z9u764ddXtiXsA9t74xWVNqPXrIAo5cCbnyilNa6dwM4Mc8
	 3RS5+31Mj57/ZSosIjPspG0vMxnQwvNE/UT0rQEPqfYPlt9cexVeNYYCw8t5toY4Vj
	 5dvWBYjhHq/zyRCGtJyiPwsGS7U/TIpWzNG8uWGAjEN16AU+RDdS4F46MXiW3AF49C
	 k5W5DpDj+F/NA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 93993E77188
	for <ddprobe@lists.linux.dev>; Thu,  2 Jan 2025 12:55:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173582255359.16604.12943835514712408554.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 943436473259ebb2d33f047f8e5f885058ce01cd37ea7d650142c98ccb12a665
Date: Thu, 02 Jan 2025 12:55:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1735822553
