Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3633333A9DD
	for <ddprobe@lists.linux.dev>; Wed, 25 Mar 2026 19:14:54 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1774466094; cv=none; b=T/gbTdYCVkXDmGfHbl3Q0IQXff22DfryZA6spbUCY/TNkIHc8Pk0qsxv3MUF2flAr4gaVMEl+WfNgqAw5CkY/G0gchUK3ODCBXX29e+ivv8E2ConkjzxgL8ElHwS6o5GMgyhbY+/3iNNH1oIl6WCIh4xKKDdZvVwSl0NjhwnFQ4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1774466094; c=relaxed/simple;
	bh=hv1kAFeD58IkE9IIoRmNk+Z8vKjjsC4Y2WHmDUCXTsY=;
	h=To:Subject:From:Message-Id:Date; b=EgHtVbJo5Jk83yWUhJ1MtzsaQwebkvNCAvzO/msMe0hzGenp6ckVl+BBVDz/q0FzVM+Fbkp5eQziOgtzWL8U2nExRizBatkfl2h0e4DXCH6LU3K52xneRtvawBeP5eRuj2SC8+7W96J0MY6pk+oc3+DTlYIhAZbnLAvctkyFgDU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=hQhu7HLi; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="hQhu7HLi"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D54C5C4CEF7
	for <ddprobe@lists.linux.dev>; Wed, 25 Mar 2026 19:14:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1774466093;
	bh=hv1kAFeD58IkE9IIoRmNk+Z8vKjjsC4Y2WHmDUCXTsY=;
	h=To:Subject:From:Date:From;
	b=hQhu7HLiU9fSB2GnbEAaX0Gfwgwh6VpSPkCn6BaxKDtvy/cUspU6PReCTEfnGfLa0
	 ynMGb2RQdSfvw+7lGrdTfZ/0RvlzseYbVdhdvJfCKJQ6hRtJrd3vj2dgVwaDj7yGVO
	 /1k3Xpifr8LAwHuaap/51vraNmDa6fljdPZb7LLvEM9F+TUWA7aYis8X/3h+lhcns7
	 d6DEIlR1u0vi2ClmTpilzorAsnagvhTRYLJqIpYmCubeSeYciFh0JCrqZjWO0RtA4M
	 R/nHQftioUW+vXNtTin+XbG6Z/+7/wxDrAHWbYcp1fVg6NDL4rLUOeEQWQcNyPowz6
	 +K1M10CXowgMg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id BF625109C058
	for <ddprobe@lists.linux.dev>; Wed, 25 Mar 2026 19:14:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177446609377.27453.7316291253625340078.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: dd8bec9e66c67d43e943cf9f6e57d201cf767838f040a598e8ba51f59c8e58df
Date: Wed, 25 Mar 2026 19:14:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1774466093
