Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4625134F255
	for <ddprobe@lists.linux.dev>; Mon,  8 Jun 2026 06:04:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1780898674; cv=none; b=WLXpc5qCiopwT3+ncgkLoEQYz1HFA9eIsPQkvMfhRSmibrC1n2fcc+krHf7AP6AScKW0yplLEDsl/+7GZ12uYRhH17eD94+GnXbT/QPqSYd5bh+7LE/Rjg7XO1jPlI2gVE7xNQ4v68UCOCFJLeTSlUVC/8YPcNdlL6WfMH+k8Ng=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1780898674; c=relaxed/simple;
	bh=wct+EhqGcaLs7Oem6gdGns/iqLnT680fql1uo6qIFDk=;
	h=To:Subject:From:Message-Id:Date; b=jsVaB1tcmtdgNRvgV8uLPJ1DtKyzfcRC/weDALRZa+PoY4z+EZQxRaHcg22MepTWhj8YeMkHKEAUCSS93FKYD7ee/Ywt1MiPUZnXYN6CezIzGYpBj8Iocvwt9MAm/Va5QpdVletrEIgcmDU+tXW8pG/hwDRhry0ZYDT0YX3yPpE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=MY3zsSvb; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="MY3zsSvb"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CD596C2BCC7
	for <ddprobe@lists.linux.dev>; Mon,  8 Jun 2026 06:04:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1780898673;
	bh=wct+EhqGcaLs7Oem6gdGns/iqLnT680fql1uo6qIFDk=;
	h=To:Subject:From:Date:From;
	b=MY3zsSvbf9+nzXjISxYnx0xVTHkTkPUIuYC8AgMqpIDQzQVLBghLsye6KWRvf8wry
	 1g/pnGgCsR8CJiiNe7suwx+zuBUuOT49ArdWg7DVFLr8WVaYSHi6kk1nSfFNAmA+7t
	 3d9NHW6cGohr9B/MpmhF/Zt7w3HThqQJXpm25/HhNtUgdGoEer1UllnuSwwBwobU3s
	 UCraFQ+qwigukcHbCn5FHAIqarxhuAOtnQ5+VbzpbmGKQjShdUJLJ7K2YfiWeCS1oR
	 7eVzoxq3P0jI5ds/C1XtHwmyQp44TRi/wTfSSNzWmF9URvvDdTXOrpRJoFImnSMCt5
	 uc6Qxb0gsszng==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id ADD37CD8C8E
	for <ddprobe@lists.linux.dev>; Mon,  8 Jun 2026 06:04:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178089867370.19165.9044549989500277121.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 9f4f2e5d985bd6f6bc262e74e68dcc7c5b7004f00f1782846a6939a6c6e91ed1
Date: Mon, 08 Jun 2026 06:04:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1780898673
