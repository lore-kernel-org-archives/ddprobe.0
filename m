Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 347CA53E23
	for <ddprobe@lists.linux.dev>; Mon, 13 Jan 2025 02:25:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1736735154; cv=none; b=lEMNd1g6R0i/tSdYIsD2H8uYWtyDekpXq+9o6CKDV/EeYoROMaPvKN8yIh82CTDmPVkL9bXWbIqmx5Yproqw498gGB1zcy4alvu3IDptyWRpyRlg0nopuKxufr3QwVWaBGafrCPGAQPLdPUI7G17gxs4x7j4CoUUfzn4e9IoJnU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1736735154; c=relaxed/simple;
	bh=l3JRZs+QHdoOcEJa1UBJ93XQkyqwF1DUqblJqFZY7MY=;
	h=To:Subject:From:Message-Id:Date; b=Kys6tV53N8UOMcYFlRqt8VGquM5dutDXpEcx7ilYomJow8Ow6Cl2JcTQStePOpSFgKXv4K6SYKpVJP7frqhsaYfyv2LrDJkkwtQL7K89SXBjSPYsSQHz3NALy7Kt04OTId0y5GmR4+NA8HyOiMII4JlvVuqRcbRUHVWZZdOF47I=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=coU/rFSo; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="coU/rFSo"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B6C25C4CEDF
	for <ddprobe@lists.linux.dev>; Mon, 13 Jan 2025 02:25:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1736735153;
	bh=l3JRZs+QHdoOcEJa1UBJ93XQkyqwF1DUqblJqFZY7MY=;
	h=To:Subject:From:Date:From;
	b=coU/rFSo/NpSLi2h4mwK7os4p8WmPJ8gfQ5n8cVvEEDMpzE+UTkpfzVwVMOm4yq59
	 aSbTFij/HYxsg5QEg2BAEHhu58uiubZjxv4PYiGb6CUjrPt31GM4I/odKRcxx6G0ty
	 hA2Ic0mJVaQGb0tMmNHfdDnrUUZ9+QZpBlWV4vnlc/cHuAa9oFBN+gY9meDcAOrdW/
	 MZXmX7h2CBTTClw3qmN9tmHbzyELvzJ1fPbWHqtYIth0CtkkFfTcvHf/fW7kcOWYwo
	 T+6thCz6M3i+pOXhOCBYI3MsSsqrFz8KLyoLkF3IZnLZhKX7sAZgtVORjIRbX8hCI8
	 gEKtmFU8poQSA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9F76FE77188
	for <ddprobe@lists.linux.dev>; Mon, 13 Jan 2025 02:25:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173673515362.18250.10724216369298493330.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 226917ace67168bbda2ecf6d1e1b19563048f3bfeb7adcf39c29dc7b5a380f69
Date: Mon, 13 Jan 2025 02:25:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1736735153
