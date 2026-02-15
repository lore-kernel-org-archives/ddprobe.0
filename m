Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2D4AB2288CB
	for <ddprobe@lists.linux.dev>; Sun, 15 Feb 2026 21:54:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1771192494; cv=none; b=PiDeiAkt5yWWsZP7kNDl2f1lOnkD7Z70CgfOeZ0a0GWxPMr/iW6txOsdT7cGj9WLL/4ymQogxloSKSpXWZLViM4EKlu1w87plYuTUP+l2YHyZ+za9sv20xwB+GoHUQvUBN0BH/rVrWpPuNRwCPvLHAZNGF2FOSBjmyOLxL8wl3o=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1771192494; c=relaxed/simple;
	bh=k3RdlWAOn92DKdgoeIwAmPTnaRR8MB3AsOeLsql/1so=;
	h=To:Subject:From:Message-Id:Date; b=PAUsjyE9nRVRFcGJcLjNMUyhpUqo57Req8EY+y4wjWz1M5EnhZzJzIDkT2e4FgqQjafSi48iKO33e0SHGVlsAdLltsMJWtTzk0e+Tg+iizlq/H2diSIJ+VTBTTjZZAzHQhTNUfVdl9KvrOMnN3BCzMQKvMb3x30jK7VRBB9aKaM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=pRUBPxis; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="pRUBPxis"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B2BFEC4CEF7
	for <ddprobe@lists.linux.dev>; Sun, 15 Feb 2026 21:54:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1771192493;
	bh=k3RdlWAOn92DKdgoeIwAmPTnaRR8MB3AsOeLsql/1so=;
	h=To:Subject:From:Date:From;
	b=pRUBPxisANX+RJlD7xnUi4ZZ4K1f0tr6AA6wxhaWIqx+o1mytzmlvzWYWvTH24HJC
	 z2np1xv22JSasTvn7R/gSZekH0GOJ5HaQyEeKfiRBiBTjih8Svz907STNiLHeLCOz1
	 ZuqND8asOtdo87OZ3gdC+e3ouopebW2cbO+RLB50emM3i66X8n3anQNtIhPZwZoS7F
	 o10gk0HsgLyBExoIzTfCweAs94oCB5FgN1UZ+4agOpU32KH70p+h72caQHaFFbXCAP
	 dqP5ICBerCnlVyudQh16eT0esIFjCpxZUJqp2finwV3IFtPIYFM7+Dho0DwqjJLf5a
	 SmNVsSSUP6xXA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9AD1BE63F1A
	for <ddprobe@lists.linux.dev>; Sun, 15 Feb 2026 21:54:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177119249362.11146.15594104333199960777.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 2996089f7f7de107c856bb95ce0d54a759497c43b6b4f5b5be9094d8fa576443
Date: Sun, 15 Feb 2026 21:54:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1771192493
