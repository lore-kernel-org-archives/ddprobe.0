Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4097430BF66
	for <ddprobe@lists.linux.dev>; Sat, 18 Apr 2026 14:57:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1776524254; cv=none; b=JMfXQspVNevK0tnejdPU8vEbrgqCbyH30il1dFzSeeeEpVrgTPcPxYqCcNgyJ8KAp54QxzHEtXTDeaaCchT1DYY1dMExKadKaOs7MCz1Tq9Cq2lCGZBdJPcm3LM7OuJbRhln3K9Nl3gE9zNc1SqjcPmG7TCStOVEM+xXdksqvYM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1776524254; c=relaxed/simple;
	bh=SAaJOJ4rLIzuBxRrX+RJIP9jATRuxfKUy7/wqAUrZsY=;
	h=To:Subject:From:Message-Id:Date; b=tp+MdUZerEtvcqYukYZVc6zaGAzsMpAPQQJrWqXL/VVuGOYK1VryJxqg0qHUvKNNlVjvA7w3MUpQ2gJDBREaYetCZszRPUl59kA6IKvwxEVI23Zm/jeogJGn5odkbz/aOTrrKXidWC1YFdlRBszhsDN/xkmPhoP2uEdJHNPMnOg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=hDd6UHAY; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="hDd6UHAY"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B8EE9C19424
	for <ddprobe@lists.linux.dev>; Sat, 18 Apr 2026 14:57:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1776524253;
	bh=SAaJOJ4rLIzuBxRrX+RJIP9jATRuxfKUy7/wqAUrZsY=;
	h=To:Subject:From:Date:From;
	b=hDd6UHAYshRCFk8oYCSrIc8EnaHAdF8TtQf8ZjdAj0D0tvkMcU3GC1gi8tcedWz/v
	 MgL/ZkRzUADf3PvHobq+shIl/6h6DzCEEBA9avebEHjfJ6zZ2zzj7NpX1GVhWxYTvO
	 9RYXwY4+LfroJ2fgSL008tWy93XaXI6GUCFCh+QV9SvKlPlUu6L+Y2rQruCM6rS1LA
	 2Hu8BceV2+Bk7up+4zHlOLk2sBe9aALgqdLj/KDzK5b333sIeCEIiwsXvDT801Uo03
	 hhQgHhfQWjHfwKrueaweOVjGBtgaOeMN7NtfHG8Ppe2ghp80SeQ+nH3ZMCJ8LWlc4I
	 LIX3+1HEkfGxg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A9CBAF99C89
	for <ddprobe@lists.linux.dev>; Sat, 18 Apr 2026 14:57:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177652425368.10348.17321874251032401873.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 060c7103d1f5ca1815d6eb5ed6b97878f70e17030c45f3bf2b570f25d56f2df7
Date: Sat, 18 Apr 2026 14:57:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1776524253
