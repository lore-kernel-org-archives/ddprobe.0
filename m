Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2D57573451
	for <ddprobe@lists.linux.dev>; Tue, 24 Sep 2024 19:55:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1727207754; cv=none; b=fp778S1qaSf+VQbQcKeOFA0dYXOiX+dDidVcflDBMCglgqogxoHR/ZEZ5bIL/o+c3Z2wWdx6+aRmdXt2+XYEyWADQ93+dgLjUOIubw3oXux8fw2E/Qfn4G0UlpPShUXzYOq8I+111CvUcDEPxg8ON1IdbhXogGPgWSDdhr+uPVE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1727207754; c=relaxed/simple;
	bh=Kg4uWNCgP167ndau8LVg7q9exxAtoSkNbX7auNOJ//0=;
	h=To:Subject:From:Message-Id:Date; b=Ny4OLdedO5qOIyKWfcfP9IixSa/x5MfswBMTP5oiRwRhucwMvFh5VkVqtP/eM+GZGUAGw5iR+eI4aOb5DChK8qYp6GX14awX6vgkOcKAZy2LULSr1wN5LQi305RasvV0mb20BNFgZczkYqjmP8wbFBGea/tVjfpRb9MHyw4OS6k=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=c2RDGAaj; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="c2RDGAaj"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A2443C4CEC5
	for <ddprobe@lists.linux.dev>; Tue, 24 Sep 2024 19:55:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1727207753;
	bh=Kg4uWNCgP167ndau8LVg7q9exxAtoSkNbX7auNOJ//0=;
	h=To:Subject:From:Date:From;
	b=c2RDGAajmU21wZ4BNIQnuWyoMBFoeatoVnlWblF6Ru5S3KruQa7VwQcp3rw9o1kUl
	 H0X3gVp7lWKSfj//bgAhsDl6C4cCDcb0NDfcKGu/iTQ6Dbi6BnQM3j7plla00LGUEK
	 5xycZDM20aG4vAJvAPQyectDRsT0tqXfB3ymF5wqjxkvYvF8IcR5fcK8mpsG+F6CMr
	 qjk8P5yvUomEO65X97FxU35wgnT+CJpolKl6DCEYkPlKCJcpMY86FeG0LEQ937YAZA
	 MiEvYaSPtpmLq2glKeYVdGZXMNnJLmd1ZqZAIGwt+WgzIkYixNZ460XPtjSqa5Vlq+
	 iNmxCUTF5fErg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8E96ECF9C69
	for <ddprobe@lists.linux.dev>; Tue, 24 Sep 2024 19:55:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172720775357.6798.15333994696990064845.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: b6f76c5f3bf9ebe75ea3069cced348a070ffbbbca244b60db77f2031ed78cc0d
Date: Tue, 24 Sep 2024 19:55:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1727207753
