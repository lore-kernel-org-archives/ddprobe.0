Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2B9B91922DD
	for <ddprobe@lists.linux.dev>; Fri, 18 Jul 2025 03:09:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1752808194; cv=none; b=Oej4CE+KMb80FlVclabBvP0Qfs6JFb9CaTv/RcrbzQ8lRlUV1GxJA5z+pP4OD64OdGRMwQgDdUIE2AShOyfZm+vmJQBTtxhPKwI2bvBvObsOA42aUtXgF6rnp3DqqzgPOcCHmvQa99QfFeXq+ZdnvOlNoDrLF1LMbN+V5piaaYQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1752808194; c=relaxed/simple;
	bh=ksvw5GeBMnZ7bNkakkJ3mbN+fkcVDrVJJSnri+9ER5I=;
	h=To:Subject:From:Message-Id:Date; b=n0QQtTGQS1gi7aJJP9ZO7NFJ1+0qc/TYhd4BZw2Fe6++S/jcUFwWbmgvbe2Z95cQ5D1Yg0vnpymQLK4d49GwrSb9/xOvVNw2fILaSRp9GTtQeLZ+kEmxGgyD0uMX0Zw2Dv0SiIU5AYyMV2dv6OAIeZhwgfcGurAwKfOB2i5TXV4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=EbZEXMZh; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="EbZEXMZh"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A258CC4CEF0
	for <ddprobe@lists.linux.dev>; Fri, 18 Jul 2025 03:09:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1752808193;
	bh=ksvw5GeBMnZ7bNkakkJ3mbN+fkcVDrVJJSnri+9ER5I=;
	h=To:Subject:From:Date:From;
	b=EbZEXMZh0YV0pFPROwThOUKxf73Kto3pGzDfmay9KsPG42apLTJfDeASuCEfIkPjc
	 mSN6wYIPJw97hFp94gOYi2+TbkTBA0iPCq6hfXkLM4uU9kPkU4dM58rXKQohIny+DB
	 1E/x6d/RNq0h36tw4DeA0NSuesJOQchLLtFGeQJRnz/JjQDCrNGcOYT5WNOx4GJxaL
	 Ar6Rm/f03q8rg/HDtn35vd3590+tgfF8px3cjptW8gZfxjr9aY3unBaHjnkoINv/2f
	 FqN8Ik9vwCiRbyaly5ZRajVZMEx1S4T8TjwHjxa0/LVK8ek18DQ9nO6qIgAwAv8lGo
	 7gYLlnuzCfAHw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 932F9C83F22
	for <ddprobe@lists.linux.dev>; Fri, 18 Jul 2025 03:09:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175280819359.3978.8771531900298577135.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 0ec83a7f740a3a09542140348b1d9736483f915d9eeeeb4781e71b7495b2ee96
Date: Fri, 18 Jul 2025 03:09:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1752808193
