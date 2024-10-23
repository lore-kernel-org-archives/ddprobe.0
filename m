Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3BE184C7C
	for <ddprobe@lists.linux.dev>; Wed, 23 Oct 2024 04:55:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1729659354; cv=none; b=k99g66Cah1G43vn7xTYIkm5ylqM0eSDmp2tJIHMNTMYn/otdFM2GrLv8QL/8+Oxg6315R/MnDZ/e8/Gm4To+W5VO9D9k3osXx5beEjAxLq9mMDXGwJEllCsQKVDZr7NQapQkOU8TfUWrhtYnHUeRd/Q9pwfY83xawZiDwSddby8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1729659354; c=relaxed/simple;
	bh=0b1NKSK7pNj6LzLJ7QMM2idNw2qBvycAG/La5duGXq4=;
	h=To:Subject:From:Message-Id:Date; b=ZzMbrCw5zLXrrQXPulcKGvAs9UK/TbPt7TwEKaLuWshK7kUTsLKScd1VECxRKX/XXhabpyM5+H7KK0YjK8gQqTMPWHCc1uFufg27fcRQANl0YIUJD1hWpFPm0hObPnmpDR4fUfP+YphhWKoXMIyvp0clDSwMNei2FKJKuSQ4Jj4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ByLdez+P; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ByLdez+P"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C4D84C4CEC7
	for <ddprobe@lists.linux.dev>; Wed, 23 Oct 2024 04:55:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1729659353;
	bh=0b1NKSK7pNj6LzLJ7QMM2idNw2qBvycAG/La5duGXq4=;
	h=To:Subject:From:Date:From;
	b=ByLdez+PjxQ3fb693IEVXkKgXzf+lIK4UQilZQkMMhTXBPKrAdFIjo1XM1gNl9T9q
	 zpcuDLlZ6p7Nfnt9Ffo+gYZ4beYsUHLMgCe6WBEUt7/HaVCxrJVAS7ezmuSg4hvUNo
	 IRV2x+WLQcY7egOtN7Fa5yxaKIF809WT6Jy2uhzBWUbkbtFMX+uR6c6IpQ9vt/1gkC
	 xz7GY/R2p55xmrgqm9vNFx6IgnD/CtqxDbM5axY97LygZ6D9eeUl+pFb7egAPpCivz
	 h2qw06iFI9k7DevYsrBK+0c02KzWI7CS1Z1ztY6wjOCl/elbVyQWvArHlLI8g9EuNU
	 CgTDqJ0qSNsJg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B334BD2E014
	for <ddprobe@lists.linux.dev>; Wed, 23 Oct 2024 04:55:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172965935370.12731.18079510862594170570.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: b112d78e2fd59e7f5ff0166a93b37ee3c0b6f5a603181df0bf94d51e093a0192
Date: Wed, 23 Oct 2024 04:55:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1729659353
