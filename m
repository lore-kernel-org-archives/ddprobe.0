Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1A9A72DC798
	for <ddprobe@lists.linux.dev>; Fri, 24 Apr 2026 23:57:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1777075054; cv=none; b=g2WigfimPJrSR3djOCSe5nx0So+S8CdIWflO1vXSMs8EbTSrsYf4gKVAhpDt53Wmjtmx2i8bO/Z2nEbi5h2dxjZT8Rl9d0qCIP1YAU+bFYNxdCrdHKvCJciSkOlhqiyb4gKEFD0n+VELKKrvoaCbcqejqXsvv377j6oOwyVKjm8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1777075054; c=relaxed/simple;
	bh=S2iuhNqyDwx9l/ypjflsTDUFcxLr90fX/D4jV7fN6Ks=;
	h=To:Subject:From:Message-Id:Date; b=VKmoRFbXvnP97jk3HU3REi9Db2gfqrp7NTpny6cZmacDZBnGAGkcK7IDYaP0SMdFMrvj2hrXQoEH5uw8yGPpmnNiToZiqoawDOoFtOtu48ol1OjTnQn7OlCN0dwUHsIhoVsDEw/2TLvVtcRJZxEEhrC2vBvWR+MfNX4IccrEh6c=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Yi1/IjQN; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Yi1/IjQN"
Received: by smtp.kernel.org (Postfix) with ESMTPS id BC1BAC19425
	for <ddprobe@lists.linux.dev>; Fri, 24 Apr 2026 23:57:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1777075053;
	bh=S2iuhNqyDwx9l/ypjflsTDUFcxLr90fX/D4jV7fN6Ks=;
	h=To:Subject:From:Date:From;
	b=Yi1/IjQN50d/tJZUQs7QZyhWylgbB2JQO9c/lD9+Tdy8aGbLz35ph20jIr0zzMKRG
	 85RzfG1IIWDt93T7+UsMlWBp5qDKR5KElbYnmRNxUxlYrfbsmsBM3eBcC9PTWernjG
	 AJqm6sRPU8nlcn8Q1yKhKH+XdPhckCKNwRX47viglKTWjYk8XFiNbhdIMQ1Ozpzcvl
	 lLO2NW7GfAKYOz3OlfRGKKE1Y5bCF1/ttlDjgSW6cbGZwxiJN7ffc5nVUaVkBbPA1H
	 4PlyVp/MXw4XaU24C2puTRLQrNyFkGjIFzserfKI35Cj2wQu85HG2ykId9ruWqkdpE
	 cBlGxZfLOaWfQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A9FB7FF8850
	for <ddprobe@lists.linux.dev>; Fri, 24 Apr 2026 23:57:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177707505368.25100.13318286800124661461.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 5c152e529da55e9c0d1e2e02457182ba514d52ad14414876bab9aa126e75f05a
Date: Fri, 24 Apr 2026 23:57:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1777075053
