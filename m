Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0C96C314B96
	for <ddprobe@lists.linux.dev>; Wed, 25 Feb 2026 08:34:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1772008494; cv=none; b=HRE27rc3c3pPvwUnoKB4/wnrtEZ1tJgeuXQQUqEb84FHLclF0QDi0iwhLVmyl8svqOU/tIfnAhAZMkU5pVsVk9npVI4jmBXil4ou45/W0abqZYESRC956+WxedIx4SHDvqOPnttUcvbbZQrx69rFReIyi2smqNdM7RdcL/bCQzw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1772008494; c=relaxed/simple;
	bh=P96V4vP+NN4QQwIV349gmMn89Qx37/PxKeHmxB5s0d8=;
	h=To:Subject:From:Message-Id:Date; b=Pbfz2Unefk1BwfpdSrT7Tr693OadV6hRpGSLeNnXP9/7nI0YOh5+NGUg++Ua6Y0bwYXjRj58pkHg0wmrWvYfxmTrudY8MIDvNntTLQegIXKTioc96bzf466fbBSFZp35nQYPhb8WozxwvkMgyXQ7k/I3caZ6ryS/ldGP3VMldBU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=nkCL7J0p; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="nkCL7J0p"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A2A32C116D0
	for <ddprobe@lists.linux.dev>; Wed, 25 Feb 2026 08:34:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1772008493;
	bh=P96V4vP+NN4QQwIV349gmMn89Qx37/PxKeHmxB5s0d8=;
	h=To:Subject:From:Date:From;
	b=nkCL7J0pg+vddHTFoyYt0ZfjOW52OKeArmKkDa9kBGS1/1BGC9bXv5xgONZRKTntJ
	 kRdrRyBbGjy0uCkcdqm+f/nDgqNP9LzLtQUXbFHk/WMos1qPRCy91DIO9keaOZcUXz
	 9lGp+9cwUkZtCGpIdcjdR/1vtToentjnfz/IXuRl7hXqs6Wzk7xUo3FYe/qn0SpSSJ
	 Zy+3SSFYtzUK5IPC8nvIf5i18ldUifpD5iyQudoYcYSRf7Edx+ND8p10f9s8hO16iN
	 Ko8vVbKmhSZt2FaYNKyyGk9rOXYZk8t6S19MTVTXvJXE0ZV/L2nWMvvATgKd2DX7Vn
	 Daq4SYu2W/ynw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8FFF8EFD207
	for <ddprobe@lists.linux.dev>; Wed, 25 Feb 2026 08:34:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177200849358.10425.16073352002991577421.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 1e81058499a778e95e14da54d85154e5cfb68e89b5563c0bfad1075f60df7642
Date: Wed, 25 Feb 2026 08:34:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1772008493
