Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 24CB828695
	for <ddprobe@lists.linux.dev>; Sat, 15 Nov 2025 07:29:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1763191794; cv=none; b=n6lf/idFKPMKI+G25xT1QeqdgjYStf+iK/UeUI/jNpNXrJgib5Wcwj9WS3ryZxcajt/01zyMUB9fTqjlzkjyMi1abP4N0cgyU8uPQ8kSkJL44KHFpBCqS97I/pWM1WLn26DpM1ip2iLNu7iU5nCCX4HRNYLOUpuctb8BSIqcTdY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1763191794; c=relaxed/simple;
	bh=eaczRlzSWUfLn652mUg+6wBgM9KBWfA/66r3tS19AYM=;
	h=To:Subject:From:Message-Id:Date; b=FXAWCGwi2Z0KXwXYMPTpN7t/TYUUyY5S144SjSxuIJFw1ZOafEZ49lGCdIYjt52I+xvhqRVcNh6dswtvGlEIi1ldl9hQ7fzYsbXKvTpWkczqdWNGaJOREc0rd0j08HLFTYNlViIBApIaQst7+TbRdsaHE7rzx7rhw92dbstGfGk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=gBEx8DUl; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="gBEx8DUl"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A1C30C19425
	for <ddprobe@lists.linux.dev>; Sat, 15 Nov 2025 07:29:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1763191793;
	bh=eaczRlzSWUfLn652mUg+6wBgM9KBWfA/66r3tS19AYM=;
	h=To:Subject:From:Date:From;
	b=gBEx8DUlNvLXj9MSJhs2vr2EHS4tI2GtSt4WyFuBb4Z/ha10/Bh73YTD8CM9iI2ZY
	 VRGPDMTN61z4oTsebUhxKYbqOVtHltbk36LH/5tp8g/6dGIyArXSGjIWK8Mi7Sm5pO
	 ZsAcMGNibjetr3+/zAoBeExwfWMykGXt+LH+hHdSgMZr1Whj09VVyl2K65QH5C0SqJ
	 Fhnd8SMEA4x5MtvB/SLUOruHhOvst0aMvoa6VOyN5TOBF8DeYI8SrN3mCy1uYtkga9
	 uZQvENYwGzOcBBw2JqlTs3fhucXdT16Mckb0tehZwHCbSwXGIUO66/tgrklhYwYAnw
	 qJmLkFPpkKcLg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 92A41CEACFC
	for <ddprobe@lists.linux.dev>; Sat, 15 Nov 2025 07:29:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176319179357.5674.9528186980297159915.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: c01a8f0771e395e1758f03819cffbbdecab85e9c859dd2bdfa6767ec54d311f7
Date: Sat, 15 Nov 2025 07:29:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1763191793
