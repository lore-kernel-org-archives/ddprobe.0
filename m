Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2A0DB22259A
	for <ddprobe@lists.linux.dev>; Sat, 17 Jan 2026 22:43:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1768689834; cv=none; b=TbpRcY0HCaR76PMKiAS2kBGXh+y6dIh/nF8FcwuntdMa1mujt6LnW100Df2PTYsIucn0RSKIDMcfTTuk8cWO9BkSg8+wDyTK3fppnIR7k2tW0lHyCBGNF09FncbqGqylAKqlSvakjVn/19LAyuXBAoOecMip0P0vheRf5YJM5+c=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1768689834; c=relaxed/simple;
	bh=+4a60sxmSfmsBTlX8rE/WjXNCT9rBmXiOSdlPIWou94=;
	h=To:Subject:From:Message-Id:Date; b=f2LXUBWCn3aUBZDwugwxXcDes2l7uvVrYl+cDBIUZICuVAlWcWPjXnEiLd8s4zxUPWBlJ2HTpr26sYo7tEHucCiNtjUiDcmMFOjwQFWFJdOmyxN7OQmT9i0OtaiKq+TZoXCwl9/t6Wdvxkknm52jTsDB0jsqto+6ylfitWF1PLE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=SCodOSG+; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="SCodOSG+"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A796CC4CEF7
	for <ddprobe@lists.linux.dev>; Sat, 17 Jan 2026 22:43:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1768689833;
	bh=+4a60sxmSfmsBTlX8rE/WjXNCT9rBmXiOSdlPIWou94=;
	h=To:Subject:From:Date:From;
	b=SCodOSG+u2TY9oHJxCG8yymP4JDbCfRxH6Cb19aBx4OpVwoBdVVUZ8aHSyJxNzGcG
	 ihR+PeWV0TXIXTGLxLLDsQObnx7/AO7+SGz/uSDI+L3+4aR6zCiZ6glYAclvWEVv+Z
	 XYGW4oR6z0Gz5zb7GAGzl7M/fJXHxA+b97dwEeH/umSmioci3r7UbYCoat7jnJcMbs
	 R+L1/r6TNYmpoE5h5rn64lOs7v2kBeD5mwqN1XHu2koDPgliBXDfic1RKWhivW3bhz
	 GJq3czryA97pjcdp8c5SrzYAWZkyQfIewRf6bUuxxYRPStQMaauVb4k84VNysu916I
	 nRczXHA6yoZ2g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 94350CA5FE6
	for <ddprobe@lists.linux.dev>; Sat, 17 Jan 2026 22:43:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176868983358.5362.2338327640493412171.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: dc83deb4c4b167a4f7b46e547c1a3e02718e210118d821a9bdecb2c9ca74c1cb
Date: Sat, 17 Jan 2026 22:43:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1768689833
