Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2EEC0152E02
	for <ddprobe@lists.linux.dev>; Mon, 28 Apr 2025 14:59:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1745852397; cv=none; b=u9sIliBztOxCMbaDfAe4RG9B7QckezVksGYwSnLPcGpmgecKd/b5BtRPDxo5BtM6xXerco0lcg4459BovdwNeG2jw7xzBxKEdrec2a6saNXLGSbERKAfjFIIebG70hs4D8Joa5C+KNmi60I5bA19qz6D5dzKy3wYjESPeRtDDTw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1745852397; c=relaxed/simple;
	bh=bvWWy6s0jcFLaKABZQ5IaDMszyg1QcVdz7Bcqc+Nlqk=;
	h=To:Subject:From:Message-Id:Date; b=EEROuCH/eZ4MKSKvyIC2i3czdfK6fk2Y1PayPHlkhtrK+HUq3Eywj8CLLxOepIWrD0sHA90t1Ky/7Q7ozaGhvrQTFjtjmSh9ttLspQpH2kQR52zB5n2JC6sEedaXApNjQPjiA/5lY8QxWPlmbmoGflrHVVSrfGoMGAUevZ0vBVE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=cOZovT5o; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="cOZovT5o"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9DF51C4CEE4
	for <ddprobe@lists.linux.dev>; Mon, 28 Apr 2025 14:59:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1745852393;
	bh=bvWWy6s0jcFLaKABZQ5IaDMszyg1QcVdz7Bcqc+Nlqk=;
	h=To:Subject:From:Date:From;
	b=cOZovT5oLggrnA5zRljvlM9Tx3SP/2WLyFPD+KBr9vM3wSnaoL/NtK+TDFv65XHar
	 CduhQ5sOr57grHS1SLNGsCQM4oTC2bvMWMycrQawg+2AVM0bQVdHJQGOpWpKKdqscN
	 riDKcW2zCwKdRfNoccg9hTQMze1FLjVRzKJjMuVPc8uLaYwRAZBgyeQPmKOpM8gFKx
	 k58wbfJBpwvjSTc5Xiw5GTfe7V11av601xsI8PFy8t0+mS77AqDUW4QK7nEAGjTukX
	 62mbwdNvFhr8TYP2tliQErPQeW0aMmHMWjnhUnt9yaq9KUA2JylZoFnvWqp+5Earj5
	 f/7yfNrfOg6Aw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8F951C369D5
	for <ddprobe@lists.linux.dev>; Mon, 28 Apr 2025 14:59:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174585239357.19993.10558230353692989686.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: feaea2aeae0d4cdac426bd421d441f51b698d9181dabd4b2cfa6bc6f97cba672
Date: Mon, 28 Apr 2025 14:59:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1745852393
