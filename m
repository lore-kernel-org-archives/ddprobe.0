Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 41C725579F
	for <ddprobe@lists.linux.dev>; Mon, 26 Aug 2024 07:05:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1724655954; cv=none; b=kiHeUE/Z4y6Zm63GVvo8zJtBFDrWfGebU2NEt4+7WqwPjKLb9mR0H/RDytK+LNr6eflkAPC+ihdpHtQna0/1vDdBWD83rXLGmBWuZmpMKfszz+JH3Mnx33Dm5z65gIzy8AKERYiUKiBwXiMES9vj5TInv8yaY66+sIKBsvhF5Ks=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1724655954; c=relaxed/simple;
	bh=hxLLEAIoKFdhbT2UojNB79rpnbbBz4UMcvJJ1XPe/vk=;
	h=To:Subject:From:Message-Id:Date; b=cowy/ZhfQvdv+bSiQiSwZxY3Skw8JqkQO6TOppOAX6PdEF+foQ/+fJzsr9pkl1J6GISTCD8kYPsQsTWi5WM2umbp7zluln+1RXiQiYeQMKA0+rKP3nwAOxiUUlqZV840Vp5F1q4JZtXxrAboSho1HFV7791va8zei5MUah+q/i0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Iulc121A; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Iulc121A"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AB513C4CC3B
	for <ddprobe@lists.linux.dev>; Mon, 26 Aug 2024 07:05:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1724655953;
	bh=hxLLEAIoKFdhbT2UojNB79rpnbbBz4UMcvJJ1XPe/vk=;
	h=To:Subject:From:Date:From;
	b=Iulc121A1AFAmoVPkKPz3k4orL4az42JJY5ojq1LiitOHhQ9Z9+qsRqip+kLnU+dm
	 32zMetPahXa6fxahxNhavdGvS9xrnZEAS18NM1tIWez857c2bWkV9JHsihKU1T3QJk
	 1ss64vkYx0rILGlThB8CgGwwVTwNO9X4sBhwDBCySEjmlV5uy9BBArH1WHhfwwzZxS
	 I8tF8J5Hg2+STkv96jHGa3k8ZdvmEm7eT889jtOsoGlJkvk82zc9q+4cLTmi/ZDMBk
	 9cTJ072p2Tr4A5KJq3X/sFJBfn+Z7taS0EN7qPfc+OSOmZnMddrjMaSD5tj9mt+n4g
	 w9UFJNdcdVyIQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 97129C5321E
	for <ddprobe@lists.linux.dev>; Mon, 26 Aug 2024 07:05:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172465595360.12833.8541459608212655248.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: c09549d42c58d945d71bbf4ad3cdd4f6d81bb8ef133df6c61d5df713ef50deaa
Date: Mon, 26 Aug 2024 07:05:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1724655953
