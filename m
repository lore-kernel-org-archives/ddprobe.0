Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 31ADB1DF756
	for <ddprobe@lists.linux.dev>; Tue,  8 Oct 2024 14:15:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1728396954; cv=none; b=qw+ffk2LEoo2tebcn6uvFVlxMdfJ4u4OLHzcy0yMYCXJWcZvcgcsMDBm6jCBEDcN9WZDqd6kgjekq/O08tprrkDMLFYXn7sBrsrn1il80yqMsaobV3NdL8MjM6QNy/6QZpvkh3MhPh2/mXuMmgMryCgxy9evfLh/2iN72hw2hTw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1728396954; c=relaxed/simple;
	bh=QrBChOWFU1MkUJZXM2OyuR+fKCoYqjDBJahfAatFEkg=;
	h=To:Subject:From:Message-Id:Date; b=h/b7S129z5QWtc5HiGuh3XgVpOLSWc3xfHzpefkp9y5BERRcwGu6wo49+qsmcYwhvfZ0AFk3HI0QTJsKY66oHWzWG3pgH6GI/K94CCQxTzbPpZYbxi3QfJVlV0DVnGEHmDUbQeLlfA44tGeaUWS9YAg/o/jnJVhO7RHl/ppJ7LY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=cJ8FqfQ8; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="cJ8FqfQ8"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B4230C4CECD
	for <ddprobe@lists.linux.dev>; Tue,  8 Oct 2024 14:15:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1728396953;
	bh=QrBChOWFU1MkUJZXM2OyuR+fKCoYqjDBJahfAatFEkg=;
	h=To:Subject:From:Date:From;
	b=cJ8FqfQ8K/Rad33vMDIw97/U8AP3dtMe1pFvEzHdl4pClQuaEI76LfC5AmLHRf9ji
	 KC9mzxhedwy9zACaOpmiNo4T98ejnr7aDByyOdlwWif0r68YZuelzuUjotdC3uVr88
	 mAcWHRlyF7BZd4SYFFhaUFw3n7bLpeCuWFbWl4KugNX3NDE4ex6rzTgn59foDU85pZ
	 kiHPo7QQqw1JalOqAnb3/poNnaYV7nqdloFKM9sbNZ3XA0Ad8Rw6cLHHbERaz+lCpt
	 7W5Yvy/Q3hUSo7EQCGcnnYxtOJAFodDY+KhDD+DJ79OwkGuJUZYdyVEjFQsX3hSMop
	 R+vXOpAJaOlwg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9B77FCEF17C
	for <ddprobe@lists.linux.dev>; Tue,  8 Oct 2024 14:15:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172839695360.1370.15582098867113524491.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 61ab70dbc8304814be97e6761baf7f4ba82b9599c0ec58340f9156e81961bc04
Date: Tue, 08 Oct 2024 14:15:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1728396953
