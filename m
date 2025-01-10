Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3D2E9290F
	for <ddprobe@lists.linux.dev>; Fri, 10 Jan 2025 04:45:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1736484354; cv=none; b=tOar9BFjr08ma34+U3JfqG/n+1cXMsak0FRb/0GqRa5Uptpu51tB+WoKcdkI7eUaa5rBPYdVDJ2dqP2K+yoLLqnJmBS51ujKUblcUMkClFOZdvVUE4Ult7Xd+96pnzAqIAa9F5bhfog1U/hdetE1vMJMN/LFBrny4HFbLzqPBRY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1736484354; c=relaxed/simple;
	bh=7WsaizYZ28nVIgRN1C0BT9l/H59WxsRi48htWV5ok5w=;
	h=To:Subject:From:Message-Id:Date; b=YoA/QXeyfo5/GvxrHvXOwGUjuncGHjXbEC8wstCTUpYqPkD8EjgdeTgF/mUTOcD6dJwjFWPFN/v0QcBY5a8lZFcPwwgp+1Sl8HqUs0+06tlfqf21tzAqQ7i6wzkkZXnT5MNtUgZGALCaZRUaaCRSfZ8uaHi31jv5dAFwcJT78nk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=FF6FoBV0; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="FF6FoBV0"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B14A6C4CEDD
	for <ddprobe@lists.linux.dev>; Fri, 10 Jan 2025 04:45:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1736484353;
	bh=7WsaizYZ28nVIgRN1C0BT9l/H59WxsRi48htWV5ok5w=;
	h=To:Subject:From:Date:From;
	b=FF6FoBV0s1zVzKNkAYl4tKOLoQkqGClwpopjzo2iBKsgP+0VL7RO2ZZVZe4BGszdE
	 ZUUYlevvGHhUz6CnMZNaLF7WAYcn5ubgJFeKjdECjg9KjEPa5DeMcFrnB/2NVN6Yug
	 8fW7oQ618NGqIDkq5GbrRxN45aTXmFfEgimoz7jEy7scavE9UpvhdodZcZwgJ7GBsM
	 8Mpo8X54sNCm1rBmfSD1aDlHCI2WpG9X55eagpXq3X6FnRj9PV4LcvTsB35WdOwJEn
	 sjZMdYkMTGVkvzOn2usiZlsjmdVu404lm2RqKWu87d4T4reuH1EDgWuCkL+/gpeYr5
	 hcqZID9B/zm/w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9BEA9E77188
	for <ddprobe@lists.linux.dev>; Fri, 10 Jan 2025 04:45:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173648435358.22059.12511555376381301606.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 3899b937747c3b965c76610b8877e4c54d8d97251858746f0927e5df373a730d
Date: Fri, 10 Jan 2025 04:45:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1736484353
