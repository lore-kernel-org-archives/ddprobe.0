Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2FC4522E406
	for <ddprobe@lists.linux.dev>; Fri, 25 Jul 2025 09:49:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1753436994; cv=none; b=CCmpJIt6UzXE9ltsEx/DvDfgvXCRFTUw/GVUqxRjVUBwbcRDm7q/Sjp6oCndVxJKKISrlDuImG6nasTZUxdFpZtW/sasrrhLBZU+B+xJhNLHQnrLwTxaAhAasC8q196mKvyQaDcjEIsApGfxY/mjNmfETEldAswGrgJVIQw2OeY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1753436994; c=relaxed/simple;
	bh=8ksG+ay0IZsN+VaThkVd2NE/9EdFP4XczZhj2tYbX68=;
	h=To:Subject:From:Message-Id:Date; b=KCzex9ZFb97+Xw72k7L78vSKneDxlTSSfRQJm05DXlzEPACetkExlZSTZFV0OMlJ1N7kXSkEgHnRFB95zxgFT3tAP6PjeZWQ9YIKnjAuE3DzE1XOsTzFGSAKaewZuYgKyiLRTZiQxBXYMSLywS7jTFLz980PhYcg/ZJJhitEgtU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=KqYS9Id5; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="KqYS9Id5"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A0354C4CEE7
	for <ddprobe@lists.linux.dev>; Fri, 25 Jul 2025 09:49:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1753436993;
	bh=8ksG+ay0IZsN+VaThkVd2NE/9EdFP4XczZhj2tYbX68=;
	h=To:Subject:From:Date:From;
	b=KqYS9Id5TkvhpXKl0Rp80MtMcWLHG8G8zBbkZ0Nvc2K4/2wRLYpYikE7xWUuneaD+
	 LflrB1CHJKlVSwexiJ3jljjZGnJR5Itq9mU80OuXc4DxihjvXPI+DZ99nmKjKd7o/e
	 FTmINvGZZ0o3wAN1CCMZbI+cjBYyLwQqArBixxshuuWi/vnYLmBTzk50gkTY8bOKXr
	 RUsxDDxGpXMy2UU/FveOAV/lPpO7p/SVY+slj4H9k3xkoss2EaRVKsOnFKcuXUW5H2
	 b+jaUI8jl2R7517OY2kFb6515eZKyMhoHsQgl72aWbLTfkRdqpZ1ks3mREn++pSHa6
	 /pXyN/jn0gO+w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8E24DC83F26
	for <ddprobe@lists.linux.dev>; Fri, 25 Jul 2025 09:49:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175343699357.19646.9106678085785990516.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: ffc46732b78c44ffe93276de0a95cdd97d0e0b0c1915ce4363870e13bf0aa5a6
Date: Fri, 25 Jul 2025 09:49:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1753436993
