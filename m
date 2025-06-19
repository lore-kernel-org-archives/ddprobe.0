Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 19DF3239E96
	for <ddprobe@lists.linux.dev>; Thu, 19 Jun 2025 08:49:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1750322995; cv=none; b=HDYk1WUe0M/ZwyX/iBfbhJGqW2oWHkiuRYC7kvqcvN2SonxtHTyNxhSy5sGOBLamBNl4YkakJpUXo3x3K62SXtjLcBUc0RbcZ+/7ybO/szKv/K50EePMewYB1dTPITxSfFvc3QGqYfoMhnVyyIPqhT9isKsYRHBiK+BEMEnmsiQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1750322995; c=relaxed/simple;
	bh=j1HGLDlOHQ8HFqxRYebzYmNkMMIocs5Vvie7E48i1tM=;
	h=To:Subject:From:Message-Id:Date; b=Qs8Dh3VawCdF1G9NKIABD/VX3ZKdroOHdHIQz8VpgbBejVmGDQ4NKLJyyJQA25OJiOJdolAQVEwcxlvTmwp6L+caCdzWlnmDhTD298fKReywkBX+AJvw7oXBVRqZUYK17fBDl9pWi93deqvnSyTCTMW5lfs2bFQHqkwZbLNuBrI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=hgRKe53o; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="hgRKe53o"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A257DC4CEEA
	for <ddprobe@lists.linux.dev>; Thu, 19 Jun 2025 08:49:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1750322993;
	bh=j1HGLDlOHQ8HFqxRYebzYmNkMMIocs5Vvie7E48i1tM=;
	h=To:Subject:From:Date:From;
	b=hgRKe53oWegXsQYuCwlTVZLU9IwWNisWlGtLp8iGEHyTtIclOXCbKXfT6I3GtNyOy
	 npitW5DNwL3lB8/q+YOzEZoed8DCqXd9hmvPZSJKPfjvGooshLNGdSNsHbZcBI+hYu
	 fh2q07CivAAAw1VLTeNkPcWhWpvyK/w98TX1hXb/LM9I1EoCSSij1h2ir0pdQAEVpi
	 2XPs0nRP6MJr2M+kfUNaePMCV++lAfdbS4wO+tK3+cxszkWswGk0nG8UUNvZVbhklZ
	 +cH1tRC7kK2sarMEmy0SFssIAwvi8anUgqbCpOLU+sI07fe1R7jr6QNJ4/3cHJaDmq
	 98C7BcvRIwtQg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8FA25C7115E
	for <ddprobe@lists.linux.dev>; Thu, 19 Jun 2025 08:49:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175032299358.25392.12136846743351121973.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 1be8816f5aa5206405e637455be5abc1feeaefb5c6a5894ce4711737a4a91176
Date: Thu, 19 Jun 2025 08:49:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1750322993
