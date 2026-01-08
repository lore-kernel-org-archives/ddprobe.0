Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1EC9A2FFDE2
	for <ddprobe@lists.linux.dev>; Thu,  8 Jan 2026 06:53:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1767855234; cv=none; b=FHJ3HSgWOTZPDYD1ytlfVP/pSOGTO3YvlvrXN1FAVgFRz886kGyApMcvabatmg/GTQxL/5SOvvNkt5ZtC9cCD4hGZcGnJfQrxx9cAupKJOcRD1+RB2U7A4+BmNXn+OGeASUtBaj2LuBecgD95882KMhzjjDtaeJTTa4PWvQ58RM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1767855234; c=relaxed/simple;
	bh=Inv/6i+P+Zxbt3LCUI1f0Ey1NhYMIsvbfUy/CIIJggw=;
	h=To:Subject:From:Message-Id:Date; b=eQ836ntQtgvfus3lQ07P5wU7sCyfFliCB2yyIc7XXufn31G9RJxP4ah58CbVoBZMOR/jqizKEHelhwD2/VG2Al9RIOCCpUutehLxEmeCLH6B3ShWwq2LJ8Nw0sr8CRHVYs0kIp7XdtGvyzYKuPkWmNbFI5ESXLAMzVjYuUa2ffw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ffZBb29N; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ffZBb29N"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A4C25C116C6
	for <ddprobe@lists.linux.dev>; Thu,  8 Jan 2026 06:53:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1767855233;
	bh=Inv/6i+P+Zxbt3LCUI1f0Ey1NhYMIsvbfUy/CIIJggw=;
	h=To:Subject:From:Date:From;
	b=ffZBb29NFeLiUMbyBjVJU0uBT4OkMPVN2khbeuGJnWvk/z7UOlbEiB+Un4qXQjjKT
	 TG/QBfm3DB15HMjdlc3DtPXlvbbztzhytQsFseDtA7rcHigCXg6MBEEQOXerfZlNAl
	 NOuA8hmfwXN8RfYNLVO+pq+H5BEy6JZAKLHna8BaRAdcITbNviZnPkdwOS8ojVk6LG
	 U8hUK7oQ6OWgVeX1BiaxPK3a5qDxAtubnfvaDRjQ5TOxAk6TkCTS+hZH6a6dm13ofR
	 6C6S39Xrp0EksJqF4ztZJAOYt06rNV4EFKc9oGkUXYhmTd6WUyOqiSwlDrPJxGx1cK
	 gse/6uhQ2dExg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 94491D148AF
	for <ddprobe@lists.linux.dev>; Thu,  8 Jan 2026 06:53:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176785523359.24343.6999721640523507249.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 3eb4a3920d98bbdb3b1f594f270c33a6dd12e17920992b996387e8810b31cccb
Date: Thu, 08 Jan 2026 06:53:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1767855233
