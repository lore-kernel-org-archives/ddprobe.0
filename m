Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 417D23AE6F5
	for <ddprobe@lists.linux.dev>; Sun, 30 Aug 2026 17:50:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1788112234; cv=none; b=JsPlMQwXV7TBhFMf/Go4psqodPCO4pKaQ+PYjDWqhe8v1H9odCkwHZa5Ua/z05kFgXjzrLhDWkAx6g9R3EWKPLrOoJLpG6e5mA772gpxYXMFiptTmwKnOtrlBps/4LeHkJOq7FkYQYNrrGlbIbubNtCXRJj/f9RG6DXdHAdUO+E=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1788112234; c=relaxed/simple;
	bh=iRHrZsYLsfX+vHJYz7gXFu2uW2Vahiw1bJMW5bElbKY=;
	h=To:Subject:From:Message-Id:Date; b=mMAgeJTrTqsc+5fgXSQWPWDiIqFwjbRyxy0SoM5hQ2jKOroIwxxDwQL45+mCtUD97ntLr7Hli7BW2Al/Ed1EqJtUoh6w7w2AooPaMymTXjqEt38FzF6Lu9xadQD3uVmR5wN7Wot/a9KOZMYDNNpxji28vm78tRw2vkTG64WgRM4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=n9sVbEyA; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="n9sVbEyA"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D3C85C2BCC7
	for <ddprobe@lists.linux.dev>; Sun, 30 Aug 2026 17:50:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1788112233;
	bh=iRHrZsYLsfX+vHJYz7gXFu2uW2Vahiw1bJMW5bElbKY=;
	h=To:Subject:From:Date:From;
	b=n9sVbEyApmztIpsYNkwOqjhxh4RKaNJd1QOBCvs11qkG8W82GNO6YP2Z+P4BLV1ZU
	 Wxt2JpulFDD9rXIXG+36fj48MGqpfYioNAm917cb8jApuxSzNgKAuiW2kKlRfFTdjt
	 t//T8l1lumhWXnekcmORyDtWx2eZ9xBQHilC6pEsc4hs6zn2L6d1Buj/GSWPSArp5K
	 Wg628rKKw8x6ZbtpAKfje+VRbvzY0anYBkdWu61vJzb7Tk+I10SAWlqK7e+DSqlFOz
	 ZNbYAqF1rAD9Fnh1WeWbfqdlG1LgPWe0YOfMi0t9ezrPXQvz2NfNitSGYnU7eBPSiQ
	 sceL5iDHDZzpw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B10DFC61DE1
	for <ddprobe@lists.linux.dev>; Sun, 30 Aug 2026 17:50:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178811223369.5159.9728669741274855594.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: bdb117140fd6aada6d33ec3b50a199b73fdf28096caaa91e5e8a14f52e45098c
Date: Sun, 30 Aug 2026 17:50:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1788112233
