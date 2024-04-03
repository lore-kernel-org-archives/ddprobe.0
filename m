Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 040CB33E1
	for <ddprobe@lists.linux.dev>; Wed,  3 Apr 2024 01:08:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1712106497; cv=none; b=O+hvkHnPhcSeTrE8EqEWL+4MU3fK2ZIgM7GCrJ97FpbA7WYyaK1jqoeV54DD2AYTEmziSxlgPt0zfUwxPh5c5QPbr6JXlLM+XkqS3/kYIz6ZEKOczUrioYE8vAU1w5iWJan/3MqWZHf5XXp/Bza5GJBsk9dAaY6hsKi3HSwkC2s=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1712106497; c=relaxed/simple;
	bh=JRaItUcj1JRyuKXxlhh9vG832aOeGRN/2qDk+YtXE2Q=;
	h=To:Subject:From:Message-Id:Date; b=S+DwdK3ZMZ5IvvSU1wXQp2d2fUvL0E9XmXzFIpvT+qp8OKtUWyhe+JstEBs+uzJqP9VGO/AZ/Lq2Xjr4rFt+2H2XAhd4CBhwpJLcIo8+eZiPIh7TUu4YvGv5NW7dZkNc9u1YZtvBa5w00bYpOp9g0ByQi71M8VKQ1r76NxGSnwE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=RJWALAc6; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="RJWALAc6"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 76D2DC433F1
	for <ddprobe@lists.linux.dev>; Wed,  3 Apr 2024 01:08:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1712106496;
	bh=JRaItUcj1JRyuKXxlhh9vG832aOeGRN/2qDk+YtXE2Q=;
	h=To:Subject:From:Date:From;
	b=RJWALAc60NezfW/TBbUZGqBs6mzwkvOoPWQSfmTz3sJ/iNDpjdW3pTNXKSYyMD0IB
	 iR1svWl1AXz2Ri3iwQdNJ3Hd3RcJ69jtzwic/ptGPmnCIAKyL0kdQc9EEG8CjoXlvC
	 lLAqWPjX9O1wfAqvldrQTR+yCXlr9aQnf1LnVv1/QMnLSe41l6z28phRWMckf7Fw4X
	 n3MWn4RwSgYw7Yk5SHSWydT2lsdSHbxCZjEV7r7MqK4ivmKfY8zujTEee8kLC9dQEE
	 yEEhfQEH0BaWlqIk6YZumEtsl4WSZd1t4+/CPB3qlo8C0rQ3O9gd7SyYknKYeBzDtK
	 oAm/Dkpwd/TPQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 66C7FCD11C2
	for <ddprobe@lists.linux.dev>; Wed,  3 Apr 2024 01:08:16 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171210649638.31950.1241207011347758956.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 64261e43b3d338befe8073ca08881631b7ca5c43af1460c3fc54067b2320cd17
Date: Wed, 03 Apr 2024 01:08:16 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1712106496
