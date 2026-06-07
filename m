Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3CFBC4071C6
	for <ddprobe@lists.linux.dev>; Sun,  7 Jun 2026 02:34:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1780799674; cv=none; b=SSx+cS5wI+jq6Ac+8DuHh+kZE/1voo2snyVGt7ML9FBIU/f+QqJrpBq9ojN0Ni4XmmaGvERzRyCYZ6GVRyxnkkItacTWLH84q7QHCBDtJx8RKkMUWtlfne6MuXUf9vGrSfBlaIQLXa/2A34MQJ5Gv4nnna/v/nkNmq/k8lOTHTE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1780799674; c=relaxed/simple;
	bh=RBUFeo7gNBxz4iVvd+hrvQO5Rqt+rWJMEMKqUonGbbQ=;
	h=To:Subject:From:Message-Id:Date; b=frW4hOkkZubZ9HzH3X9e0bpjWcS+QDE+K+Npc1qvmSHbXQw9OABwEhOn7b8WJhS4oHffZuL34aaEDxvsTg7fOMKCu5JfGlibr3xwNk1h2FsadPP/8qrnjl4S40e3PHhCYWsxToNVyJocWqdzNFOzzUkKN5kSqBwaT2RHTqI2hZs=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=YUwbiOgQ; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="YUwbiOgQ"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C8019C2BCB0
	for <ddprobe@lists.linux.dev>; Sun,  7 Jun 2026 02:34:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1780799673;
	bh=RBUFeo7gNBxz4iVvd+hrvQO5Rqt+rWJMEMKqUonGbbQ=;
	h=To:Subject:From:Date:From;
	b=YUwbiOgQT2LHQvrgO9X02Cjj31M4DT076w3AEpRp2qZqMt+6JdBoXtnUuK/f3LbFB
	 8haBrtkW2aT8l13QYoDyX7jh6E9aDY1r4G+O7RWVM2g66Uta0h5EghDBjygwObc7Dw
	 cvNoa5tZ12rky/H1SmcvGeKVGpgh5DPn8KzBgpJ49lbG00krt0visAByPxBLmbxRV0
	 mDq+R6B6iWBzGA0LHT/nIyBD4rZr+bUHQoAjLNUXbKoGiW3a0w/p8F566kzvGuANkU
	 sEJQNQgjuphCoQUTfmDxSg523MOXq0zW5QsOmUF7hIAvynsZtdCZHEtQ6yD+xpHs+D
	 nPV1WG2lgGi8w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id ACC6CCD8C88
	for <ddprobe@lists.linux.dev>; Sun,  7 Jun 2026 02:34:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178079967368.8497.12409038502931218570.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 670568112da1a75cb2d0cd3e7dfabd0b2ce4dd85f0b0ac920108809a3c176f91
Date: Sun, 07 Jun 2026 02:34:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1780799673
