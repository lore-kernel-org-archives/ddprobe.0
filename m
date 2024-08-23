Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 359371C86FB
	for <ddprobe@lists.linux.dev>; Fri, 23 Aug 2024 23:55:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1724457354; cv=none; b=DJQPiNG2Upk9bwEty0DwhEZK8B9IjIwzrCjNmCcSidcF9wQgmaGidhPOd7b7wbnJ3xurTs6tgpuLS9JWipRG/2DsKFXTT45EwcFZN5u/7VhYlClw/QKTrss+nM/1YzA+IPTYJq6zpOJGc8aX4FPASQTS3qRGE+eDnnA0/T3/1pY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1724457354; c=relaxed/simple;
	bh=kQa5DSTtJKsBLxv4TVm4/KEslI8LLmU3VQZlgfqbIFU=;
	h=To:Subject:From:Message-Id:Date; b=lrS3cRMhMwvCRBOP/TBstuIszkmDJLw8m12AM6x8WsTgZnOMn312ZXrxwFINCR/pNCyj0eOJvk6xZn984b7TVc14MIClGjBm33DYjjGWVZWymkZusw3lmwhVeIZd32/OGVlRsMyqbTKDtMc5F2JC/L0y8jPAawlGFR3S2WasfIE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=r35OFPB9; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="r35OFPB9"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B0BB7C32786
	for <ddprobe@lists.linux.dev>; Fri, 23 Aug 2024 23:55:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1724457353;
	bh=kQa5DSTtJKsBLxv4TVm4/KEslI8LLmU3VQZlgfqbIFU=;
	h=To:Subject:From:Date:From;
	b=r35OFPB9QfihZLRlDDmpibais7GEkTqoaQnQRTfzIa6W+5R7wyAObgWC3MZEd9ODS
	 nyhbqVow99VTluJ0pgrDlsyJ0ogaPMdokng/CcYL6NIz+ZZuPewf5Isu3x89qGFr56
	 9glRo2lq9K4U05LCBVgWcU6AEXrG+YTcb6nBCwSUws3XxRQ/u1xHdf5tGuF28B4hka
	 5oAuIb6SNti3TZgr2rjI8r29Jmqe5dB6v51OdREepdb9TvEw1GywgK8k9P4dVBCbLY
	 /GhPXgWRcho6wOELw6Hb7y4ZSWyyv/U4ZYlZua8cpjOMiVgz4dpyM7uSeYhv4HjUes
	 TAJbXbXTNNZ1g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9AF41C5321D
	for <ddprobe@lists.linux.dev>; Fri, 23 Aug 2024 23:55:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172445735360.20195.15674151627530893637.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 5100daaeb7e1b32268804fbee07db22281fc960e368fe032b7631275317f97b6
Date: Fri, 23 Aug 2024 23:55:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1724457353
