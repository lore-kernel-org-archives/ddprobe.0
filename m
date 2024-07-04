Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 59C39146A99
	for <ddprobe@lists.linux.dev>; Thu,  4 Jul 2024 09:55:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1720086923; cv=none; b=pS5s6Ao4yz9lXixfzdKVG02GUzgijXSX7PnYeKDmKa06LQHyDb5U8OjrKkAmuxNpc5ArLoUAcWIutAWd+RcRa5eL0lXXmcj2zUg9RvbVhpSdOt0yY7K7TDSdl+qT360pC6qiN2UCj0RJycZPpQ7CNdaqb8WEc9cF2EUdVGRS9jo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1720086923; c=relaxed/simple;
	bh=e+HUSpBj5UdBdph/6d9tzpx7BBxstoSRoQ0AWdBwNUc=;
	h=To:Subject:From:Message-Id:Date; b=dtNn7xyAyGK6Q3i4oUoWyGQYID5teIelYl7URPyUg5hQTNGZKUwRJfkpOKqmMhvkmsZqyyzjVvikMwVQ8cpl1PcoVKu4zrQ5Wve/ks8742Wax8We3t2ro73iV/khZ8SXuYZGbo3GcuMeGOXZjSOdkmj29f8mHai8e/A6GP8a8E4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=IC151d5K; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="IC151d5K"
Received: by smtp.kernel.org (Postfix) with ESMTPS id DC00BC3277B
	for <ddprobe@lists.linux.dev>; Thu,  4 Jul 2024 09:55:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1720086922;
	bh=e+HUSpBj5UdBdph/6d9tzpx7BBxstoSRoQ0AWdBwNUc=;
	h=To:Subject:From:Date:From;
	b=IC151d5KPuUvpj2UJ8k/3kTKyilGyUyE2BaQSykaLZGuDciWzp/aYC0XvS/oLqtQO
	 eFU7HR9OjPz1xB19nLSKvWH820hMYUoNycN2aEIr0pBnTdB5nYmmHEcnotvZTkD1mo
	 4BKCeYMrbLuZr6jZ0gJFrmlNFkSxIVmobnRleP8BPSUuaIAs+IDp2GoFg2J2AGXMJ4
	 lwWF3BE7fvcwqjk2pyRIVrS9lP5lyh26Su9ewID7YWJ8gCjAwrlz1Vs0juER63AKfz
	 CXBoUsRX+ROrpnuQ3I3OUkX1qp9qGEigKPkpjRdLPXiHy+P/nwAfv4HbGeRcU0UTND
	 qp56LT0WJawkw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C7E76C30653
	for <ddprobe@lists.linux.dev>; Thu,  4 Jul 2024 09:55:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172008692280.5768.6822318209367756281.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 9222e56f76f43ff5e6adf80f7effef7f8dd3729077863c87b035456904f76ec7
Date: Thu, 04 Jul 2024 09:55:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1720086922
