Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 10DF12DCC13
	for <ddprobe@lists.linux.dev>; Wed,  3 Sep 2025 22:49:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1756939795; cv=none; b=gvp5ridsReXI/Q6VznBBBoRON7I7elLVsBGb84I/njztASG5tfjxuL0gPr+mtnQbkagOOvp8l82wt0dGdNgaCCmO3j/AckQsPO6/Z+zUDVW8RXF5n2tYpecN/ssCwS53bnXYJAhUBwqFJDuHOIUw23oUPNDiwSHS/3hOIljuRWw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1756939795; c=relaxed/simple;
	bh=npmNU68iagns1oKD/QighWHtAMh6zbna+cN8bSrhemg=;
	h=To:Subject:From:Message-Id:Date; b=jSXm2KaWURg0NWOQoTSkSXDLMEZmbOO7Ya/otrZDnqXjXw8nC7ye/cVJSdL2s4xXvTUVZKPkbAnWpU/H/f+nzhc1khhlheF2Yr7xkOyNXz3LtcWxuKfOLZkQZInWmhlZLo4HhqaFNUwE94vxmaNcIpksSTij8qvMyqxAsCKDoZM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=g7k3kLix; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="g7k3kLix"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A0C85C4CEF4
	for <ddprobe@lists.linux.dev>; Wed,  3 Sep 2025 22:49:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1756939793;
	bh=npmNU68iagns1oKD/QighWHtAMh6zbna+cN8bSrhemg=;
	h=To:Subject:From:Date:From;
	b=g7k3kLixBJRTUVfYZCcqif08C11Bagu/5nTHY+Pst99MQfr4a+NIMcGxIqPoShgxl
	 QLal1Bh4/kdtM1BRISm3vd3xoHoKMBmTCyKL/1uOiV/pSKgOg8U8stULRuLf5hg+Wx
	 eIyw032MbCvi/FuNXVRcy4+Srrubzl2yIj6QAkNRVp/StBv8adH0HPpyq09X7w6yTr
	 6Y6q0EfCB+kLeX2NnIL8czrkU4mePUfpdK0f58vSH300LYP4AnFZZqv/PzuhM2BXcD
	 Ke9pFlQBNvoX23Q2wm9/IgUE7CLPG6xTv7kPzK6GVUXN+qZEH/TL9uYSDDxRHqlGPu
	 L9IeT571ACLQA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8FB13CA1010
	for <ddprobe@lists.linux.dev>; Wed,  3 Sep 2025 22:49:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175693979357.25778.5080394085452800698.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: a2d38ea98f48fea26e539591e3ce6917cffa4a4768bb245d0a337f21b84252f4
Date: Wed, 03 Sep 2025 22:49:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1756939793
