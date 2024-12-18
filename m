Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 404CC19995D
	for <ddprobe@lists.linux.dev>; Wed, 18 Dec 2024 13:15:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1734527754; cv=none; b=kFY+Ix4JGGkNrmLWqxPvLRHRlDF3I2CBqAoURxCtCWoqUq1NppRsdfrVAlVFn3Br0NB57jsk4CWiMNZOBTdnJ15r3DLqM699QkTbYtXyL3STpNRdksJKsu0sAx4NWYjOaxRt8ZOCYD6mSl53ADlgMBcNESOk8vzBu+axnwu8I0Q=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1734527754; c=relaxed/simple;
	bh=qnveV/mmlPZu130YRhJtWIF/GAr8Yg2dzrwI6tWoHxc=;
	h=To:Subject:From:Message-Id:Date; b=TSep4cmLB+X3crquc8z95lGX7gffT020wMVXWolxhZPmM6MffQRH5RUoHJ0Wj97pxvIalxL7KgCa4Jr/0OiNFM4YU0Yr5wICxggufcx2A21lQXGqDOg3iyN63DzpjUMefJrjCoBRsxlxgszjSWHj4UoY7kwr84P0FMBRFrSfu6I=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Z3rOnngv; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Z3rOnngv"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AEA9BC4CECE
	for <ddprobe@lists.linux.dev>; Wed, 18 Dec 2024 13:15:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1734527753;
	bh=qnveV/mmlPZu130YRhJtWIF/GAr8Yg2dzrwI6tWoHxc=;
	h=To:Subject:From:Date:From;
	b=Z3rOnngvud2FH1QAjnZ+nd62ie7BmJ/rNALCa/NkOGhHE/guVUuBF64JH3j85wkTG
	 JwktmjeP/734v2sCHIPT9mHxtsVHIYnBBQt4fzEkl/wYu/GpSysky8OvinlHlarlw4
	 8m5fWFWlW/ctDCO++tyH08kuScTAhcugeoAnoidT4rZga3JSznWCXoIAxpiuX5ajvG
	 hKv+9ID6IHYmeN268RKiTZzl1HPB9P8fWk/FFoMh5rZmw88Cc8n+V/rVvtr5E5I3eD
	 abpTclUe8ccUtva8kYW16rV4dOTUub89+G57FQNX/U9UvXl48TZuKqN1ZBDteN5jLM
	 msYAJpE3EBJzQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 961D4E77187
	for <ddprobe@lists.linux.dev>; Wed, 18 Dec 2024 13:15:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173452775358.13187.7913663621848778017.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: c25cf07e721e09f9d50dd70594ba109f04d6d2d756d72a058536a0c337ef8237
Date: Wed, 18 Dec 2024 13:15:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1734527753
