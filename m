Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6A9DF2ECE8D
	for <ddprobe@lists.linux.dev>; Sun, 12 Oct 2025 16:29:55 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1760286595; cv=none; b=UMkC3l3Vkb72Ki6qZU1GmXO31qJD7Ma1tfvygIB+8RTP0wuTLv9I8nu+N/Y1qQOqMVz+qEtTMTzV7Zva31GaYTjDmBD3J0zCltfRRewxjanXDgWjSyqHfULmpXUlJevX9iBD6ooDv4n54KDlw/pRkzFsf3xijxkyKcetB1g2ORs=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1760286595; c=relaxed/simple;
	bh=t2L9zZU/LX+3mD8zWIr7MnKaEvLJbQ2F9FkzAdX3zxE=;
	h=To:Subject:From:Message-Id:Date; b=Y1UxClDuIBCpHLyJ3XGN7nCxGHsIWTGXrm8xFVH910z7RDTf9yuwKDHL5C01Maw4+oNZR+WRsbAPLh2E7ESun/oWWlFz4W97SWCiVkWF7/pUKlU1lYjer3Rk36EFcMlmgqDHA4ulZpFqCJYwK96rWJcYjeAAEn/8XrqMZRa5Ppg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=HSyq5AC0; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="HSyq5AC0"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A0A5AC4CEE7
	for <ddprobe@lists.linux.dev>; Sun, 12 Oct 2025 16:29:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1760286593;
	bh=t2L9zZU/LX+3mD8zWIr7MnKaEvLJbQ2F9FkzAdX3zxE=;
	h=To:Subject:From:Date:From;
	b=HSyq5AC0cgEPVvtrzIFpwg276l6UzJFFXNucYJGWoId2CjvAPuHwPNJHZKHXk8sjs
	 EccX6pT84TnLDl/K7cxksAWwiBperMnucjmYoZ7n0Oh9cyXzPCBuPBoPgc+UtV86hj
	 K2F7tP2nbCzzuk0IsRpxYAVlXjdZFSE4z/RJKCtPTbVF8+SnOmtm8NoAJO8wTNac1B
	 gQVdcnJIBmoJIQAUZgWFnCCMs8Mavy9TLc1h9SxiC/FVjvM/4lLUvgKwj4qdq1ubnu
	 qKMu+v1cbJ0uytl3ROfmeOZK0NdpWEVllltD5OUvcR54z+2MBoZ4FLZFquqHsShYEh
	 GiEWX2l5ntyuw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8DEE4CCD184
	for <ddprobe@lists.linux.dev>; Sun, 12 Oct 2025 16:29:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176028659357.28490.14725138532339783384.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: c876c38df329ea507268b3d32a817bf311fd317f9d7631211664072eb3f1b05d
Date: Sun, 12 Oct 2025 16:29:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1760286593
