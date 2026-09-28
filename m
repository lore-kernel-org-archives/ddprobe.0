Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5AB0530FF36
	for <ddprobe@lists.linux.dev>; Mon, 28 Sep 2026 09:20:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1790587234; cv=none; b=kI8mQeVAS/sa3JTFru8fBObQ4JADXxoY82OeNMYA6mGBjKCL83Zt9FKCvxdFiACvkvKawSrlVFjGEd8H0LUXU3sfkIuKa9d03qx/aZvkd4RQkLP6HePoyI4sh8lE1I7AV0RuXKdFtfxdNxEtKWeCukIEJMGClpquZpfKxFRxJbo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1790587234; c=relaxed/simple;
	bh=WpU90WUbNWQ2Lxv7W6EOPrMicJ8cEXhVjN3sRGpBsD4=;
	h=To:Subject:From:Message-Id:Date; b=YU6fIMH3VUB43oJt8IEiD2wUGni6ihDSa7m3Zc0K8mXC9t5dSB2k7gwaTbuBxeEIXJeVQgQK37aYj0e6hB08EP4VgvslnPCO+tKY/P61L/OsUsy8kQlzaPwERJWm7BcpCCj5gSMKy4eq7uJmQ4MTFo3qFd8O+idzBRnFv2uzcCg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Jk6hP+sg; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Jk6hP+sg"
Received: by smtp.kernel.org (Postfix) with ESMTPS id DBD9DC2BCC7
	for <ddprobe@lists.linux.dev>; Mon, 28 Sep 2026 09:20:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1790587233;
	bh=WpU90WUbNWQ2Lxv7W6EOPrMicJ8cEXhVjN3sRGpBsD4=;
	h=To:Subject:From:Date:From;
	b=Jk6hP+sg4CNQhGJpHA29PBu17TxNqSV5XsHHfjDgbAwMiGqGQ+Nso7hOagUfsTw4m
	 4rZsasq68kJMxt7N1B5Nb33+7EzGHMdAHVBMcIoR9Qe1cllQXJ48tQ6QtpOIXAyNW/
	 6mxznP9vp4OkKHO4aeQrA3rnWG+Dw80EWURvqMY3C0LrNQsd0xolS4tRs9oUju7KI8
	 Mkv80fiakOkG3YQuDSUeuo/rUdZ9oeU30IGh8RlWDVR+PkeMqz7SR42+PeT+PG2vEZ
	 L/BPJHgZG3wZW3NQ1SEIkjLkUdtCkRis4UhC8Luu5zDV9bCtITT8+ad/DMEJJXEQLS
	 1cw8wqC/Mb62Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B7E61C9832F
	for <ddprobe@lists.linux.dev>; Mon, 28 Sep 2026 09:20:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <179058723374.14110.17918130233038320357.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 5115dcc777e4a3d59c917c898e93b994afd1371776db7a7170c11027bcbca870
Date: Mon, 28 Sep 2026 09:20:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1790587233
