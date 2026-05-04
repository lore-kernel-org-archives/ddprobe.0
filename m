Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1954B378818
	for <ddprobe@lists.linux.dev>; Mon,  4 May 2026 18:37:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1777919854; cv=none; b=aj9SRI3DDL4mC81oYoXwlwtWERm98Mtw3USsERvxkcPKXskdF7dQQaDg5/xkvlDlSpxdqUeDG1gTN+snbFVPK0o7d5dxIDvnlsjOms2/lkbOqnuKQeo2oZZJnP7HTsGbZ4n/7gel5WxF1s4x9iU7DdTLq95yX9UFna1vLv030l0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1777919854; c=relaxed/simple;
	bh=5nPZF0u/2xPaOBtkkGjpDBykVPEYT8t/6zfNafb9n98=;
	h=To:Subject:From:Message-Id:Date; b=nnt1wXz/TG6jhJ+g0yl4Mwx9kEvI/OXuJEG7Y/Xkk8EMbHkeAytjtEDeh2J/fLBNONMVYDUucxQYRPrDYxe2ssBjJ1VCiMoi05jGP8lao6oOg5zhhTyWNQVE8c8O72qcXYi3Z2b8QVY0LCAa315TPO1xZyihanEkaeaz4f4Ihto=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Txt4PkAO; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Txt4PkAO"
Received: by smtp.kernel.org (Postfix) with ESMTPS id BB749C2BCC4
	for <ddprobe@lists.linux.dev>; Mon,  4 May 2026 18:37:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1777919853;
	bh=5nPZF0u/2xPaOBtkkGjpDBykVPEYT8t/6zfNafb9n98=;
	h=To:Subject:From:Date:From;
	b=Txt4PkAOVb/GoIr8gme3/yl7f4356tJTOE+OuDjcMiQPeeTN3WY5kVTyWvTzf1wHG
	 UWjHdSo4qMXNsHawfNIrJRxTyFkjOPsWb6wKIlbH8yCb2V8y7+jO1pgWqcy19qIlj3
	 85QEwh2nvqCv7r6KMkG5IMV7trbIe+4mHrOcIIic6MT4qZU3Zg4KWt+6W51cPFUsKz
	 I5pqe/bpyQeP9kGf1vMKWq4Z2HlT7qfy+et9nLAOHgTE3fAThytGZQZR0VGMBhKFtS
	 K4hI88+PO0H5nRQmo6FDe54h/6Lfa1EcUF0HmuDejy7+PELwLDZCQHWBRdsYON//sl
	 AmrAVQwwB7O1g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id ACB9EFF885A
	for <ddprobe@lists.linux.dev>; Mon,  4 May 2026 18:37:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177791985369.9307.3331581192026946483.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 66d219b05c328bff9bcb7b093caf47571ebee8f9e15cbd0e5b7aa939373568bd
Date: Mon, 04 May 2026 18:37:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1777919853
