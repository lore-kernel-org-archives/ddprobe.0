Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 41086253F25
	for <ddprobe@lists.linux.dev>; Tue, 15 Apr 2025 20:39:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1744749594; cv=none; b=QJy/gCUr5VMpwKhWEevtWEemnISfLOmJOQ5WXL/OTMLpAEuOqwC7AimsRvibG1S4VKYOXHHJzO6uyLD4kYxwi1PTZIQMvYb8QRU/l7BaRlf5AdoVLB7PDTV0DWIlyCrqeHPVyVtS+kPV5/suO4KvEbHsgaVoCsrkw6iZFsYEI/c=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1744749594; c=relaxed/simple;
	bh=Hzfq9LtpSVlYzLQJs9bzjRkV43Intk8NPmeNnRknTic=;
	h=To:Subject:From:Message-Id:Date; b=uzDaFrC7tXv+sF0pZ45b+P9HE/Oevr3lsxNygCtAlmWuhwXhWLd4QGd56tpkOQA2v8BPZ2Bv4YjcruSVyTIBOpvZKVhQpdBE0mgDxgxR21r+w114n9hUtd+NIOaLdmaKsAfdry9KdcRz+DIP0vM2MROLZiUibFJoNInNEkSvLBY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Z08PNC0c; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Z08PNC0c"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B0001C4CEE7
	for <ddprobe@lists.linux.dev>; Tue, 15 Apr 2025 20:39:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1744749593;
	bh=Hzfq9LtpSVlYzLQJs9bzjRkV43Intk8NPmeNnRknTic=;
	h=To:Subject:From:Date:From;
	b=Z08PNC0cHM/js+DzMw6j6fzr/lDmDW1GbaecosO/6kWuYswUxL6N8Zycr/4oU0vx/
	 qIIEwqgKSYHYsoRBVxMwkHrplXdjZI8HnTXoIxBIV5wKcGSvEtVtq+LdUhcEXSUQo/
	 KxU2ixY6pw+IhfGBZwWBbGaSS1RnKMukcFIhral/fn1BDHRzASDVkPAjc3EJZ+y9d0
	 Lxv6GqGmOv+ESSUPtZkzUihR5dAsgscKxrkIg4OzrXdH65Vak9oBxSIxP0SZZ7Sli0
	 5d56Q0Mca8NaUApQG6fzd/WXKedQ2NOYQCgRn0EBqGVVoBxl00JIhwczCBuIo33lSy
	 coK4tY1UTJlEw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9D6E4C369AB
	for <ddprobe@lists.linux.dev>; Tue, 15 Apr 2025 20:39:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174474959363.9537.3471849701648747507.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 0046bce16f9cf9e9901c98dfe22b7e7fcb3ca1b757b4a2c0361486abbd8948e7
Date: Tue, 15 Apr 2025 20:39:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1744749593
