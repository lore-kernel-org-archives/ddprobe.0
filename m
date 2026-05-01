Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5C7A92248A0
	for <ddprobe@lists.linux.dev>; Fri,  1 May 2026 02:57:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1777604254; cv=none; b=icNNSaD71Xy4oUeGKud74i13RkomsfIC2pAUKEVzx+p17dv6zBwfyJKUU5eeAu1jIMH7oCk3Xir6K6vfv7TSX5zCbAaM9RQX9/DddW/DT49hlWd1yqUAz6O59l4d6F4eNKSruIvRQu2GlX4P1HCS/v7LtcPeJzcrSQmAWn7KXnQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1777604254; c=relaxed/simple;
	bh=jHlWWkL/9lBGDQNADNbKTFUxCVzulkekk1yzfQ+FnT8=;
	h=To:Subject:From:Message-Id:Date; b=CmF17n+0lRfAPt3fMsfvK1hm7HAXYvjOW8NunaZcMcAgt0z+cMPR19S+a27XkQd41aBnNkGCELZQBnTReomOqkTZut+v/SpJFw08bwVhPSvYGUnOQTF1s/6JrCgNuFwSgYlbRB82WiC/Ft2A8mgmdg8Z7HBRmS1E8HEmMALOr64=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=VjxZ0jc2; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="VjxZ0jc2"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B8FCEC2BCB3
	for <ddprobe@lists.linux.dev>; Fri,  1 May 2026 02:57:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1777604253;
	bh=jHlWWkL/9lBGDQNADNbKTFUxCVzulkekk1yzfQ+FnT8=;
	h=To:Subject:From:Date:From;
	b=VjxZ0jc2nbFfZsU7XyV/UK0EXaU/vLvHmXeYeuLxb2BUh1f21hrvvBeyLG9YNnNEM
	 RuBWxS2uEgn/MX2IFEWzm7CnCkxKs1ogVIRTWAnQK+cYPTLxSTnzMiMDbPnFtXdBMO
	 UvT/mLrpishUnkcjc2jlPOQDlz6T13ezUMg83Zh/Ly7WbbuFuHQVfkAUxAWZaZgD0k
	 P6ya+qKgkUlPGzM/X1mqUCungZhj5TV2Am8LvjNiy3hfBIw6JixdfjJH5frOrozeM9
	 xcBVeg2FEbdsZVe/NJDJ2r+DPok+b9VxdUML7f4qhdGm5Mg1xiZ7+T7WeG7FzgPZmi
	 ScaYjLL1x7xLg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AA023FF886F
	for <ddprobe@lists.linux.dev>; Fri,  1 May 2026 02:57:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177760425368.26132.1203823295923956676.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: ce20894671604f7c1ce52998052e83df3136abeda777f6cbfe7338e6a0e7bbde
Date: Fri, 01 May 2026 02:57:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1777604253
