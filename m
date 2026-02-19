Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 26B64145B3E
	for <ddprobe@lists.linux.dev>; Thu, 19 Feb 2026 03:14:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1771470894; cv=none; b=mFp5n8lT7bRfY9FVk6Uj+snxlWGTNkvnTOXoDY9+QYVAcj6EOTDKwJ/7KOHSqcdrkB4pn8NgFBak0YRRnNd8kcZjm3DCoBKm7GXdFN5Y0aBPUbCq2IlwEjHmshKJtP/KyLu5CTY9iAklTBDJqTBy8pJTP6WyLdHVDbSdZQnWSrk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1771470894; c=relaxed/simple;
	bh=oAk/L1Tprt4IUuNDrEoys8Bzxunv3supFuYMbYmGevs=;
	h=To:Subject:From:Message-Id:Date; b=AcwwfCOOOvKDzzQlFZL7klz1YDnc9y+v6ITFrsJvcEmny7Rq8hCFIYFy7quzopCpL8kQLGlAuKzKV0zdsa6gZHZ1R0TsuFsb8b2G7c3OSVx2XsVls9J9O2ImZMsAEELiAab+JkgQp+iJCgTZKsVklA8mmNh135V5GCxY4l0XdRU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=BZev5Msa; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="BZev5Msa"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B8BA5C116D0
	for <ddprobe@lists.linux.dev>; Thu, 19 Feb 2026 03:14:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1771470893;
	bh=oAk/L1Tprt4IUuNDrEoys8Bzxunv3supFuYMbYmGevs=;
	h=To:Subject:From:Date:From;
	b=BZev5MsamXzgVTfXIW9z0MI+B3G2dx/wK+JqjNKcD5pXBqxIVVC0+qLJQ/JYNjC03
	 CP101VbXT7vCSrRsmMIJaFjc/whcGOqMYxBQ+KcXlRLEtRrejnC7Gi+TpL4pDfpHTZ
	 h7wj21KVzuGgG1gIXhms1uo1CII9Y887bGNwhDqgJ2Y3O+chf6o4QdsxyMupi+9MwZ
	 1DToiUrtnlB5ZN7Cdn147OmHwVGw/XFFW1oRS40suXwkqdH+APzldbvp0tV/zVUn9e
	 6RSLaScHr5sAlx064LcvnWaSqlYzYckMpVLhgvJO3yziQoPMq/fwENL9V0+UW+vddL
	 Nltol9c/UjeTw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9DFFEE9A03B
	for <ddprobe@lists.linux.dev>; Thu, 19 Feb 2026 03:14:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177147089361.32165.3349956062902258897.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: a8bd87b4e5d132d43eda27a94aa7c31d6a1ea47c325e31ea2757d489bbcfd308
Date: Thu, 19 Feb 2026 03:14:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1771470893
