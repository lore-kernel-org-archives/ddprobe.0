Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1DA5418BB8B
	for <ddprobe@lists.linux.dev>; Wed, 25 Sep 2024 14:25:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1727274354; cv=none; b=bWXHk6kd0Cou7N/Bk5negdwWD3wMaRm50wPZQP9lLviuXuo+QmZoeCkzoLwu3LOVNegSRBV0HqcG6hidx/+WXfba1PHImvYwzQuXQk0UrksbYVBXyjOZxk2/bCsllzsox/eClQh+5BV41nVbGGutRvD9w7uo9HxEhT/LE20c+jE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1727274354; c=relaxed/simple;
	bh=W/+yVjzdoqaOE85ZdVqZHjgLFBec65Az6uE+D+TLw1o=;
	h=To:Subject:From:Message-Id:Date; b=l8338Ot4e35K9VajmPlY6TLIWUVUvQAwAVjH0bkYestBP5gHvU0fictBgLZ6RG4t6bzoHaoBULrwWzUM1WAmnQD8k0GV5k0hbc+A5XI1Hr+o5NvkZYgTofS3Aijl0T+zX5XaJiV9NK4LDY7HxPxws1+oMVUMY+XJE52tEpFk1FU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=VCNFcI/w; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="VCNFcI/w"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A9D86C4CEC3
	for <ddprobe@lists.linux.dev>; Wed, 25 Sep 2024 14:25:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1727274353;
	bh=W/+yVjzdoqaOE85ZdVqZHjgLFBec65Az6uE+D+TLw1o=;
	h=To:Subject:From:Date:From;
	b=VCNFcI/wWbAZaQSyEfR5mJ38gqRMtJ5dlzTV0+Cgil9oYGUFxkZK6hckEDEFUcotd
	 ipcqF/WGSUnlM8yCmC3bC/WXUwcR03sTR0W5r46v6hzFsQ6xMzUltfMeiF5AqLi67V
	 sICZB7Wg2lUHOSBETvcItovlWG5zyaqNvBEiE+Pt+8OAUKi23sWNn65JSS013d+ye2
	 TGqdQbkuwRMvIk3CysasXSVnqshkaiBusqJ7ILirZRv7HBo8fdHt04hw8uB/xpZkrQ
	 goE9AW9SMxkVm0AgXpwu4vL2IuBNqny5xq+ZMXMUf8pww/Fiyn2O7lIKUvGioRYPYs
	 Yxr3ZoEW/Xzbw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 960F3CF9C71
	for <ddprobe@lists.linux.dev>; Wed, 25 Sep 2024 14:25:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172727435360.31414.5447014633610869691.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: cc057b16ea730d050a7c758ea3c69cc9a0b9aff2734d90adeaf4272c0aec776c
Date: Wed, 25 Sep 2024 14:25:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1727274353
