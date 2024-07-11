Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5E7242904
	for <ddprobe@lists.linux.dev>; Thu, 11 Jul 2024 11:47:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1720698443; cv=none; b=cxPJePS9PZgxXO+TFylwvmWhn/Hc2g4HxkfajsNZcVUH868rj7gFN6qOUkJw4Q43sNAvaEXvjTnAVcgFt1Qjei878Y/Ojp/Mn5K9YZWlvQ5jqxoVvTUL3w2bdYnmXIwF1el5O0HAB6Eime5Iyrv7JRGjQuKgBU4xgkw5IxChKLE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1720698443; c=relaxed/simple;
	bh=Dzi3QZhfqtkNq4ZFnsPwlZdJQvl/cR61KyrV3rRDvC0=;
	h=To:Subject:From:Message-Id:Date; b=mOdAj+I+Y6G3fT/v9vcVCiZf17Xb21fm6lK0OpUESTwZx7Df8/lwpYRoMo6be1Bs74GhUORAHOilXSsc+3iPF+VDk8t+QgBDZjrBcoUrYSRL2BMvZUidfo55W28wuWKrzVfG31HKcfT5RArVuSNxkpVgOJHRmO7vEuYjaL3jQGc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=vNeislTb; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="vNeislTb"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D7273C32786
	for <ddprobe@lists.linux.dev>; Thu, 11 Jul 2024 11:47:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1720698442;
	bh=Dzi3QZhfqtkNq4ZFnsPwlZdJQvl/cR61KyrV3rRDvC0=;
	h=To:Subject:From:Date:From;
	b=vNeislTbF8eLOcW3pc1E6Lh5DfFzP4w24xlnEzMMzlHvUah32bv/dEZk9LvplQbqe
	 YIlMzAghE+jcaE4keDzDJQUXyIhQ6JlkDW/YCaJ9FX5OrCjWrtHd8ZiQUsz4k2VByj
	 3vVCctqhGlvqHtHUGo0KxrRlE5EG9RqEqIjnesW9ycExPVC27ofpcAsB3bbfjhjDF3
	 qXDHcHfVwMJ6Gfau0luloZAF83KThDAs4bOmdFZzdFCf3XOdvW84eSXnHYosEY9lIl
	 JB/C+ge71B5lJV6TDdtZ2GI3mNSuUhTVYa78alQslIQLCRyxoXfz7WF5h6XfUyZt20
	 CcQNXbC36CUDA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C375CC3DA4A
	for <ddprobe@lists.linux.dev>; Thu, 11 Jul 2024 11:47:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172069844278.8737.12172325800015393264.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 7ebbfb0d755979654a92eb98432a43c3306e7799df8250a738b58914c3fa3119
Date: Thu, 11 Jul 2024 11:47:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1720698442
