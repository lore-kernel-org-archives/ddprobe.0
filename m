Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3B4CE1DE2BB
	for <ddprobe@lists.linux.dev>; Mon, 10 Mar 2025 21:28:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1741642134; cv=none; b=VtS7p9fNt+zSEjNjJ/PuMVcB0zpRhpE8z+pnIw2oRjYLsvRzF9nMq7Cbbymff830IBmrGjzNo8gPdHj1WQmK1chATnE2/T70kUEOqI3PUXcNIsEF1dqYB072gdeqoab4qVEWbpWiOH3oVwrQ/93k21o92JGSqYbTqoaU4YAMB00=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1741642134; c=relaxed/simple;
	bh=WP7vRP+ovD51cekatUnInWtIBfUcUWziTU65I8FbKqo=;
	h=To:Subject:From:Message-Id:Date; b=AQfRp7XXECLypNwYum/wfbQuUPkQIfI3h/GgtVdePCdIHXiqP3ExU3WmlppS3PzRtiClrLH6Tc8bmuRGtsSXoAV2Qa4hhDd0JWMKUK4l+oBILBfcCnNuEmwVGIY2Ygunfq0TAMiXfJqnm91m4jMc6DA7L54k9YvGeNmBSXW43pY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=UD5s2kHf; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="UD5s2kHf"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AB2C4C4CEE5
	for <ddprobe@lists.linux.dev>; Mon, 10 Mar 2025 21:28:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1741642133;
	bh=WP7vRP+ovD51cekatUnInWtIBfUcUWziTU65I8FbKqo=;
	h=To:Subject:From:Date:From;
	b=UD5s2kHfXTemJKxCvW0baP5m1mDNqRKa7FO+IjuC7G7MJSSeQtKhPbqJiOxEI0Is9
	 UqHLBij9nFsuhkbapM7oLTS7xn056BBi++gyg9XhRQgSdyyND8pTW1nggRGzfqnMmn
	 dx4w0MqkB31mUurre1UTJlAlbfE7RII7Z0CdIcpyOnrGb8FetEm3JCih+JgXI7XyNp
	 RDFhboALwwoISFdzLvGoe6QGICMBYrnKH9tlY3nenLdMjP9vwTb58b1orPa+3zVRAH
	 n0QVogr5slTS+/uEawov2iCqnwuAYZAofDft89X/4LW/t4hKgEykLTIDs+f8tnd0zd
	 6oQl1pD7KbA/w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 99A74C282DE
	for <ddprobe@lists.linux.dev>; Mon, 10 Mar 2025 21:28:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174164213361.8876.12581815920461078315.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 8dc147b4a0e5a8d8bb6a2be20e75ca03061134cc1bd85f6c35df4690e2aaf5b7
Date: Mon, 10 Mar 2025 21:28:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1741642133
