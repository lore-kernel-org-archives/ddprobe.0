Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3AC111714A1
	for <ddprobe@lists.linux.dev>; Mon, 24 Mar 2025 23:59:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1742860795; cv=none; b=N0/rmrsB0kqYgBB28csR5lwv2zHSMUPQmPmJPidbKPBYnmn2VEnZ8rkx1umATS+OcHy6gFd24BeaPE3yDoM3MWYfg+oTd/BZdGA7LfENiXqhpkDJylgoZuiYQu3NofbDwzcaxqg0tw1h6avrqdnMP2bmVOcnMhUEyI8EZ/9BoGY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1742860795; c=relaxed/simple;
	bh=049zHuz/OUocfrDJnoI6S5a6bDVZSHsxJJxJov2uxNw=;
	h=To:Subject:From:Message-Id:Date; b=SnMLR/8qDFcTxvdEGYvGcLMLYYMwTiwZ715yZZ+KPmji0LCgGuijBGTPgQIVn7fOVP94NtbKGCUqSxwPHdJwhK8O90dyaDk6oovHKIh2N8HDx8Lc3uCFNHwjO5g3TTLLxObxmKPM8oVRSkRBSCyyKo94epHAUtm9Av0TSCM+d0o=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=sFvKQuhm; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="sFvKQuhm"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A6D96C4CEE4
	for <ddprobe@lists.linux.dev>; Mon, 24 Mar 2025 23:59:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1742860793;
	bh=049zHuz/OUocfrDJnoI6S5a6bDVZSHsxJJxJov2uxNw=;
	h=To:Subject:From:Date:From;
	b=sFvKQuhm1SI+Nc0fgVB9LU8F1oulztOFczfoLR5ODI1/nnV97vs1d11TFbB7izP04
	 jHu89WUJOAdcKl6kEx2FZN8uHe8o2wmBQgz3vzGyVAZVbkzXwgrrz+EBjQffa1jrYg
	 PZ+dFqokxDjFyMexCqIF5jo3YMKgzlXZVmRvi9OHzgT6pFKbNMpZQSMULsr1pxFU1a
	 X7CpPmPMcJiCVEwwDZBT7zT3oLUOHZvRLD5Pc1IUkjf0e5leZU6wCthRm9WsxFGips
	 T6umQjQ/uGCOklGMTd4cImCt6XuHPt+KEJ9yzPIo7epQAEqguvgVQePIY7gfmB+nn1
	 fFrz1EnnVUipA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 97802C36002
	for <ddprobe@lists.linux.dev>; Mon, 24 Mar 2025 23:59:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174286079360.31214.681988423927272736.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: c900db320d7dc0f6dbe905ac6d9a48aa27837c5a32e9f45150eb086eab1ef01b
Date: Mon, 24 Mar 2025 23:59:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1742860793
