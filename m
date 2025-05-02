Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3976A19D07B
	for <ddprobe@lists.linux.dev>; Fri,  2 May 2025 04:29:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1746160194; cv=none; b=kAhqn4GATdTfdIUvSVCfGy/3pmq9Cl5jaUOyGg8sCmNsb6eiX94z1TkFa174QjXrWtYtNyVzyW1PMHmMWiLsv63QDtf0z3U85DR8HXFRBZ6SUT+CrhNbUL4sIylD7AxmoOOXUyJIhQCEM0INdjdMLciMe2zCbYvrkE4dt3LgQzA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1746160194; c=relaxed/simple;
	bh=vR7Sq4K223x22NbxFZOMQZ2L/QP+GKzHM8jn3oU4XeE=;
	h=To:Subject:From:Message-Id:Date; b=Zx7qyR1pmQUgeEKoHrCWz05FKYyfQw4QCKx0huPw0v5IdzNgN7WqW9WmBbprQup4IhWlpGlNWe584ZDoAQJVMiQCHf3GckBkEULqoBsUI+Uu86sFxdYlXUlTH3/Nvyf/DBNO6whkIoCBqveoJmhp5kU8kZHGQZ/UXP5E4nw2Vwo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ZKMPwJdE; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ZKMPwJdE"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A8C12C4CEE4
	for <ddprobe@lists.linux.dev>; Fri,  2 May 2025 04:29:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1746160193;
	bh=vR7Sq4K223x22NbxFZOMQZ2L/QP+GKzHM8jn3oU4XeE=;
	h=To:Subject:From:Date:From;
	b=ZKMPwJdEOz6qoVhMzvz+e0fAArwwKbIA6K80vrX5wXI5k+G0FC0bZcphOBM9qHPqz
	 QIY8OtBi5NPMoiKsScg6iGA7kbrYkEd5cVEFD95jZOtWu046HVdTgmRWk+cgHkrOSs
	 g415lXfPrZO6QICX4zepwzuCjZfw4biOb7voceeYLocYvWdmMxZD+98a3nT3bGGqzX
	 glARMdTm1i9UE+4l94z/epMPdWdN3/XF2eN+XzFSiZBbEynWNm+xg6BSLBwuX+W9Pr
	 wvMxZTuS92dXLChzDxC5zSpFRowMXZhp+5mmNFqDYpbYaJ5rGceWXowMIVzowy0LXy
	 5pwFSKQVkFwAw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 91FB3C3ABA5
	for <ddprobe@lists.linux.dev>; Fri,  2 May 2025 04:29:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174616019357.29136.17661919005446511540.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: ddb6cf523b0cbda7cd1b31e4318314788debce2d32babb3c28ea5e65b3bd8a61
Date: Fri, 02 May 2025 04:29:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1746160193
