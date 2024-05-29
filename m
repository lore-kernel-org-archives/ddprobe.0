Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 67DAB1E888
	for <ddprobe@lists.linux.dev>; Wed, 29 May 2024 09:04:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1716973463; cv=none; b=EaPjBlqxXeGVXAYZ1xyIkO9z31HFEF4Y9POV1VkgrHVhTZI7vX+yUX6mGViTaHjH/KAVx2GPAQMKKPb0JyxZpaBaSPmQQSx1O54U71N6xI3AabmDl+aJaWEkYP/7vtb33UMRh5MPP8KJzMj2bXcbVOUcOoD7CYfgd+PHJbmuIEo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1716973463; c=relaxed/simple;
	bh=W9g/JsR8lW6RYjJty/VLnO61ZJQ8Z3ZIPs7686HgNEI=;
	h=To:Subject:From:Message-Id:Date; b=XvXoOKxrrRdhmOUfwHCOo7Httd+wFxe0PpCWPYUOjxjx5SIvu762QUk44tzFUXHdo2v58ZOktEYzjVOczvan3RYIyMRyMOsO4W5rwPgDdI5sFmtmeImgoNYfv83tH4ugJJgcPv2P2/zE65FlDCH7+iTDbPLbmI9GTT4TDIpQdPE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=AF92aa04; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="AF92aa04"
Received: by smtp.kernel.org (Postfix) with ESMTPS id E1C57C2BD10
	for <ddprobe@lists.linux.dev>; Wed, 29 May 2024 09:04:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1716973462;
	bh=W9g/JsR8lW6RYjJty/VLnO61ZJQ8Z3ZIPs7686HgNEI=;
	h=To:Subject:From:Date:From;
	b=AF92aa04z0GOoC0vZeZ0yuT/gNTN8yE99KpHQPe7ocyl7HbHVN//eMBik8r2RRpJJ
	 +IOOeYrtbzUoN2IM+p+RH6i8fJ3MmJz/KIJCsTQlY66WS8TSKtQ9ClLyQduvw3t+9T
	 IdqMS9zd7e6w/9dGcxSHtDQ1roogH/4oNZnnlFC3ZvCI6QfiIDRfkZhXlyr/kPl9ed
	 aBM9/owjZ0tytrQZzw0vc7LdR3jtSzcFEhmJdtNZzX96gdvSsGkadu/4+5Zqlwsv/o
	 s+Bzvla+oJu6yMWP9eAHpd0rovyDozPnlfvy9EbGk17162Ad1xuPQ3+IzugLOUShR9
	 wbi07NvqtzEFw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C7D23C25B75
	for <ddprobe@lists.linux.dev>; Wed, 29 May 2024 09:04:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171697346280.29697.13263299437872215351.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 4ffc0be20f59f16c108fa131fbcb3b9f6cc9b7dfbef4a53155f84272b4c4cb58
Date: Wed, 29 May 2024 09:04:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1716973462
