Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1C4532629D
	for <ddprobe@lists.linux.dev>; Sat, 15 Nov 2025 00:29:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1763166594; cv=none; b=d3X9U19FBXPuAVDCQSMKeojPEUx/BaGsjqmz9lrZiA3UfO+ENbEpRp76K9U5Pkxp5v/yj3S+Kdlye85B88q4UbLAAIlMqtenvb+YjWCESFONyiBHmwc00kXzTGSYbAGIrLhefpEDzOp6HqKtOWird38++faT7ZTv6v4j1Kk0nxY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1763166594; c=relaxed/simple;
	bh=ymQJ1Yd1dNHosGYDSXRxt5EUGyvHhupr+ND1MhOnwBA=;
	h=To:Subject:From:Message-Id:Date; b=JqT6cxZHCN2obaK5dJvmBL02GLjUydTCshGp/F/WUr4p8hGWJ4cWNZhRyeTWJSSCxxYfLIHr2OVguICHsa0u0Hybnnv434RGb+YKX6QsN1rUxhXas64dpc65W9G3n6qDRuDyNX80yu0FwcMq+AXn6ewq6deTTZ/jF4cxy2FJiCY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=K22Mk672; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="K22Mk672"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9B68BC4CEF5
	for <ddprobe@lists.linux.dev>; Sat, 15 Nov 2025 00:29:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1763166593;
	bh=ymQJ1Yd1dNHosGYDSXRxt5EUGyvHhupr+ND1MhOnwBA=;
	h=To:Subject:From:Date:From;
	b=K22Mk672LVSLGhZGrZ+JpD6gBy2on3GSQFMf1Z+56Q3Yl4HQ8wi3yE7ytCU9/WU1H
	 RwORPlZy5pL+A/vS8QjZnpgZUJW3qxog6D5sbc71+Fyy0YrFamEC878KXUWJseEgKs
	 ARsS51+tm3MUYTcW2RWJR+I9zv2itzxMoxCBDrR23modhNGEb2tjaTnLe7pznDeBVL
	 CSa9xvcLvCgfqeFe0UJCwpYui36Q224JgvOnUO1o8B/fZikrkAL7ZtrIOfFtRkCAOT
	 ARMbuoB0FzNtJsiD+DRQuFH+7iy/0zH6g14lbDoEGq0vkNCJjwIzcTZ8j2fHBxTa1U
	 B+DI3bDhUzJKQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8EE67CE8D6B
	for <ddprobe@lists.linux.dev>; Sat, 15 Nov 2025 00:29:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176316659357.29743.4189371958703221176.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 6cc18c18846da6248e5bbafb60de3b90663eb0d6522e455d676bd5f4ba55fd3d
Date: Sat, 15 Nov 2025 00:29:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1763166593
