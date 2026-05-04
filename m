Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2FDEE2701CF
	for <ddprobe@lists.linux.dev>; Mon,  4 May 2026 19:57:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1777924654; cv=none; b=WX03LjDOsvR5wWQvs+byN5qqAc02fLrLpLCuw3jHVqdqMNY3c3UGQhz8HMRbO/qXb9PbicOT/IXl534dCPHb2gc9YpLvtxXc7zh/gPFgcEp9aLHWuLYo0zWk3g+8LzjaW6za9M6ltvk9+nek6qVbpnHLfZMQCWHgLgDyYqxHu6w=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1777924654; c=relaxed/simple;
	bh=tQph9C+O5Muu7g4D/FJdYHnVVW2bPnVBNrXuXwqaLDg=;
	h=To:Subject:From:Message-Id:Date; b=IFco8mzSkhVm3aoGwvxVK87XmpDm1wuKGqb1tVtpp4db9HmW43paUxtaQOn7QmZoTZEOLZopm9KwAtUY5Snpj8qfZRY8E75RPgcvR6L/GF0VH6vG2cRnBtqPTkzqC44bwGEgUOOtHgJ9d4SdwJpIO/j4idyN1WC6CYkGs4IND24=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=U8uvycyq; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="U8uvycyq"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B8418C2BCB8
	for <ddprobe@lists.linux.dev>; Mon,  4 May 2026 19:57:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1777924653;
	bh=tQph9C+O5Muu7g4D/FJdYHnVVW2bPnVBNrXuXwqaLDg=;
	h=To:Subject:From:Date:From;
	b=U8uvycyqkwNwfm5PtstQbZ4/bZdXdtyY+BBYN8aIbIWjWcXWkW6JjHigZMwtOpl06
	 y7BuDORFz0HSDgZszcDj1yRnNvnxPlVXZZfPxiVmEzOhTTFcsJq7GZnYyGMq+/R/Jt
	 CbzTgcR8SyEgg6hpahSreF89k5fZOZ52S3EQO6EzlPT5GMTTiVNxCoDgM/Tgi4puBz
	 /Nt1zPFC/HGBBv0hBexuxmj4dwSMAR++GLEL3h+uV1FD7C+Vh2U7nhrrNHfGv4V5fV
	 iWpW7vKpLlQvKXuw38PLAcfTlMkKXdj7uyVAe31Xo+1NsanwIuW2C0eoyuGNMA76yV
	 ORCmnMvKAoU0g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A941CFF885A
	for <ddprobe@lists.linux.dev>; Mon,  4 May 2026 19:57:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177792465368.3580.13860215446701271628.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 0532f4381cb87647e3e88851430af17cceb94f90d5f900a95d3606020127299b
Date: Mon, 04 May 2026 19:57:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1777924653
