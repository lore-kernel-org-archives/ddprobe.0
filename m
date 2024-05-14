Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 75F5112F37F
	for <ddprobe@lists.linux.dev>; Tue, 14 May 2024 09:52:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1715680343; cv=none; b=LCHABFO2a16WA6SJ2ek18A3IqxT0v5E4Qjj+OxoGJvbHJ6hazyn7Y3XvXQN6RD+Zo+uTsA+PObAUuKSorgkIAS6EXKv6I9VcR/d/omKq04fOACmqVFt9xBuQHBh0CEEXB15QtG54Eyz8FT0ClIn8OrTeO5C6xstyJAgK+chFHzc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1715680343; c=relaxed/simple;
	bh=tiguBdtn21mO0rhDjJbLykdqcZS3IhQYeDxudz7R/ts=;
	h=To:Subject:From:Message-Id:Date; b=GTpMTHQdVB9IkZPXgaYRYwz0ErpFrUGoozXFf7qB2uxpWc5w/ysCpYliemmDjcir8gVui001gPd7fe5328F2Ohw59cHZ6whpHh+3ZhzPCYkxS+oGHd5/6gSQAq+pvdgTQd9NKddwo5A9VF2BJYhQamK/bSCxEb+o9EbpU/DYHNU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=WfUAmUme; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="WfUAmUme"
Received: by smtp.kernel.org (Postfix) with ESMTPS id F0307C32781
	for <ddprobe@lists.linux.dev>; Tue, 14 May 2024 09:52:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1715680343;
	bh=tiguBdtn21mO0rhDjJbLykdqcZS3IhQYeDxudz7R/ts=;
	h=To:Subject:From:Date:From;
	b=WfUAmUmeD/aW/thE9FHZOiDQi2mGCCe9NrRvzQgeTak++pgcvUheqhB8PO9iYzwtd
	 Ypc6J2rQnOAAB2HjPPvE4uqdlmmqd3BRA2J3zpr6IEC2+NScBzq2zqDtvsxgeSMezs
	 2e13v5TQvCfb7ewmfrQOEgu3Tt5+sM6hooxBQfUko5ypjM+0jDxgwEnT0l5cyVuY9K
	 Aq6W36AQjCMifDL7+Yt+sNAac9LRcHRzBlWWGlAKhRUuJBYmHjVb+FQ5oa7pJ2gx8M
	 aRoCM/9uUwix8NLezmy/PumSc7OkEDTMHC3bkRxagelqYRpVhDn3//bKl0KuGIOGK8
	 /pBeWNZfR6OLw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id D21A5C25B75
	for <ddprobe@lists.linux.dev>; Tue, 14 May 2024 09:52:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171568034283.15957.8893118561845126310.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: e80778a92467ec7034869afa698e8a888b02b5f0835d7ef386c4de2977654ed3
Date: Tue, 14 May 2024 09:52:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1715680342
