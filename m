Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2EF1012CDA5
	for <ddprobe@lists.linux.dev>; Sat, 12 Oct 2024 20:55:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1728766554; cv=none; b=qiu7gY7GZsB3+DpFTwExheM3wKzO2oSfUPVCVK8LHt/EzwoTmBKQRtlrVT5pn6bgsRcDz9r5qOXZ/L65Pp7d6ocRwfq9p07cTbjcN/g5AEQMbM+Ll5cxiYFUo/vmRkrRNnQwWho8Qfj9AhmpV7seXwezDjohzBfxV4tY85fZBcI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1728766554; c=relaxed/simple;
	bh=bhW13LNPVwQgk4nAkvXb76hIfA1Q/2M+srh5tFp8osM=;
	h=To:Subject:From:Message-Id:Date; b=M3hr1siH9tjYP9ZE8nS3ajRNAA/+9iswAn1RkgQw5tqqh+WQxSXBHQyd5+PlMq4u18pq0OBSO9G+kBhrUJ9/ok775ZURZIhJLlZxcvtTGwyrw6xmpMEfW/7TwtlKx5kUhaMyJ+1DN7odGDhgJajjEZUq/GgjusjFq7CrcMcSlb4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=FLN6HAS0; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="FLN6HAS0"
Received: by smtp.kernel.org (Postfix) with ESMTPS id BB92BC4CEC6
	for <ddprobe@lists.linux.dev>; Sat, 12 Oct 2024 20:55:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1728766553;
	bh=bhW13LNPVwQgk4nAkvXb76hIfA1Q/2M+srh5tFp8osM=;
	h=To:Subject:From:Date:From;
	b=FLN6HAS0TtD8N90S2Sv9irpIxY+x6jgTwsRk2SJCs6efVDKhD1PjM6V7EbT/bPjDk
	 5NDWlylFg8gFLdG3VLGZM15qnRwtWLYVKCwbmqTLobWNSV5Z30sAoLqoF3L3oFwSDD
	 7I0EeLPexZMAjeEM+EsTtKYyOOGW7MgMJLeHzyGWlZgRsowSxluZM3+ykArZxvgQru
	 imSV8izYb5QJAfYuwn6PVP4+L4L+QnGKOUhm0z0bd72U3nVD8SJc8Rx4U2EuobdvMi
	 Tk71ITQfLpd6J8kofWNyG0zkDMpfQCEebnt0nj1rUD9fmvjMG+WZZLft+alxKgSUaN
	 otPYGaIBiIuVw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A5C7ECF257E
	for <ddprobe@lists.linux.dev>; Sat, 12 Oct 2024 20:55:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172876655363.26551.11079248557799374590.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 7702b4611cef3e20246a1977494386f276eb2854349de880767f04f7b28e6dbe
Date: Sat, 12 Oct 2024 20:55:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1728766553
